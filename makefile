default: scanner parser
	javac *.java

run: scanner parser compile exec

tree: scanner parser_tree
	javac *.java



compile:
	javac *.java

scanner:
	jflex scanner.jflex

parser:
	java java_cup.Main -expect 2 -dump_grammar -parser parser parser.cup

parser_tree:
	java java_cup.MainDrawTree -dump_grammar -parser parser parser.cup

exec:
	java Main example.txt



clean:
	rm -f parser.java scanner.java sym.java
	rm -f *.class
	rm -f *.*~
