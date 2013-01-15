
<%@ page import="golf.saas.storefront.GolfCourse" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'golfCourse.label', default: 'GolfCourse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-golfCourse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-golfCourse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'golfCourse.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="bookingsWelcomed" title="${message(code: 'golfCourse.bookingsWelcomed.label', default: 'Bookings Welcomed')}" />
					
						<g:sortableColumn property="courseType" title="${message(code: 'golfCourse.courseType.label', default: 'Course Type')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'golfCourse.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="designedBy" title="${message(code: 'golfCourse.designedBy.label', default: 'Designed By')}" />
					
						<g:sortableColumn property="drivingRange" title="${message(code: 'golfCourse.drivingRange.label', default: 'Driving Range')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${golfCourseInstanceList}" status="i" var="golfCourseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${golfCourseInstance.id}">${fieldValue(bean: golfCourseInstance, field: "address")}</g:link></td>
					
						<td><g:formatBoolean boolean="${golfCourseInstance.bookingsWelcomed}" /></td>
					
						<td>${fieldValue(bean: golfCourseInstance, field: "courseType")}</td>
					
						<td><g:formatDate date="${golfCourseInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: golfCourseInstance, field: "designedBy")}</td>
					
						<td><g:formatBoolean boolean="${golfCourseInstance.drivingRange}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${golfCourseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
