
<%@ page import="golf.saas.storefront.GolfCourseHole" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'golfCourseHole.label', default: 'GolfCourseHole')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-golfCourseHole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-golfCourseHole" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="holeIndex" title="${message(code: 'golfCourseHole.holeIndex.label', default: 'Hole Index')}" />
					
						<g:sortableColumn property="holeNumber" title="${message(code: 'golfCourseHole.holeNumber.label', default: 'Hole Number')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'golfCourseHole.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="par" title="${message(code: 'golfCourseHole.par.label', default: 'Par')}" />
					
						<th><g:message code="golfCourseHole.scoreCard.label" default="Score Card" /></th>
					
						<g:sortableColumn property="yards" title="${message(code: 'golfCourseHole.yards.label', default: 'Yards')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${golfCourseHoleInstanceList}" status="i" var="golfCourseHoleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${golfCourseHoleInstance.id}">${fieldValue(bean: golfCourseHoleInstance, field: "holeIndex")}</g:link></td>
					
						<td>${fieldValue(bean: golfCourseHoleInstance, field: "holeNumber")}</td>
					
						<td>${fieldValue(bean: golfCourseHoleInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: golfCourseHoleInstance, field: "par")}</td>
					
						<td>${fieldValue(bean: golfCourseHoleInstance, field: "scoreCard")}</td>
					
						<td>${fieldValue(bean: golfCourseHoleInstance, field: "yards")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${golfCourseHoleInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
