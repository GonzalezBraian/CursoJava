package domain.models;

public class Juego {

    private String nombre;
    private double precio;
    private int descargas;
    private String urlDownload;
    private String urlImg;

    public Juego() {
    }

    public Juego(int id, String nombre, double precio, int descargas, String urlDownload, String urlImg) {
        this.nombre = nombre;
        this.precio = precio;
        this.descargas = descargas;
        this.urlDownload = urlDownload;
        this.urlImg = urlImg;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getDescargas() {
        return descargas;
    }

    public void setDescargas(int descargas) {
        this.descargas = descargas;
    }

    public String getUrlDownload() {
        return urlDownload;
    }

    public void setUrlDownload(String urlDownload) {
        this.urlDownload = urlDownload;
    }

    public String getUrlImg() {
        return urlImg;
    }

    public void setUrlImg(String urlImg) {
        this.urlImg = urlImg;
    }

    @Override
    public String toString() {
        return "Juego{" +
                "nombre='" + nombre + '\'' +
                ", precio=" + precio +
                ", descargas=" + descargas +
                ", urlDownload='" + urlDownload + '\'' +
                ", urlImg='" + urlImg + '\'' +
                '}';
    }
}
