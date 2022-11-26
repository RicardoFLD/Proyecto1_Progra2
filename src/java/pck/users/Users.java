/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package pck.users;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;


/**
 *
 * @author PRINCIPAL
 */
public class Users extends HttpServlet {

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
    

    public Users(String prMarca, String prModelo, int prAño, String prEstilo) {
        this.Marca = prMarca;
        this.Modelo = prModelo;
        this.Año = prAño;
        this.Estilo = prEstilo;
    }

   public Boolean CreateUser(Users users) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/Webcarros", "root", "Admin$1234");
            Statement statement = connection.createStatement();

            String sql = "insert into carros (Marca, Modelo, Año, Estilo) "
                    + "values (" + users.Marca + ", '" + users.Modelo + "', '" + users.Año + "', '" + users.Estilo + "')";

            statement.execute(sql);
            statement.close();
            
            return true;
        } catch (ClassNotFoundException | NumberFormatException | SQLException e) {
            return false;
        }
    }        
}