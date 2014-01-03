package epost



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PostCardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PostCard.list(params), model:[postCardInstanceCount: PostCard.count()]
    }

    def show(PostCard postCardInstance) {
        respond postCardInstance
    }

    def create() {
        respond new PostCard(params)
    }

    @Transactional
    def save(PostCard postCardInstance) {
        if (postCardInstance == null) {
            notFound()
            return
        }

        if (postCardInstance.hasErrors()) {
            respond postCardInstance.errors, view:'create'
            return
        }

        postCardInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'postCardInstance.label', default: 'PostCard'), postCardInstance.id])
                redirect postCardInstance
            }
            '*' { respond postCardInstance, [status: CREATED] }
        }
    }

    def edit(PostCard postCardInstance) {
        respond postCardInstance
    }

    @Transactional
    def update(PostCard postCardInstance) {
        if (postCardInstance == null) {
            notFound()
            return
        }

        if (postCardInstance.hasErrors()) {
            respond postCardInstance.errors, view:'edit'
            return
        }

        postCardInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PostCard.label', default: 'PostCard'), postCardInstance.id])
                redirect postCardInstance
            }
            '*'{ respond postCardInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PostCard postCardInstance) {

        if (postCardInstance == null) {
            notFound()
            return
        }

        postCardInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PostCard.label', default: 'PostCard'), postCardInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'postCardInstance.label', default: 'PostCard'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
