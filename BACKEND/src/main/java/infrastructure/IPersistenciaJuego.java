package infrastructure;

import domain.models.Juego;

import java.util.ArrayList;

public interface IPersistenciaJuego {
    void saveJuego(Juego game);
    ArrayList<Juego> getListaJuegos();
}
