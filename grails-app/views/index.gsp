<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
	</head>
      body {
        padding-top: 50px;
        padding-bottom: 20px;
      }
    </style>
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
              <a href="#">Home</a>
            </li>
            <li>
              <a href="#about">About</a>
            </li>
            <li>
              <a href="#contact">Contact</a>
            </li>
          </ul>
        </div>
        <!--/.navbar-collapse -->
      </div>
    </div>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <p>This simple interface will allow you to create custom postcards including your own images, and post them to any number of recipients with either an individual or common text for all cards.<br></p>
        <p>Before completion, you will be shown a preview of your cards.<br></p>
        <p></p>
        <p></p>
      </div>
    </div>
    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-7">
          <div class="panel panel-default">
            <div class="panel-body">
              <form>
                <div class="form-group">
                  <label class="control-label">Name</label>
                  <div class="controls">
                    <input name="FullName" class="form-control" type="text">
                  </div>
                  <label class="form-label">Address</label>
                  <textarea name="Address" class="form-control"></textarea>
                  <label class="form-label">Message</label>
                  <textarea name="Message" class="form-control"></textarea>
                  <label class="form-label">Image</label><br>
                  <a class="btn btn-primary">Preview</a>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-5">
          <div class="panel panel-default">
            <div class="panel-heading">Postcards
            </div>
            <div class="panel-body">This is a panel
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4">
          <p></p>
        </div>
        <div class="col-lg-4">
          <p></p>
        </div>
      </div>
      <hr>
      <footer>
        <p>&copy; Company 2013</p>
      </footer>
    </div>
    <!-- /container -->
  </body>
</html>
