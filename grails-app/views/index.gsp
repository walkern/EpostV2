<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
        <uploader:head />
  </head>

  <body>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-7">
          <div class="panel panel-default">
              <div class="panel-heading">Postcards
              </div>
            <div class="panel-body">
                Postcard list:...
             </div>
          </div>
        </div>
        <div class="col-md-5">
          <div class="panel panel-default">
            <div class="panel-heading">Dummy
            </div>
            <div class="panel-body">
                <uploader:uploader id="yourUploaderId">
                    <uploader:onComplete>
                        $('statusDiv').update('Thank you for uploading the file '+fileName);
                    </uploader:onComplete>
                </uploader:uploader>
            </div>
          </div>
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
