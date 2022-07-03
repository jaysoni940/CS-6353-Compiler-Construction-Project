"make run" command will run the program.

Output Files:

The output will not be directly seen on terminal (because I made project on Windows. So "cat" command didn't work for me.)

Please manually open the output text files from the folder. 

(code_out.txt, basicTerminals_out.txt, basicRegex_out.txt, basicFails_out.txt) 
 

If not working, following are the commands to run. 

jflex grammar.jflex
java java_cup.MainDrawTree tokens.cup
javac *.java
java LexerTest code.txt			
java LexerTest basicRegex.txt		
java LexerTest basicTerminals.txt
java LexerTest basicFails.txt

Please try to run on windows system, if it does not work on UTD Linux Servers. 