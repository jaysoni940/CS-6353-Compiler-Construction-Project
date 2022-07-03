public class Memberdecls implements Token
{

    ClassMembers classMembers;

    public Memberdecls(ClassMembers classMembers){
        this.classMembers = classMembers;
    }

    public String toString(int t){
        return classMembers.toString(t);
    }

}