public class Argdecl implements Token{

  boolean isArray;
  String type;
  String ID;

  public Argdecl(String type, String id, boolean isArray){
      this.type = type;
      this.ID = id;
      this.isArray = isArray;
  }


  public String toString(int t){
      return type + " " + ID + (isArray ? "[]" : "");
  }
}

