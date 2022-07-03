public class Readlist implements Token {
    Name name;
    Readlist readlist;

    public Readlist(Name name, Readlist r) {
        this.name = name;
        this.readlist = r;
    }

    public Readlist(Name name) {
        this.name = name;
        this.readlist = null;
    }

    public String toString(int t) {
        if (readlist == null)
            return name.toString(t);
        return name.toString(t) + ", " + readlist.toString(t);
        // if(readlist != null)
        // {
        // return (name.toString()+ " , " + readlist.toString());
        // }
        // else
        // {
        // return name.toString();
        // }
    }

}
