<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
        <uploader:head />
  </head>

  <body>
            <div class="panel-body">
                <table border="1" style="width: 100%;">
					<thead>
							<tr>
							
								<g:sortableColumn property="senderfirst" title="${message(code: 'postCard.senderfirst.label', default: 'Senderfirst')}" />
							
								<g:sortableColumn property="sendersurname" title="${message(code: 'postCard.sendersurname.label', default: 'Sendersurname')}" />
							
								<g:sortableColumn property="senderemail" title="${message(code: 'postCard.senderemail.label', default: 'Senderemail')}" />
							
								<g:sortableColumn property="message" title="${message(code: 'postCard.message.label', default: 'Message')}" />
							
								<g:sortableColumn property="name" title="${message(code: 'postCard.name.label', default: 'Name')}" />
							
								<g:sortableColumn property="address1" title="${message(code: 'postCard.address1.label', default: 'Address1')}" />
								
								<g:sortableColumn property="address2" title="${message(code: 'postCard.address2.label', default: 'Address2')}" />
								
								<g:sortableColumn property="image" title="${message(code: 'postCard.image.label', default: 'Image')}" />
							</tr>
						</thead>
						<tbody>
						<g:each in="${postCardInstanceList}" status="i" var="postCardInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							
								<td><g:link action="show" id="${postCardInstance.id}">${fieldValue(bean: postCardInstance, field: "senderfirst")}</g:link></td>
							
								<td>${fieldValue(bean: postCardInstance, field: "sendersurname")}</td>
							
								<td>${fieldValue(bean: postCardInstance, field: "senderemail")}</td>
							
								<td>${fieldValue(bean: postCardInstance, field: "message")}</td>
							
								<td>${fieldValue(bean: postCardInstance, field: "name")}</td>
							
								<td>${fieldValue(bean: postCardInstance, field: "address1")}</td>
								<td>${fieldValue(bean: postCardInstance, field: "address2")}</td>
								
								<td><img style="height: 50px;" alt="${fieldValue(bean: postCardInstance, field: "image")}" src="/uploadFile/${fieldValue(bean: postCardInstance, field: "image")}"></td>
							</tr>
						</g:each>
						</tbody>
					</table>
					<div class="pagination">
						<g:paginate total="${postCardInstanceCount ?: 0}" />
					</div>
     <hr>
        <footer>
        <p>&copy; Company 2013</p>
      </footer>
    </div>
    <!-- /container -->
  </body>
</html>
