package epost



import grails.test.mixin.*
import spock.lang.*

@TestFor(PostCardController)
@Mock(PostCard)
class PostCardControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.postCardInstanceList
        model.postCardInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.postCardInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        def postCard = new PostCard()
        postCard.validate()
        controller.save(postCard)

        then: "The create view is rendered again with the correct model"
        model.postCardInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        postCard = new PostCard(params)

        controller.save(postCard)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/postCard/show/1'
        controller.flash.message != null
        PostCard.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def postCard = new PostCard(params)
        controller.show(postCard)

        then: "A model is populated containing the domain instance"
        model.postCardInstance == postCard
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def postCard = new PostCard(params)
        controller.edit(postCard)

        then: "A model is populated containing the domain instance"
        model.postCardInstance == postCard
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/postCard/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def postCard = new PostCard()
        postCard.validate()
        controller.update(postCard)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.postCardInstance == postCard

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        postCard = new PostCard(params).save(flush: true)
        controller.update(postCard)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/postCard/show/$postCard.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/postCard/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def postCard = new PostCard(params).save(flush: true)

        then: "It exists"
        PostCard.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(postCard)

        then: "The instance is deleted"
        PostCard.count() == 0
        response.redirectedUrl == '/postCard/index'
        flash.message != null
    }
}
