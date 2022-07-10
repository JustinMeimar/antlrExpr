CC = g++
INCL_RUNTIME = /usr/local/include
LIB_RUNTIME = /usr/local/lib

ICARGS = -c -I $(INCL_RUNTIME)/antlr4-runtime/
LCARGS = -g

LIBS = $(LIB_RUNTIME)/libantlr4-runtime.a

OUTPUT = ./obj
GENERATED = ./generated

antlr: Expr.g4 
	@echo compiling src..
	$(CC) $(ICARGS) parser.cpp -o $(OUTPUT)/parser.o -std=c++17
	$(CC) $(ICARGS) ./ExprLexer.cpp -o $(OUTPUT)/ExprLexer.o -std=c++17
	$(CC) $(LCARGS) $(OUTPUT)/parser.o $(OUTPUT)/ExprLexer.o $(LIBS) -o parser -std=c++17	


dirs: 
	mkdir -p $(OUTPUT) $(GENERATED)
