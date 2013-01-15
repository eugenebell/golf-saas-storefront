<%@ page contentType="text/html;charset=ISO-8859-1" %>
<html>
<head>
<title>Gold Registration Page</title>
<meta name="layout" content="main" />
<style type="text/css" media="screen">
p { margin-left: 30px; }
.button { margin-top: 30px; }
</style>
</head>
<body>
<p>Enter your details below to register for Your Gold xxxxxxxxxxxx.</p>
<form action="handleGoldRegistration">
	<fieldset class="form">
		<g:render template="form"/>
	</fieldset>
	<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'golfClubName', 'error')} required">
	<label for="golfClubName">
		<g:message code="account.golfClubName.label" default="Golf Club Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="golfClubName" required="" value="${golfClubName}"/>
</div>
	<fieldset class="buttons">
		<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
	</fieldset>
</form>
</body>
</html>