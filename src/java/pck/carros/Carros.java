/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package pck.carros;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

/**
 *
 * @author angie
 */
public class Carros extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    String Marca;
    String Modelo;
    int Año;
    String Estilo;
    
    public Carros(String pMarca, String pModelo, int pAño, String pEstilo) {
        
        this.Marca = pMarca;
        this.Modelo = pModelo;
        this.Año = pAño;
        this.Estilo = pEstilo;
        
        
    }
    
    public Boolean CreateCarrosServlet(Carros carro) {
        
        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/carros", "root", "Admin$1234");
            Statement statement = connection.createStatement();

            String sql = "insert into carros (Marca, Modelo, Año, Estilo) "
                    + "values (" + carro.Marca + ", '" + carro.Modelo + "', '" + carro.Año + "', " + carro.Estilo + ", ' )";

            statement.execute(sql);
            statement.close();
            
            return true;
        } catch (ClassNotFoundException | NumberFormatException | SQLException e) {
            return false;
        }
    }        
}

