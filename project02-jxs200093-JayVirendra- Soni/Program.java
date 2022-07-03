public class Program implements Token
{
    String className;
    Memberdecls memberdecls;
    public Program(String id, Memberdecls m) {
      className = id;
      memberdecls = m;
    }
    public String toString(int t) 
    {
      return "class " + className + " {\n" + memberdecls.toString(t+1) + "}\n";
      // return ("Program:\n"+"class " + className + " {\n" + memberdecls.toString(t+1) + "}");
    }
      
}
