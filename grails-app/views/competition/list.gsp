
<%@ page import="golf.saas.storefront.Competition" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'competition.label', default: 'Competition')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-competition" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-competition" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'competition.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="competition.golfClub.label" default="Golf Club" /></th>
					
						<th><g:message code="competition.golfSociety.label" default="Golf Society" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'competition.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${competitionInstanceList}" status="i" var="competitionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${competitionInstance.id}">${fieldValue(bean: competitionInstance, field: "dateCreated")}</g:link></td>
					
						<td>${fieldValue(bean: competitionInstance, field: "golfClub")}</td>
					
						<td>${fieldValue(bean: competitionInstance, field: "golfSociety")}</td>
					
						<td>${fieldValue(bean: competitionInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${competitionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
