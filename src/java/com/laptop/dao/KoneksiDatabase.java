package com.laptop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author User
 */
public class KoneksiDatabase {
    
    /*
     * Class ini berisi method ambilKoneksi() yang berfungsi untuk melakukan koneksi ke database
     */
    
    public Connection ambilKoneksi() throws SQLException {
        DriverManager.registerDriver(new com.mysql.jdbc.Driver()); // Regigtrasi driver mysql
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/web-java", "root", ""); // Koneksi ke database "web-java" dengan user "root" dan password ""/kosong (sesuaikan dengan konfiguransi pada komputer)
    }
    
}
