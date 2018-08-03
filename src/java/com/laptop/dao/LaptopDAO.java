package com.laptop.dao;

import com.laptop.mdl.LaptopModel;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * @author User
 */
public class LaptopDAO {

    /** 
     * Class ini berisi properti koneksi dari class Connection, sebuah konstruktor, method dataLaptop() dan method getIdLaptop()
     */
    
    private Connection koneksi;

    public LaptopDAO() {
        
         /**
         * Konstruktor ini akan otomatis membuat objek kon dari class KoneksiDatabase
         * Dan melakukan koneksi ke database melalui blok try dengan mengakses method ambilKoneksi() yang berada di class KoneksiDatabase
         */
        
        KoneksiDatabase kon = new KoneksiDatabase();
        try {
            koneksi = kon.ambilKoneksi();
        } catch (SQLException se) {
            se.getMessage();
        }
    }

    public ArrayList<LaptopModel> dataLaptop() throws SQLException {
        
        /**
         * Method ini digunakan untuk melakukan query ke tabel laptop dan mengambil seluruh data yang ada didalamnya
         * Data yang diambil akan ditampilkan pada file list-laptop.jsp  
         */
        
        String query = "SELECT  * FROM laptop ORDER BY merk ASC"; // Query ke tabel laptop dan mengurutkan data secara ascending berdasarkan merk
        ArrayList<LaptopModel> laptop = new ArrayList<>(); // Instance objek laptop dari class ArrayList yang berisi class LaptopModel
        Statement st = koneksi.createStatement();
        try (ResultSet rs = st.executeQuery(query)) {
            
            /**
             * Blok try ini akan melakukan eksekusi query melalui ResultSet
             */
            
            while (rs.next()) {
                
                /**
                * Looping while ini digunakan set data/nilai ke masing-masing properti melalui objek lm dari class LaptopModel
                */
                
                LaptopModel lm = new LaptopModel();
                lm.setId(rs.getInt("id"));
                lm.setMerk(rs.getString("merk"));
                lm.setModel(rs.getString("model"));
                lm.setOs(rs.getString("os"));
                lm.setRam(rs.getString("ram"));
                lm.setProsesor(rs.getString("prosesor"));
                lm.setLayar(rs.getString("layar"));
                lm.setResolusi(rs.getString("resolusi"));
                lm.setBerat(rs.getString("berat"));
                lm.setGambar(rs.getString("gambar"));
                lm.setRating(rs.getString("rating"));
                lm.setHarga(rs.getString("harga"));
                laptop.add(lm); // Proses menambahkan data (data berupa array) ke objek laptop  dari set nilai pada objek lm
            }
        }
        return laptop; // Return value untuk mendapatkan data/nilai dari objek laptop
    }

    public LaptopModel getIdLaptop(int id) throws SQLException {
        
        /**
         * Method ini digunakan untuk melakukan query ke tabel laptop dan mengambil data berdasarkan id
         * Data yang diambil akan ditampilkan pada file detail-laptop.jsp 
         */
        
        LaptopModel lm = new LaptopModel();
        String query = "SELECT * FROM laptop WHERE  id=" + id;
        Statement stmt = koneksi.createStatement();
        ResultSet rs = stmt.executeQuery(query);
        if (rs.next()) {
            lm.setId(rs.getInt("id"));
            lm.setMerk(rs.getString("merk"));
            lm.setModel(rs.getString("model"));
            lm.setOs(rs.getString("os"));
            lm.setRam(rs.getString("ram"));
            lm.setProsesor(rs.getString("prosesor"));
            lm.setLayar(rs.getString("layar"));
            lm.setResolusi(rs.getString("resolusi"));
            lm.setBerat(rs.getString("berat"));
            lm.setGambar(rs.getString("gambar"));
            lm.setRating(rs.getString("rating"));
            lm.setHarga(rs.getString("harga"));
        }
        return lm;
    }
}
