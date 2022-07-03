public class Stmts implements Token {
    Stmt st;
    Stmts sts;

    public Stmts(Stmt st, Stmts sts) {
        this.st = st;
        this.sts = sts;
    }

    public Stmts(){
        this.st = null;
        this.sts = null;
    }

    public String toString(int t){
        return (st == null ? "" : st.toString(t)) + (sts == null ? "" : sts.toString(t));
        // return (st.toString() + sts.toString());
    }
}
