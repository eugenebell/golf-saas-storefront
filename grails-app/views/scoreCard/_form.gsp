<%@ page import="golf.saas.storefront.ScoreCard" %>



<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'courseLengthYards', 'error')} ">
	<label for="courseLengthYards">
		<g:message code="scoreCard.courseLengthYards.label" default="Course Length Yards" />
		
	</label>
	<g:field type="number" name="courseLengthYards" value="${scoreCardInstance.courseLengthYards}" />
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'courseMap', 'error')} ">
	<label for="courseMap">
		<g:message code="scoreCard.courseMap.label" default="Course Map" />
		
	</label>
	<input type="file" id="courseMap" name="courseMap" />
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'golfCourse', 'error')} ">
	<label for="golfCourse">
		<g:message code="scoreCard.golfCourse.label" default="Golf Course" />
		
	</label>
	<g:select id="golfCourse" name="golfCourse.id" from="${golf.saas.storefront.GolfCourse.list()}" optionKey="id" required="" value="${scoreCardInstance?.golfCourse?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole1', 'error')} ">
	<label for="hole1">
		<g:message code="scoreCard.hole1.label" default="Hole1" />
		
	</label>
	<g:select id="hole1" name="hole1.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole1?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole10', 'error')} ">
	<label for="hole10">
		<g:message code="scoreCard.hole10.label" default="Hole10" />
		
	</label>
	<g:select id="hole10" name="hole10.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole10?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole11', 'error')} ">
	<label for="hole11">
		<g:message code="scoreCard.hole11.label" default="Hole11" />
		
	</label>
	<g:select id="hole11" name="hole11.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole11?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole12', 'error')} ">
	<label for="hole12">
		<g:message code="scoreCard.hole12.label" default="Hole12" />
		
	</label>
	<g:select id="hole12" name="hole12.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole12?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole13', 'error')} ">
	<label for="hole13">
		<g:message code="scoreCard.hole13.label" default="Hole13" />
		
	</label>
	<g:select id="hole13" name="hole13.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole13?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole14', 'error')} ">
	<label for="hole14">
		<g:message code="scoreCard.hole14.label" default="Hole14" />
		
	</label>
	<g:select id="hole14" name="hole14.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole14?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole15', 'error')} ">
	<label for="hole15">
		<g:message code="scoreCard.hole15.label" default="Hole15" />
		
	</label>
	<g:select id="hole15" name="hole15.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole15?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole16', 'error')} ">
	<label for="hole16">
		<g:message code="scoreCard.hole16.label" default="Hole16" />
		
	</label>
	<g:select id="hole16" name="hole16.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole16?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole17', 'error')} ">
	<label for="hole17">
		<g:message code="scoreCard.hole17.label" default="Hole17" />
		
	</label>
	<g:select id="hole17" name="hole17.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole17?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole18', 'error')} ">
	<label for="hole18">
		<g:message code="scoreCard.hole18.label" default="Hole18" />
		
	</label>
	<g:select id="hole18" name="hole18.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole18?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole2', 'error')} ">
	<label for="hole2">
		<g:message code="scoreCard.hole2.label" default="Hole2" />
		
	</label>
	<g:select id="hole2" name="hole2.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole2?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole3', 'error')} ">
	<label for="hole3">
		<g:message code="scoreCard.hole3.label" default="Hole3" />
		
	</label>
	<g:select id="hole3" name="hole3.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole3?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole4', 'error')} ">
	<label for="hole4">
		<g:message code="scoreCard.hole4.label" default="Hole4" />
		
	</label>
	<g:select id="hole4" name="hole4.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole4?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole5', 'error')} ">
	<label for="hole5">
		<g:message code="scoreCard.hole5.label" default="Hole5" />
		
	</label>
	<g:select id="hole5" name="hole5.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole5?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole6', 'error')} ">
	<label for="hole6">
		<g:message code="scoreCard.hole6.label" default="Hole6" />
		
	</label>
	<g:select id="hole6" name="hole6.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole6?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole7', 'error')} ">
	<label for="hole7">
		<g:message code="scoreCard.hole7.label" default="Hole7" />
		
	</label>
	<g:select id="hole7" name="hole7.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole7?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole8', 'error')} ">
	<label for="hole8">
		<g:message code="scoreCard.hole8.label" default="Hole8" />
		
	</label>
	<g:select id="hole8" name="hole8.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole8?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'hole9', 'error')} ">
	<label for="hole9">
		<g:message code="scoreCard.hole9.label" default="Hole9" />
		
	</label>
	<g:select id="hole9" name="hole9.id" from="${golf.saas.storefront.GolfCourseHole.list()}" optionKey="id" required="" value="${scoreCardInstance?.hole9?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'identifier', 'error')} ">
	<label for="identifier">
		<g:message code="scoreCard.identifier.label" default="Identifier" />
		
	</label>
	<g:textField name="identifier" value="${scoreCardInstance?.identifier}" />
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="scoreCard.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${scoreCardInstance?.name}" />
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'par', 'error')} ">
	<label for="par">
		<g:message code="scoreCard.par.label" default="Par" />
		
	</label>
	<g:field type="number" name="par" value="${scoreCardInstance.par}" />
</div>

<div class="fieldcontain ${hasErrors(bean: scoreCardInstance, field: 'teeColor', 'error')} ">
	<label for="teeColor">
		<g:message code="scoreCard.teeColor.label" default="Tee Color" />
		
	</label>
	<g:textField name="teeColor" value="${scoreCardInstance?.teeColor}" />
</div>

