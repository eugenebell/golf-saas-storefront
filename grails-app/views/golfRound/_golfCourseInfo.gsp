<table class="wptableOuter">
<tbody>
<tr><td><img src="<g:createLink controller='golfRound' action='viewCourseLogoImg' id='${scoreCardInstance?.id}'/>"/></td>
<td>
<table class="wptable">
<tbody>
<tr>
<td align="center">Golf Course</td>
<td align="center">${scoreCardInstance?.golfCourse?.name}</td>
</tr>
<tr>
<td align="center">Address</td>
<td align="center">${scoreCardInstance?.golfCourse?.address}</td>
</tr>
<tr>
<td align="center">Website</td>
<td align="center">${scoreCardInstance?.golfCourse?.website}</td>
</tr>
<tr>
<td align="center">Course Type</td>
<td align="center">${scoreCardInstance?.golfCourse?.courseType}</td>
</tr>
<tr>
<td align="center">Number of holes</td>
<td align="center">${scoreCardInstance?.golfCourse?.holes}</td>
</tr>
<tr>
<td align="center">Par</td>
<td align="center">${scoreCardInstance?.par}</td>
</tr>
<tr>
<td align="center">Course Length</td>
<td align="center">${scoreCardInstance?.courseLengthYards} yards</td>
</tr>
</tbody>
</table>
	</td>
</tr>
</tbody>
</table>