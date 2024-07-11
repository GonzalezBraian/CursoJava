package infrastructure;

import domain.models.Usuario;

import java.util.ArrayList;

public interface IPersistenciaUsuario {

    void saveUser(Usuario user);
    Usuario findByUsername(String username);
    ArrayList<Usuario> getAllUsers();
    void deleteUser(int id);
}
