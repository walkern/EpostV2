
<%@ page import="epost.PostCard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'postCard.label', default: 'PostCard')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
                    <div class="panel-body">

                        <div id="list-postCard" class="content scaffold-list" role="main" align="center">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr> <div class="panel-heading">
                        <td></td>
                        <td>Sender</td>

                        <td>E-mail</td>

                        <td>Message</td>

                        <td>Recipient</td>

                        <td>Address</td>

                        <td>Photo</td>    </div>
                    </tr>
				</thead>
				<tbody>
				<g:each in="${postCardInstanceList}" status="i" var="postCardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					     <td><a class="btn btn-primary btn-block">Preview</a>
					     <a class="btn btn-success btn-block">Edit</a></td>

                        <td><g:link action="show" id="${postCardInstance.id}">${fieldValue(bean: postCardInstance, field: "senderfirst")}</g:link>

						${fieldValue(bean: postCardInstance, field: "sendersurname")}</td>
					
						<td>${fieldValue(bean: postCardInstance, field: "senderemail")}</td>
					
						<td>${fieldValue(bean: postCardInstance, field: "message")}</td>
					
						<td>${fieldValue(bean: postCardInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: postCardInstance, field: "address1")}   <br>
						    ${fieldValue(bean: postCardInstance, field: "address2")}<br>
						    ${fieldValue(bean: postCardInstance, field: "city")}<br>
						    ${fieldValue(bean: postCardInstance, field: "postcode")}<br>
						    ${fieldValue(bean: postCardInstance, field: "country")}</td>

						<td><img style="height: 50px;" alt="${fieldValue(bean: postCardInstance, field: "image")}" src="/uploadFile/${fieldValue(bean: postCardInstance, field: "image")}"></td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${postCardInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
