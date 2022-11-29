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
    String Name;
    String Email;
    int Phone;
    

    public Users(int prId, String prName, String prEmail, int prPhone) {
        this.Name = prName;
        this.Email = prEmail;
        this.Phone = prPhone;
    }

    public Boolean CreateProductsServlet(Users user) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/WebUsers", "root", "Admin$1234");
            Statement statement = connection.createStatement();

            String sql = "insert into users (Name, Email, Phone) "
                    + "values (" + user.Name + ", '" + user.Email + "', '" + user.Phone + "')";
            
            statement.execute(sql);
            statement.close();
            
            return true;
        } catch (ClassNotFoundException | NumberFormatException | SQLException e) {
            return false;
        }
    }     
}