package com.laptop.mdl;

/**
 * @author User
 */
public class LaptopModel {

    /** 
     * Class ini berisi properti, method setter, method getter dan sebuah konstruktor
     * Method setter berfungsi untuk mendefinisikan/set nilai  pada masing-masing properti
     * Method getter berfungsi untuk mengambil/get nilai pada masing-masing properti  
     */
    
    private int id;
    private String merk, model, os, ram, prosesor, layar, resolusi, berat, gambar, rating, harga;

    public LaptopModel() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMerk() {
        return merk;
    }

    public void setMerk(String merk) {
        this.merk = merk;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getProsesor() {
        return prosesor;
    }

    public void setProsesor(String prosesor) {
        this.prosesor = prosesor;
    }

    public String getLayar() {
        return layar;
    }

    public void setLayar(String layar) {
        this.layar = layar;
    }

    public String getResolusi() {
        return resolusi;
    }

    public void setResolusi(String resolusi) {
        this.resolusi = resolusi;
    }

    public String getBerat() {
        return berat;
    }

    public void setBerat(String berat) {
        this.berat = berat;
    }

    public String getGambar() {
        return gambar;
    }

    public void setGambar(String gambar) {
        this.gambar = gambar;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }
    
    public String getHarga() {
        return harga;
    }

    public void setHarga(String harga) {
        this.harga = harga;
    }
}
