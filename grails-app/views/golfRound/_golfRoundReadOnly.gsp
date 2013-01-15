<%@ page import="golf.saas.storefront.GolfRound" %>
<h3 class="cpost-title">${scoreCardInstance?.name} Score Card (Played on <g:formatDate date="${golfRoundInstance?.dateCreated}" format="dd-MM-yyyy" />)</h3>
<div id="contentpageleft">
<g:render template="golfCourseInfo" />


<table class="wptable" align="center">
<tbody>
<tr>
<th width="50" align="center">Hole</th>
<th width="50" align="center">Par</th>
<th width="50" align="center">${scoreCardInstance?.teeColor}</th>
<th width="65" align="center">Index</th>
<th width="65" align="center">Score</th>	
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole1?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole1?.par}</td>
<td align="center">${scoreCardInstance?.hole1?.yards}</td>
<td align="center">${scoreCardInstance?.hole1?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole1-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole1"/></span></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole2?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole2?.par}</td>
<td align="center">${scoreCardInstance?.hole2?.yards}</td>
<td align="center">${scoreCardInstance?.hole2?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole2-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole2"/></span></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole3?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole3?.par}</td>
<td align="center">${scoreCardInstance?.hole3?.yards}</td>
<td align="center">${scoreCardInstance?.hole3?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole3-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole3"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole4?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole4?.par}</td>
<td align="center">${scoreCardInstance?.hole4?.yards}</td>
<td align="center">${scoreCardInstance?.hole4?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole4-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole4"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole5?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole5?.par}</td>
<td align="center">${scoreCardInstance?.hole5?.yards}</td>
<td align="center">${scoreCardInstance?.hole5?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole5-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole5"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole6?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole6?.par}</td>
<td align="center">${scoreCardInstance?.hole6?.yards}</td>
<td align="center">${scoreCardInstance?.hole6?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole6-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole6"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole7?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole7?.par}</td>
<td align="center">${scoreCardInstance?.hole7?.yards}</td>
<td align="center">${scoreCardInstance?.hole7?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole7-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole7"/></span></td></tr>

<tr>
<td align="center">${scoreCardInstance?.hole8?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole8?.par}</td>
<td align="center">${scoreCardInstance?.hole8?.yards}</td>
<td align="center">${scoreCardInstance?.hole8?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole8-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole8"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole9?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole9?.par}</td>
<td align="center">${scoreCardInstance?.hole9?.yards}</td>
<td align="center">${scoreCardInstance?.hole9?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole9-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole9"/></span></td></tr>
<tr>
<th align="center"><strong>OUT</strong></th>
<th align="center"><strong>${frontNinePar}</strong></th>
<th align="center">${frontNineDistance}</th>
<th align="center"><strong>${frontNineIndex}</strong></th>
<th align="center"><strong>${frontNineScore}<strong></th>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole10?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole10?.par}</td>
<td align="center">${scoreCardInstance?.hole10?.yards}</td>
<td align="center">${scoreCardInstance?.hole10?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole10-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole10"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole11?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole11?.par}</td>
<td align="center">${scoreCardInstance?.hole11?.yards}</td>
<td align="center">${scoreCardInstance?.hole11?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole11-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole11"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole12?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole12?.par}</td>
<td align="center">${scoreCardInstance?.hole12?.yards}</td>
<td align="center">${scoreCardInstance?.hole12?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole12-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole12"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole13?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole13?.par}</td>
<td align="center">${scoreCardInstance?.hole13?.yards}</td>
<td align="center">${scoreCardInstance?.hole13?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole13-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole13"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole14?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole14?.par}</td>
<td align="center">${scoreCardInstance?.hole14?.yards}</td>
<td align="center">${scoreCardInstance?.hole14?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole14-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole14"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole15?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole15?.par}</td>
<td align="center">${scoreCardInstance?.hole15?.yards}</td>
<td align="center">${scoreCardInstance?.hole15?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole15-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole15"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole16?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole16?.par}</td>
<td align="center">${scoreCardInstance?.hole16?.yards}</td>
<td align="center">${scoreCardInstance?.hole16?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole16-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole16"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole17?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole17?.par}</td>
<td align="center">${scoreCardInstance?.hole17?.yards}</td>
<td align="center">${scoreCardInstance?.hole17?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole17-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole17"/></span></td></tr>
<tr>
<td align="center">${scoreCardInstance?.hole18?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole18?.par}</td>
<td align="center">${scoreCardInstance?.hole18?.yards}</td>
<td align="center">${scoreCardInstance?.hole18?.holeIndex}</td>
<td align="center"><span class="property-value" aria-labelledby="shotsHole18-label"><g:fieldValue bean="${golfRoundInstance}" field="shotsHole18"/></span></td></tr>
<tr>
<th align="center"><strong>IN</strong></th>
<th align="center">${backNinePar}</th>
<th align="center">${backNineDistance}</th>
<th align="center"><strong>${backNineIndex}</strong></th>
<th align="center"><strong>${backNineScore}</strong></th>
</tr>
<tr>
<th align="center"><strong>TOTAL</strong></th>
<th align="center"><strong>${totalPar}</strong></th>
<th align="center">${totalDistance}</th>
<th align="center"><strong>${totalIndex}</strong></th>
<th align="center"><strong>${totalScore}</strong></th>
</tr>
</tbody>
</table>
<img src="<g:createLink controller='golfRound' action='viewScoreCardImg' id='${scoreCardInstance?.id}'/>"/>
</div>
