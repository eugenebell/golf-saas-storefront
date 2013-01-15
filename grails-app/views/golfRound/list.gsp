
<%@ page import="golf.saas.storefront.GolfRound" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'golfRound.label', default: 'GolfRound')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-golfRound" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/welcome')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="list-golfRound" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<th><g:message code="golfRound.scoreCard.label" default="Score Card" /></th>
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'golfRound.dateCreated.label', default: 'Date Played')}" />
			
						<g:sortableColumn property="shotsHole1" title="${message(code: 'golfRound.shotsHole1.label', default: 'Hole 1')}" />
					
						<g:sortableColumn property="shotsHole2" title="${message(code: 'golfRound.shotsHole2.label', default: 'Hole 2')}" />
					
						<g:sortableColumn property="shotsHole3" title="${message(code: 'golfRound.shotsHole3.label', default: 'Hole 3')}" />
					
						<g:sortableColumn property="shotsHole4" title="${message(code: 'golfRound.shotsHole4.label', default: 'Hole 4')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${golfRoundInstanceList}" status="i" var="golfRoundInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${golfRoundInstance.id}">${fieldValue(bean: golfRoundInstance, field: "scoreCard")}</g:link></td>
						
						<td><g:formatDate date="${golfRoundInstance?.dateCreated}" format="dd-MM-yyyy"/></td>		
					
						<td>${fieldValue(bean: golfRoundInstance, field: "shotsHole1")}</td>
					
						<td>${fieldValue(bean: golfRoundInstance, field: "shotsHole2")}</td>
					
						<td>${fieldValue(bean: golfRoundInstance, field: "shotsHole3")}</td>
					
						<td>${fieldValue(bean: golfRoundInstance, field: "shotsHole4")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${golfRoundInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
