# Zataca Technical Test
Repositorio para prueba técnica de Flutter en Zataca.

## Aspectos a mejorar
A continuación se nombran algunas mejoras que se podrían añadir al proyecto para aportarle una mayor robustez:
- "Internacionalizar" la aplicación: Añadir un paquete de idiomas como flutter_localization o easy_localization para poder albergar varios idiomas. De esta manera evitariamos también tener los textos hardcodeados como ocurre actualmente. 
- Emplear DTOs (Data Transfer Object) para establecer una mayor separación entre la capa de dominio y la capa de datos.
- Incluir más tests: En el proyecto actual se realiza bloc testing, si bien se podrían añadir otros tipos de tests para así aumentar el coverage y la solidez de la aplicación, como UnitTesting, IntegrationTesting y WidgetTesting (o Golden Tests en su lugar)
- Routing: En caso de incluir más vistas en la aplicación se podrían declarar las diferentes rutas de la misma en un archivo aparte. Cada vista tendría asociada una ruta por nombre (y posibles subrutas), haciendo así más independiente la navegación a las vistas del resto de la aplicación. También se podría añadir un paquete que nos haga más sencillo el uso de flutter Navigator, como go_router. 
