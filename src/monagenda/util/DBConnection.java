package monagenda.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private static final String URL =System.getenv("DB_URL");

    private static final String USER =System.getenv("DB_USER");

    private static final String PASSWORD =System.getenv("DB_PASSWORD");

    private static Connection instance = null;

    public static Connection getInstance() throws SQLException{
        if (URL == null || USER == null || PASSWORD == null) {
            throw new SQLException(
                "Database configuration is missing. "
                + "Please set DB_URL, DB_USER and DB_PASSWORD."
            );
        }
        if (instance==null || instance.isClosed()) {
            try {
                Class.forName("oracle.jdbc.OracleDriver");
                instance= DriverManager.getConnection(URL, USER, PASSWORD);
                System.out.println("Connexion Oracle établie avec succès.");
            }catch (ClassNotFoundException e) {
                throw new SQLException(
                    "Driver Oracle introuvable. Ajoutez ojdbc11.jar au classpath.\n"
                    + e.getMessage());
            }
        }
        return instance;
    }

    public static void close() {
        try {
            if(instance != null && !instance.isClosed()) {
                instance.close();
                System.out.println("Connexion Oracle fermée.");
            }
        } catch (SQLException e) {
            System.err.println("Erreur fermeture : " + e.getMessage());
        }
    }

    private DBConnection() {}
}