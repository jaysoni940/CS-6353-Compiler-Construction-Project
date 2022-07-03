public class Printlist implements Token{
    Expr expr;
    Printlist printlist;

    public Printlist(Expr expr, Printlist p)
    {
        this.expr = expr;
        this.printlist = p;
    }
    public Printlist(Expr expr)
    {
        this.expr = expr;
        this.printlist = null;
    }

    public String toString(int t){
        if (printlist == null)
            return expr.toString(t);
        return expr.toString(t) + ", " + printlist.toString(t);
    }

    // public String toString( int t){
    //     if(printlist!=null)
    //     {
    //         return (expr.toString()+ " , " +printlist.toString());
    //     }
    //     else
    //     {
    //         return expr.toString();
    //     }
    // }
    
}
