
<%@ page import="epost.PostCard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'postCard.label', default: 'PostCard')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-postCard" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list postCard">
			
				<g:if test="${postCardInstance?.senderfirst}">
				<li class="fieldcontain">
					<span id="senderfirst-label" class="property-label"><g:message code="postCard.senderfirst.label" default="Sender: " /></span>
					
						<span class="property-value" aria-labelledby="senderfirst-label"><g:fieldValue bean="${postCardInstance}" field="senderfirst"/></span>
                        <span class="property-value" aria-labelledby="sendersurname-label"><g:fieldValue bean="${postCardInstance}" field="sendersurname"/></span>

				</li>
				</g:if>
			
				<g:if test="${postCardInstance?.senderemail}">
				<li class="fieldcontain">
					<span id="senderemail-label" class="property-label"><g:message code="postCard.senderemail.label" default="Senderemail" /></span>
					
						<span class="property-value" aria-labelledby="senderemail-label"><g:fieldValue bean="${postCardInstance}" field="senderemail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postCardInstance?.message}">
				<li class="fieldcontain">
					<span id="message-label" class="property-label"><g:message code="postCard.message.label" default="Message" /></span>
					
						<span class="property-value" aria-labelledby="message-label"><g:fieldValue bean="${postCardInstance}" field="message"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postCardInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="postCard.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${postCardInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postCardInstance?.address1}">
				<li class="fieldcontain">
					<span id="address1-label" class="property-label"><g:message code="postCard.address1.label" default="Address1" /></span>
					
						<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${postCardInstance}" field="address1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postCardInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="postCard.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${postCardInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postCardInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="postCard.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${postCardInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postCardInstance?.postcode}">
				<li class="fieldcontain">
					<span id="postcode-label" class="property-label"><g:message code="postCard.postcode.label" default="Postcode" /></span>
					
						<span class="property-value" aria-labelledby="postcode-label"><g:fieldValue bean="${postCardInstance}" field="postcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postCardInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="postCard.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${postCardInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postCardInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="postCard.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${postCardInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:postCardInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${postCardInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
