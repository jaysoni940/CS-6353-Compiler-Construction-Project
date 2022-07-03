JAVA=java
JAVAC=javac
JFLEX=$(JAVA) -jar jflex-1.8.2/lib/jflex-full-1.8.2.jar
CUPJAR=./java-cup-11b.jar
CUP=$(JAVA) -jar $(CUPJAR)
CP=.;$(CUPJAR)

default: run

.SUFFIXES: $(SUFFIXES) .class .java

.java.class:
				$(JAVAC) -cp $(CP) $*.java

FILE =  lexer.java parser.java sym.java \
        ParserTest.java \
        Program.java Memberdecls.java Fielddecls.java \
        Methoddecls.java Fielddecl.java Methoddecl.java \
        Argdecls.java ArgdeclList.java Argdecl.java \
        Stmts.java Stmt.java Name.java \
        Args.java Readlist.java Printlist.java \
        Printlinelist.java Expr.java BinaryOp.java Token.java

dump: parserD.java $(FILE:java=class)

run: test1.as test2.as test3.as test4.as test5.as

test1.as: all
	$(JAVA) -cp $(CP) ParserTest test1.as > test1-output.as

test2.as: all
	$(JAVA) -cp $(CP) ParserTest test2.as > test2-output.as

test3.as: all
	$(JAVA) -cp $(CP) ParserTest test3.as > test3-output.as

test4.as: all
	$(JAVA) -cp $(CP) ParserTest test4.as > test4-output.as

test5.as: all
	$(JAVA) -cp $(CP) ParserTest test5.as > test5-output.as

all: Lexer.java parser.java $(FILE:java=class)

clean:
		rm -f *.class *~ *.bak Lexer.java parser.java sym.java

Lexer.java: grammar.jflex
		$(JFLEX) grammar.jflex

parser.java: tokens.cup
		$(CUP) -interface < tokens.cup

parserD.java: tokens.cup
		$(CUP) -interface -dump < tokens.cup
