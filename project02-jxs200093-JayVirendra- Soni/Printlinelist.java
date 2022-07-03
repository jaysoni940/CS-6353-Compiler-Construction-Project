public class Printlinelist implements Token{
    Printlist printlist;

    public Printlinelist(Printlist p)
    {
        this.printlist = p;
    }

    public Printlinelist(){
        this.printlist = null;
    }

    public String toString(int t)
    {
        if (printlist == null)
            return "";
        return printlist.toString(t);    
    }
}
