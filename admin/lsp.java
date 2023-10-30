package sample;

public class Circle {
    String color;
    int radius;

    public Circle(int r, String c){
        this.radius=r;
        this.color=c;
    }

    public void Cetak(){
        System.err.println("Lingkaran Radius " +this.radius+" Berwarna "+this.color);
    }

    public static void main(String[] args){
        Circle c=new Circle(4,"Merah");
        c.Cetak();
    }
}