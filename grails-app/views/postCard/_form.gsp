<%@ page import="epost.PostCard" %>



<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'senderfirst', 'error')} required">
	<label for="senderfirst">
		<g:message code="postCard.senderfirst.label" default="Senderfirst" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senderfirst" maxlength="15" required="" value="${postCardInstance?.senderfirst}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'sendersurname', 'error')} required">
	<label for="sendersurname">
		<g:message code="postCard.sendersurname.label" default="Sendersurname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sendersurname" maxlength="15" required="" value="${postCardInstance?.sendersurname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'senderemail', 'error')} required">
	<label for="senderemail">
		<g:message code="postCard.senderemail.label" default="Senderemail" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senderemail" maxlength="25" required="" value="${postCardInstance?.senderemail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'message', 'error')} required">
	<label for="message">
		<g:message code="postCard.message.label" default="Message" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="message" cols="40" rows="5" maxlength="256" required="" value="${postCardInstance?.message}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="postCard.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="64" required="" value="${postCardInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'address1', 'error')} required">
	<label for="address1">
		<g:message code="postCard.address1.label" default="Address1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address1" maxlength="25" required="" value="${postCardInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="postCard.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" maxlength="25" value="${postCardInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="postCard.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" maxlength="25" required="" value="${postCardInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'postcode', 'error')} required">
	<label for="postcode">
		<g:message code="postCard.postcode.label" default="Postcode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="postcode" maxlength="25" required="" value="${postCardInstance?.postcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="postCard.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="country" maxlength="25" required="" value="${postCardInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postCardInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="postCard.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="image" required="" value="${postCardInstance?.image}"/>
</div>

