<%@ page contentType="text/html;charset=ISO-8859-1" %>
<html>
<head>
<title>Bronze Registration Page</title>
<meta name="layout" content="main" />
<style type="text/css" media="screen">
p { margin-left: 30px; }
.button { margin-top: 30px; }
</style>
</head>
<body>
<p>Enter your details below to register for Your Bronze xxxxxxxxxxx.</p>
<form action="handleBronzeRegistration">
	<fieldset class="form">
		<g:render template="form"/>
	</fieldset>
	<fieldset class="buttons">
		<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
	</fieldset>
</form>
</body>
</html>