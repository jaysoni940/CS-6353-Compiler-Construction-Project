class Fielddecl extends SuperToken implements Token
{
    boolean isFinal = false;
    String type;
    String ID;
    Expr opExpr;
    int length;
    int cond;

    public Fielddecl(boolean isFinal, String type, String ID, Expr opExpr){
        this.isFinal = isFinal;
        this.type = type; 
        this.ID = ID;
        this.opExpr = opExpr;
        cond = 1;
    }

    public Fielddecl(String type, String ID, int length){
        this.type = type; 
        this.ID = ID;
        this.length = length;
        cond = 2;
    }

    public String toString(int t){
        String tabs = "";
        for (int i = 0; i < t; ++i) tabs += "\t";
        if (cond == 1)
            return tabs + (isFinal ? "final " : "") + type + " " + ID + (opExpr == null ? "" : " = " + opExpr.toString(t)) + ";\n";

        return tabs + type + " " + ID + "[" + length + "]" + ";\n";

    }

    public void typeCheck() throws Exception {
        VarType varType = getTypeFromString(type);
        if (cond == 1){
            if (opExpr != null) {
                if(!isCoercible(varType, opExpr.typeCheck())){
                    System.out.println(" Error: incompatible types: " + opExpr.typeCheck() + " cannot be converted to " + varType);
                    System.exit(0);
                }
            }
            boolean response = symbolTable.addVar(ID, varType, false, false, isFinal);
            if (!response) {
                System.out.println(" Error: Variable " + ID + " is already defined in this scope!");
                System.exit(0);
            }
        } else{
            boolean response = symbolTable.addVar(ID, varType, true);
            if (!response) {
                System.out.println(" Error: Variable " + ID + " is already defined in this scope!");
                System.exit(0);
            }
        }
    }
}