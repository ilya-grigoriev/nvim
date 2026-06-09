return {
	s("bf", 	{ t"*", i(1), t"*", i(2) }),
	s("it", 	{ t"_", i(1), t"_", i(2) }),
	s("d", 		{ t"upright(", i(1), t")", i(2) }),
	s("pb", 	{ t{"#pagebreak()", ""}, i(1) }),
	s("fr", 	{ t'(', i(1), t')/(', i(2), t')' }),

	s("mt", 	{ t'op("', i(1), t'")', i(2) }),
	s("m", 		{ t'$', i(1), t'$', i(2) }),
	s("mm",		{ t'$ ', i(1), t' $', i(2) }),
	s("lm", 	{ i(1), t' = #let ', i(2), t'=', rep(1), t'; ', i(3), t' #', rep(2) }),

	s("img",	{ t({"#align(", "\tcenter,", '\tfigure(image("'}), i(1), t({'"))', ')'}), i(2) }),
	s("le",		{ t"#let ", i(1), t(' = '), i(2) }),
	s("v",		{ t"#v(", i(1), t')', i(2) }),
	s("c",		{ t"#(", i(1), t")", i(2) }),
	s("col",	{ t"#table.cell(colspan: ", i(1), t")[", i(2), t"]", i(3) }),
}
