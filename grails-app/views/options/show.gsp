<%@ page contentType="text/html;charset=ISO-8859-1" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Options</title>
</head>
<body>
  <div class="body">
  <div align="center">
	<h2>Available Controllers:</h2>
	<ul>
		<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
			<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
		</g:each>
	</ul>
  </div>
  </div>
</body>
</html>