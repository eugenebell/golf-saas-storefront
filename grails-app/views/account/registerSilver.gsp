<%@ page contentType="text/html;charset=ISO-8859-1" %>
<html>
<head>
<title>Silver Registration Page</title>
<meta name="layout" content="main" />
<style type="text/css" media="screen">
p { margin-left: 30px; }
.button { margin-top: 30px; }
</style>
</head>
<body>
<p>Enter your details below to register for Your Silver xxxxxxxxxxxxx.</p>
<form action="handleSilverRegistration">
	<fieldset class="form">
		<g:render template="form"/>
	</fieldset>
	<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'societyName', 'error')} required">
	<label for="societyName">
		<g:message code="account.societyName.label" default="Society Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="societyName" required="" value="${societyName}"/>
</div>
	<fieldset class="buttons">
		<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
	</fieldset>
</form>
</body>
</html>