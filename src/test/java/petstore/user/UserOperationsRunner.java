package petstore.user;

import com.intuit.karate.junit5.Karate;

public class UserOperationsRunner {

    // Anotación que indica que el método siguiente es una prueba de Karate.
    @Karate.Test
    Karate userOperations() {
        // El método run() de la clase Karate inicia la ejecución de las pruebas.
        return Karate.run().relativeTo(getClass());

    }

}
