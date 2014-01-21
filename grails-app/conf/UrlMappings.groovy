class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"postCard", action:"home")
        "500"(view:'/error')
	}
}
