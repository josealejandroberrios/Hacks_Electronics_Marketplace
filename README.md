# Hack Marketplace

En el ámbito de las ventas y el marketing, las estrategias adoptadas por algunos vendedores pueden llegar a ser muy competitivos. ¿Qué pasaría si se hiciera de una forma opuesta? 

Para este proyecto se propone que los cursantes de Academia devtoHack trabajen juntos en implementar una solución experimental, cooperativa e interconectada. Un **Marketplace Cooperativo.**

El Hack Marketplace contará con diferentes **“tiendas”**. Cada tienda producirá un tipo de producto diferente. Estos tipos de productos son:
  1. Zapatos
  2. Electrónicos
  3. Ropa
  4. Librería y Papelería
  5. Ferretería

Cada equipo de estudiantes, 5 equipos en total, tendrá la misión de implementar una “tienda”. **La idea es que cuando un cliente cualquiera visite la “página principal” de su tienda, aparezca un listado tipo “vitrina” con los productos de todas sus TIENDAS VECINAS.** 

**Los productos del listado deben tener la siguiente información**:
  * Imagen del producto
  * Nombre del producto
  * Descripción corta
  * Precio
  * Disponibilidad
  * Rubro y tienda
  * Botón para comprar el producto
        
**Un cliente que entre a la tienda debe poder:** 
  * Ver el listado de todos los productos de las tiendas vecinas. 
  * Cliquear el boton de “comprar” de cualquier producto:
    * Esto descuenta un (1) producto seleccionado de la tienda del vecino correspondiente
            
**La tienda, a su vez debe contar con un botón de “Ingresar” que lleve una pantalla simple de “Login” la cual permitirá a un único usuario administrador entrar a un panel de administración, en el cual se podrá:**
  * Administrar productos propios (de su propia tienda)
    * Un producto tiene:
      * Nombre
      * Imagen
      * Descripción
      * Precio
      * Inventario: cantidad de productos (mayor a 0)
    * Acciones requeridas: 
      * Listar productos 
      * Crear productos 
      * Editar productos 
      * Eliminar productos 
      * Agregar o eliminar vecinos
  * Un vecino tendrá:
    * Una dirección de donde se obtienen sus productos
  * **Cerrar sesión:** Vuelve a la página principal o “vitrina” de la tienda

### Sugerencias y tips:
  * Harán falta endpoints para mostrar y consumir sus productos entre tiendas. ¡Comuniquense! ¡lleguen a un acuerdo para esto!
  * Se sugiere que al enviar los productos, envien la direccion para la compra dentro de su sistema.
  * ¡Las imágenes de los productos son importantes! Una tienda no está completa sin las imágenes de sus productos.
  * Realicen pruebas previas con otras tiendas. Prueben local (en su máquina), local (en máquinas distintas) y remotamente de ser posible.
  * Considere mostrar mensajes explicativos en casos en donde aún no exista





