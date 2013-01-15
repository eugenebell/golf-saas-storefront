<%@ page import="golf.saas.storefront.GolfCourseHole" %>



<div class="fieldcontain ${hasErrors(bean: golfCourseHoleInstance, field: 'holeIndex', 'error')} ">
	<label for="holeIndex">
		<g:message code="golfCourseHole.holeIndex.label" default="Hole Index" />
		
	</label>
	<g:field type="number" name="holeIndex" value="${golfCourseHoleInstance.holeIndex}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseHoleInstance, field: 'holeNumber', 'error')} ">
	<label for="holeNumber">
		<g:message code="golfCourseHole.holeNumber.label" default="Hole Number" />
		
	</label>
	<g:field type="number" name="holeNumber" value="${golfCourseHoleInstance.holeNumber}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseHoleInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="golfCourseHole.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${golfCourseHoleInstance?.name}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseHoleInstance, field: 'par', 'error')} ">
	<label for="par">
		<g:message code="golfCourseHole.par.label" default="Par" />
		
	</label>
	<g:field type="number" name="par" value="${golfCourseHoleInstance.par}" />
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseHoleInstance, field: 'scoreCard', 'error')} ">
	<label for="scoreCard">
		<g:message code="golfCourseHole.scoreCard.label" default="Score Card" />
		
	</label>
	<g:select id="scoreCard" name="scoreCard.id" from="${golf.saas.storefront.ScoreCard.list()}" optionKey="id" required="" value="${golfCourseHoleInstance?.scoreCard?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: golfCourseHoleInstance, field: 'yards', 'error')} ">
	<label for="yards">
		<g:message code="golfCourseHole.yards.label" default="Yards" />
		
	</label>
	<g:field type="number" name="yards" value="${golfCourseHoleInstance.yards}" />
</div>

