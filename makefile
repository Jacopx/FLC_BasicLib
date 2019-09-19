default: scanner parser compile

run: clean scanner parser compile exec

tree: clean scanner parser_tree compile exec

compile:
	javac *.java

scanner:
	jflex scanner.jflex

parser:
	java java_cup.Main -parser parser parser.cup

parser_tree:
	java java_cup.MainDrawTree -parser parser parser.cup

exec:
	@echo "\n\n###########\n EXECUTION \n###########"
	java Main example.txt

clean:
	@rm -f parser.java scanner.java sym.java
	@rm -f *.class
	@rm -f *.*~
