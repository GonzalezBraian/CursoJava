package infrastructure.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import domain.models.Juego;
import services.JuegoService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/catalogo")
public class JuegoController extends HttpServlet {

    private ObjectMapper mapper;
    private JuegoService service;

    public JuegoController() {
        this.mapper = new ObjectMapper();
        this.service = new JuegoService();
    }

    @Override
    protected void doOptions(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // encabezados de CORS
        configureCorsHeaders(resp);
        resp.setStatus(HttpServletResponse.SC_OK);
    }

    private void configureCorsHeaders(HttpServletResponse resp) {
        resp.setHeader("Access-Control-Allow-Origin", "*"); // aca colocan la direccion de donde viene la peticion, * para todos
        //resp.setHeader("Access-Control-Allow-Origin", "http://localhost:3000");
        //resp.setHeader("Access-Control-Allow-Origin", "http://127.0.0.1:3000");
        resp.setHeader("Access-Control-Allow-Methods", "GET, POST, DELETE, OPTIONS");
        resp.setHeader("Access-Control-Allow-Headers", "content-type, authorization");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        configureCorsHeaders(resp);
        ArrayList<Juego> catalogo = service.getListaJuegos();
        if(catalogo != null) {
            resp.setStatus(200);
            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            resp.getWriter().write(mapper.writeValueAsString(catalogo));
        } else {
            resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
            resp.getWriter().write("Catalogo No encontrado");
        }
        // OTRA FORMA SUGERIDA POR EL PROFE QUE TAMBIÉN FUNCIONA
        /*
         // lógica para obtener los datos del catálogo
         List<Objeto> catalogo = obtenerCatalogo();

         // respuesta en formato JSON tambien se puede enviar de esta forma
         resp.setContentType("application/json");
         new ObjectMapper().writeValue(resp.getOutputStream(), catalogo);
         }
        */
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        configureCorsHeaders(resp);
        Juego game = mapper.readValue(req.getInputStream(), Juego.class);
        service.saveJuego(game);
        resp.setStatus(HttpServletResponse.SC_OK);
    }

}