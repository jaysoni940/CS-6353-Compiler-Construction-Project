public class Methoddecl implements Token
{
    Argdecls argdecls; 
    Fielddecls fielddecls;
    Stmts sts;
    String type,id;
    boolean isSemi;

    public Methoddecl(String type,String id, Argdecls as, Fielddecls fs, Stmts sts, boolean issemi)
    {
        this.type = type;
        this.id = id;
        this.argdecls = as;
        this.fielddecls = fs;
        this.sts = sts;
        this.isSemi = issemi;
    }

    public String toString(int t)
    {
        String tab_space= "";
        for(int i=0;i<t;++i)
        {
            tab_space += "\t";
        }
        
        return tab_space  + type + " " + id + "(" + argdecls.toString(t) +")\n"+ tab_space + "{\n" + fielddecls.toString(t+1) + sts.toString(t+1) + tab_space + "}" + ( isSemi ? ";" : "" ) + "\n\n";
    }
}
