package golf.saas.storefront

class GolfRoundTagLib {
	static namespace = "golfRound"
	
	def formatHole = { attrs ->
		String hole = attrs.hole
		String par = attrs.par
		String length = attrs.length
		String index = attrs.index
		String o = "<td align=\"center\">" + hole  + "</td><td align=\"center\">" + par + "</td><td align=\"center\">" + length + "</td><td align=\"center\">" + index + "</td><td align=\"center\">" + 00 + "</td>"
		out << o
		//"<td align=\"center\">" + hole  + "</td><td align=\"center\">" + par + "</td><td align=\"center\">" + length + "</td><td align=\"center\">" + index + "</td><td align=\"center\">" + 00 + "</td>"
	}
}
