package epost

import grails.converters.JSON
import groovyx.net.http.HTTPBuilder

import grails.transaction.Transactional
import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.ContentType.URLENC

@Transactional(readOnly = true)
class PostCardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PostCard.list(params), model:[postCardInstanceCount: PostCard.count()]
    }

	def home() {
		params.max = 100
//		render view:"/index"
		respond PostCard.list(params), model:[postCardInstanceCount: PostCard.count()],view:"/index"
	}
	
    def show(PostCard postCardInstance) {
        respond postCardInstance
    }

    def create() {
        respond new PostCard(params)
    }

    def preview(PostCard postCardInstance){
        def statusLine = "200"
        def http = new HTTPBuilder( 'https://api.scribblepics.com/postcard/' )
        // auth omitted...
        def postBody = [apiKey:'50fb3598-3e3e-4dfc-a4fd-21d62520d5a1',sender:[firstName:'${postCardInstance.firstName}',lastName:'${postCardInstance.lastName}',email:'${postCardInstance.email}'],recipient:[name:'${postCardInstance.name}', addressLine1:'${postCardInstance.address1}', addressLine2:'${postCardInstance.address2}', city:'${postCardInstance.city}', zip:'${postCardInstance.zip}', country:'${postCardInstance.country}'],message:'${postCardInstance.message}',imageUrl:'${grailsApplication.config.grails.apiURL}'+'/uploadFile/'+'${postCardInstance.image}']
//Just comment bellow code for popup
        http.post( path: 'create', body: postBody,
                requestContentType: URLENC ) { resp ->

            println "status: ${resp.statusLine}"
            statusLine = resp.statusLine
            assert resp.statusLine.statusCode == 200
        }
//Just comment code for popup
        render statusLine
    }

    def back(){
        render "Back"
    }

    def front(){
        render "front"
    }

    def save() {
		def postCardInstance = new PostCard()
		postCardInstance.senderfirst = params.senderfirst
		postCardInstance.sendersurname = params.sendersurname
		postCardInstance.senderemail = params.senderemail
		postCardInstance.message = params.message
		postCardInstance.name = params.name
		postCardInstance.address1 = params.address1
		postCardInstance.address2 = params.address2
		postCardInstance.city = params.city
		postCardInstance.postcode = params.postcode
		postCardInstance.country = params.country
		def uploadedFile = request.getFile('image')
		if (postCardInstance == null) {
            notFound()
            return
        }

		if(!uploadedFile.empty){
			def fileName = uploadedFile.originalFilename
			println fileName
			try{
				uploadedFile.transferTo(new File("web-app/uploadFile/${fileName}"))
			}catch(Exception e){
				render(view: "profile", model:[agent:agentCommand,message:"unable to upload Agent profile photo."])
				return
			}
			postCardInstance.image=fileName
		}
		postCardInstance.validate()
        if (postCardInstance.hasErrors()) {
			respond postCardInstance.errors, view:'create'
            return
        }

        postCardInstance.save flush:true

        redirect(actionName:"index")
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
