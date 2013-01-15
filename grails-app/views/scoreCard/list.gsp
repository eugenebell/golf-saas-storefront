
<%@ page import="golf.saas.storefront.ScoreCard" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scoreCard.label', default: 'ScoreCard')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-scoreCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-scoreCard" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="courseLengthYards" title="${message(code: 'scoreCard.courseLengthYards.label', default: 'Course Length Yards')}" />
					
						<g:sortableColumn property="courseMap" title="${message(code: 'scoreCard.courseMap.label', default: 'Course Map')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'scoreCard.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="scoreCard.golfCourse.label" default="Golf Course" /></th>
					
						<th><g:message code="scoreCard.hole1.label" default="Hole1" /></th>
					
						<th><g:message code="scoreCard.hole10.label" default="Hole10" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${scoreCardInstanceList}" status="i" var="scoreCardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${scoreCardInstance.id}">${fieldValue(bean: scoreCardInstance, field: "courseLengthYards")}</g:link></td>
					
						<td>${fieldValue(bean: scoreCardInstance, field: "courseMap")}</td>
					
						<td><g:formatDate date="${scoreCardInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: scoreCardInstance, field: "golfCourse")}</td>
					
						<td>${fieldValue(bean: scoreCardInstance, field: "hole1")}</td>
					
						<td>${fieldValue(bean: scoreCardInstance, field: "hole10")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${scoreCardInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
