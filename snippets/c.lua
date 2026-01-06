return {
		s("inc", 	{ t"#include <", i(1), t">", i(2) }),
		s("main", 	{ t({"int main(int argc, char *argv[])", "{", "\t"}), i(1), t({"", "}"}) }),
		s("pr",		{ t'printf("%', i(1), t'", ', i(2), t');' }),
}
