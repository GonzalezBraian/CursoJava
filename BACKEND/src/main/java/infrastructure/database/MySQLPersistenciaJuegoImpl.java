package infrastructure.database;

import domain.models.Juego;
import infrastructure.IPersistenciaJuego;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MySQLPersistenciaJuegoImpl implements IPersistenciaJuego {

    private Connection conexion;

    public MySQLPersistenciaJuegoImpl() {
        this.conexion = DatabaseConnection.getConnection();
    }

    @Override
    public void saveJuego(Juego game) {
        String sql = "INSERT INTO xbox_db.catalogo (nombre, precio, descargas, urlDownload, urlImg) VALUES (?,?,?,?,?)";

        try {
            PreparedStatement preparador = this.conexion.prepareStatement(sql);
            preparador.setString(1, game.getNombre());
            preparador.setDouble(2, game.getPrecio());
            preparador.setInt(3, game.getDescargas());
            preparador.setString(4, game.getUrlDownload());
            preparador.setString(5, game.getUrlImg());
            preparador.executeUpdate();
            preparador.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public ArrayList<Juego> getListaJuegos() {
        String sql = "SELECT * FROM xbox_db.catalogo";

        try {
            PreparedStatement preparador = conexion.prepareStatement(sql);
            ResultSet resultados = preparador.executeQuery();
            if (resultados == null) return null;
            ArrayList<Juego> listaJuegos = new ArrayList<>();
            while (resultados.next()) {
                Juego game = new Juego();
                game.setNombre(resultados.getString("nombre"));
                game.setPrecio(resultados.getDouble("precio"));
                game.setDescargas(resultados.getInt("descargas"));
                game.setUrlDownload(resultados.getString("urlDownload"));
                game.setUrlImg(resultados.getString("urlImg"));
                listaJuegos.add(game);
            }
            return listaJuegos;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
