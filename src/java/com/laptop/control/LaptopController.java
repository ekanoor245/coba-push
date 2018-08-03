package com.laptop.control;

import com.laptop.dao.LaptopDAO;
import com.laptop.mdl.LaptopModel;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author User
 */
public class LaptopController extends HttpServlet {
    
    /**
     * Class ini mengendalikan view dan model
     */

    private static final long serialVersionUID = 1L; 
    /**
     * serialVersionUID merupakan pengenal/identifier unik untuk setiap class, 
     * JVM (Java Virtual Machine) menggunakannya untuk membandingkan versi class
     * Dan memastikan bahwa class yang sama digunakan selama serailisasi dimuat saat de-seraialisasi
     */
    
    private static final String LIST_LAPTOP = "/list-laptop.jsp"; 
    private static final String DETAIL_LAPTOP = "/detail-laptop.jsp";
    private final LaptopDAO ldao;

    public LaptopController() {
        
        /*
        * Konstruktor ini akan otomatis membuat objek ldao dari class LaptopDAO
        */
        
        super();
        ldao = new LaptopDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String forward = "";
        String aksi = request.getParameter("r");
        if (aksi.equalsIgnoreCase("listLaptop")) {

           /**
           * Kondisi if ini akan dijalankan ketika variabel aksi bernilai sama dengan listLaptop
           * Dan akan melakukan forward/meneruskan ke halaman list-laptop.jsp dari halaman index.jsp 
           */
           
            forward = LIST_LAPTOP; 
            try {
                
                request.setAttribute("laptop", ldao.dataLaptop());
                
                /**
                * Blok try ini memberi atribut laptop yang berisi semua data yang diambil dari database  
                * Data tersebut diambil melalui method dataLaptop() yang berada di class LaptopDAO
                * Data pada atribut laptop dideklarasikan pada file list-laptop.jsp dan ditampilkan pada halaman tersebut
                */
                
            } catch (SQLException se) {
                se.getMessage();
                /**
               * Blok catch ini akan menampilkan (eksepsi) pesan  jika terjadi error
               */
            }
        } else if (aksi.equalsIgnoreCase("detail")) {
            forward = DETAIL_LAPTOP;
            int id = Integer.parseInt(request.getParameter("id")); // Inisialisasi variabel id yang berisi request untuk mendapatkan id data
            try {
                LaptopModel lm = ldao.getIdLaptop(id); // Objek lm berisi data yang diambil berdasarkan id
                request.setAttribute("lm", lm); // Memberi atribut lm yang berisi data dari objek lm 
            } catch (SQLException se) {
                se.getMessage();
            }
        }
        RequestDispatcher rd = request.getRequestDispatcher(forward);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        LaptopModel lm = new LaptopModel();
        
        lm.setMerk(request.getParameter("merk"));
        lm.setModel(request.getParameter("model"));
        lm.setOs(request.getParameter("os"));
        lm.setRam(request.getParameter("ram"));
        lm.setProsesor(request.getParameter("prosesor"));
        lm.setLayar(request.getParameter("layar"));
        lm.setResolusi(request.getParameter("resolusi"));
        lm.setBerat(request.getParameter("berat"));
        lm.setGambar(request.getParameter("gambar"));
        lm.setHarga(request.getParameter("harga"));
        lm.setRating(request.getParameter("rating"));
        String id = request.getParameter("id");
        
        System.out.println(id);
        
        if (id != null) {
            /**
            * Kondisi if ini akan dieksekusi jika variabel id tidak bernilai null(kosong)
            */
            try {
                ldao.getIdLaptop(Integer.parseInt(id)); // Objek ldao mengakses method getIdLaptop untuk mendapatkan data berdasarkan request id
            } catch (SQLException ex) {
                ex.getMessage();
            }
        }

        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }

}
