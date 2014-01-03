<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Electronic Postcard"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<g:layoutHead/>
		<g:javascript library="application"/>
        <r:require modules="bootstrap"/>
        <r:require module="fileuploader" />
		<r:layoutResources />
	</head>
	<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Electronic Postcards</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="/">Home</a>
                    </li>
                    <li>
                        <a href="/postCard/index">List</a>
                    </li>
                    <li>
                        <a href="/postCard/create">Create</a>
                    </li>
               </ul>
            </div>
            <!--/.navbar-collapse -->
        </div>
   </div>
    <div class="jumbotron">
        <div class="container">
            <p></p>
            <p>Create an electronic postcard</p>
            <p></p>
        </div>
    </div>

		<g:layoutBody/>
		<r:layoutResources />
	</body>
</html>
