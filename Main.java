// Reduced C language compiler
// Author: Stefano Scanzio
// Date: match 2011
// Mail: stefano.scanzio@polito.it

import java.io.*;

public class Main {
    static public void main(String argv[]) {    
        try {

            /* Scanner instantiation */
            scanner l = new scanner(new FileReader(argv[0]));
            /* Parser instantiation */
            parser p = new parser(l);
            /* Run the parser */
            Object result = p.parse();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


