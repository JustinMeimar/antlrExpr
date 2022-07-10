#include <iostream>
#include "antlr4-runtime.h"
#include "ExprLexer.h"
#include "ExprParser.h"

// using namespace antlr4;
// using namespace std;

int main(int argc, char* argv[]){

	std::ifstream stream;
	stream.open(argv[1]);

	antlr4::ANTLRInputStream input(stream);
	
	// instantiate ExprLexer Class
	ExprLexer lexer(&input);
	// antlr4::CommonTokenStream tokens(&lexer);
	// tokens.fill();

	return 0;
}
