<%@ page import="golf.saas.storefront.GolfRound" %>

<div class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'inProgress', 'error')} ">
	<label for="inProgress">
		<g:message code="golfRound.inProgress.label" default="In Progress" />
		
	</label>
	<g:checkBox name="inProgress" value="${golfRoundInstance?.inProgress}" />
</div>

<div  class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'scoreCard', 'error')} ">
	<label for="scoreCard">
		<g:message code="golfRound.scoreCard.label" default="Score Card" />
		
	</label>
	<g:if test="${golfRoundInstance.id != null}">
		<g:select 
		id="scoreCard" 
		name="scoreCard.id" 
		from="${golfRoundInstance?.scoreCard}" 
		optionKey="id" 		
		required="" 
		value="${golfRoundInstance?.scoreCard?.id}" 
		class="many-to-one"/>
		<g:include controller="golfRound" action="editRound" update="roundContentDiv" params='[id: "${golfRoundInstance?.id}", scorecardid: "${golfRoundInstance?.scoreCard?.id}"]'/>
	</g:if>
	<g:else>
		<g:select 
		noSelection="${['null':'Select Score Card...']}"
		id="scoreCard" 
		name="scoreCard.id" 
		onchange="${remoteFunction(controller:'golfRound', action:'showScoreCard', update:'roundContentDiv', params:'\'id=\' + this.value' )}" 
		from="${golf.saas.storefront.ScoreCard.list()}" 
		optionKey="id" 		
		required="" 
		value="${golfRoundInstance?.scoreCard?.id}" 
		class="many-to-one"/>
	</g:else>
	
</div>
<div id="roundContentDiv">
</div>

