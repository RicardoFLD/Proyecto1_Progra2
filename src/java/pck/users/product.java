/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package pck.users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author Julio
 */
public class product {

    String Marca;
    String Modelo;
    int Año;
    String Estilo;
    


    public product(String pMarca, String pModelo, int pAño, String pEstilo) {
        this.Marca = pMarca;
        this.Modelo = pModelo;
        this.Año = pAño;
        this.Estilo = pEstilo;
        
        
    }

    public Boolean CreateProduct(product user) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/carros", "root", "Admin$1234");
            Statement statement = connection.createStatement();

            String sql = "insert into users (Id, Name, Category, Price, Date ) "
                    + "values (" + user.Marca + ", '" + user.Modelo + "', '" + user.Año + "', " + user.Estilo + ", ' )";

            statement.execute(sql);
            statement.close();
            
            return true;
        } catch (ClassNotFoundException | NumberFormatException | SQLException e) {
            return false;
        }
    }        
}
