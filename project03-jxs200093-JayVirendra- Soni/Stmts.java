class Stmts extends SuperToken implements Token {
    Stmt stmt;
    Stmts stmts;

    public Stmts(Stmt stmt, Stmts stmts){
        this.stmt = stmt;
        this.stmts = stmts;
    }

    public Stmts(){
        this.stmt = null;
        this.stmts = null;
    }

    public String toString(int t){
        return (stmt == null ? "" : stmt.toString(t)) + (stmts == null ? "" : stmts.toString(t));
        
    }

    public void typeCheck() throws Exception{
        if (stmt != null) {
            stmt.typeCheck();
        }
        if (stmts != null) {
            stmts.typeCheck();
        }
    }
}
