
<%@ page import="epost.PostCard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'postCard.label', default: 'PostCard')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-postCard" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="senderfirst" title="${message(code: 'postCard.senderfirst.label', default: 'Senderfirst')}" />
					
						<g:sortableColumn property="sendersurname" title="${message(code: 'postCard.sendersurname.label', default: 'Sendersurname')}" />
					
						<g:sortableColumn property="senderemail" title="${message(code: 'postCard.senderemail.label', default: 'Senderemail')}" />
					
						<g:sortableColumn property="message" title="${message(code: 'postCard.message.label', default: 'Message')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'postCard.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address1" title="${message(code: 'postCard.address1.label', default: 'Address1')}" />
						<g:sortableColumn property="address2" title="${message(code: 'postCard.address2.label', default: 'Address2')}" />

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
