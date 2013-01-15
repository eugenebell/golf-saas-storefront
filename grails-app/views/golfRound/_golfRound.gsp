<%@ page import="golf.saas.storefront.GolfRound" %>
<h3 class="cpost-title">${scoreCardInstance?.name} Score Card</h3>
<div id="contentpageleft">
<img src="<g:createLink controller='golfRound' action='viewCourseLogoImg' id='${scoreCardInstance?.id}'/>"/>

<table class="wptable">
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
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole1', 'error')}"><g:field type="number" name="shotsHole1" value="${golfRoundInstance.shotsHole1}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole2?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole2?.par}</td>
<td align="center">${scoreCardInstance?.hole2?.yards}</td>
<td align="center">${scoreCardInstance?.hole2?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole2', 'error')}"><g:field type="number" name="shotsHole2" value="${golfRoundInstance.shotsHole2}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole3?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole3?.par}</td>
<td align="center">${scoreCardInstance?.hole3?.yards}</td>
<td align="center">${scoreCardInstance?.hole3?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole3', 'error')}"><g:field type="number" name="shotsHole3" value="${golfRoundInstance.shotsHole3}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole4?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole4?.par}</td>
<td align="center">${scoreCardInstance?.hole4?.yards}</td>
<td align="center">${scoreCardInstance?.hole4?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole4', 'error')}"><g:field type="number" name="shotsHole4" value="${golfRoundInstance.shotsHole4}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole5?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole5?.par}</td>
<td align="center">${scoreCardInstance?.hole5?.yards}</td>
<td align="center">${scoreCardInstance?.hole5?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole5', 'error')}"><g:field type="number" name="shotsHole5" value="${golfRoundInstance.shotsHole5}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole6?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole6?.par}</td>
<td align="center">${scoreCardInstance?.hole6?.yards}</td>
<td align="center">${scoreCardInstance?.hole6?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole6', 'error')}"><g:field type="number" name="shotsHole6" value="${golfRoundInstance.shotsHole6}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole7?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole7?.par}</td>
<td align="center">${scoreCardInstance?.hole7?.yards}</td>
<td align="center">${scoreCardInstance?.hole7?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole7', 'error')}"><g:field type="number" name="shotsHole7" value="${golfRoundInstance.shotsHole7}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole8?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole8?.par}</td>
<td align="center">${scoreCardInstance?.hole8?.yards}</td>
<td align="center">${scoreCardInstance?.hole8?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole8', 'error')}"><g:field type="number" name="shotsHole8" value="${golfRoundInstance.shotsHole8}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole9?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole9?.par}</td>
<td align="center">${scoreCardInstance?.hole9?.yards}</td>
<td align="center">${scoreCardInstance?.hole9?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole9', 'error')}"><g:field type="number" name="shotsHole9" value="${golfRoundInstance.shotsHole9}" /></td>
</tr>
<tr>
<th align="center"><strong>OUT</strong></th>
<th align="center"><strong>${frontNinePar}</strong></th>
<th align="center">${frontNineDistance}</th>
<th align="center"><strong>${frontNineIndex}</strong></th>
<th align="center"><strong>${frontNineScore}</strong></th>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole10?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole10?.par}</td>
<td align="center">${scoreCardInstance?.hole10?.yards}</td>
<td align="center">${scoreCardInstance?.hole10?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole10', 'error')}"><g:field type="number" name="shotsHole10" value="${golfRoundInstance.shotsHole10}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole11?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole11?.par}</td>
<td align="center">${scoreCardInstance?.hole11?.yards}</td>
<td align="center">${scoreCardInstance?.hole11?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole11', 'error')}"><g:field type="number" name="shotsHole11" value="${golfRoundInstance.shotsHole11}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole12?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole12?.par}</td>
<td align="center">${scoreCardInstance?.hole12?.yards}</td>
<td align="center">${scoreCardInstance?.hole12?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole12', 'error')}"><g:field type="number" name="shotsHole12" value="${golfRoundInstance.shotsHole12}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole13?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole13?.par}</td>
<td align="center">${scoreCardInstance?.hole13?.yards}</td>
<td align="center">${scoreCardInstance?.hole13?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole13', 'error')}"><g:field type="number" name="shotsHole13" value="${golfRoundInstance.shotsHole13}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole14?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole14?.par}</td>
<td align="center">${scoreCardInstance?.hole14?.yards}</td>
<td align="center">${scoreCardInstance?.hole14?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole14', 'error')}"><g:field type="number" name="shotsHole14" value="${golfRoundInstance.shotsHole14}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole15?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole15?.par}</td>
<td align="center">${scoreCardInstance?.hole15?.yards}</td>
<td align="center">${scoreCardInstance?.hole15?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole15', 'error')}"><g:field type="number" name="shotsHole15" value="${golfRoundInstance.shotsHole15}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole16?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole16?.par}</td>
<td align="center">${scoreCardInstance?.hole16?.yards}</td>
<td align="center">${scoreCardInstance?.hole16?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole16', 'error')}"><g:field type="number" name="shotsHole16" value="${golfRoundInstance.shotsHole16}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole17?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole17?.par}</td>
<td align="center">${scoreCardInstance?.hole17?.yards}</td>
<td align="center">${scoreCardInstance?.hole17?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole17', 'error')}"><g:field type="number" name="shotsHole17" value="${golfRoundInstance.shotsHole17}" /></td>
</tr>
<tr>
<td align="center">${scoreCardInstance?.hole18?.holeNumber}</td>
<td align="center">${scoreCardInstance?.hole18?.par}</td>
<td align="center">${scoreCardInstance?.hole18?.yards}</td>
<td align="center">${scoreCardInstance?.hole18?.holeIndex}</td>
<td align="center" class="fieldcontain ${hasErrors(bean: golfRoundInstance, field: 'shotsHole18', 'error')}"><g:field type="number" name="shotsHole18" value="${golfRoundInstance.shotsHole18}" /></td>
</tr>
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
