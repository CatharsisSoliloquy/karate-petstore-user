function fn() {


    // Configurar el tiempo de espera de conexión para las solicitudes a 5000 milisegundos (5 segundos).
    // Si una solicitud no puede establecer una conexión en este tiempo, se considerará fallida.
    karate.configure('connectTimeout', 5000);

    // Configurar el tiempo de espera de lectura para las solicitudes a 5000 milisegundos (5 segundos).
    // Si una solicitud no puede completar la lectura de la respuesta en este tiempo, se considerará fallida.
    karate.configure('readTimeout', 5000);

    //Da una url en caso de que sea diferente dependiendo del entorno en el que se ejecute (dev, test, qa, preprod, prod),
    //En caso contrario envía la url por defecto.
    var baseUrl = karate.properties['baseUrl'] || 'https://petstore.swagger.io/'



    // Devolver un objeto de configuración que contiene la URL base para la API.
      return {
        api: {
           baseUrl: 'https://petstore.swagger.io/'
        }
    };
}