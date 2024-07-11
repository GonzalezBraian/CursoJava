package services;

import domain.models.Juego;
import infrastructure.IPersistenciaJuego;
import infrastructure.database.MySQLPersistenciaJuegoImpl;

import java.util.ArrayList;

public class JuegoService implements IPersistenciaJuego {

    private IPersistenciaJuego persistencia = new MySQLPersistenciaJuegoImpl();

    @Override
    public void saveJuego(Juego game) {
        persistencia.saveJuego(game);
    }

    @Override
    public ArrayList<Juego> getListaJuegos() {
        return persistencia.getListaJuegos();
    }
}
