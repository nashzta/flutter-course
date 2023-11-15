# Flutter - Dart

### ¿Qué es DART?

Es un lenguaje del lado del cliente optimizado para aplicaciones, creada por Google.

Como caracteristicas tiene:

- Está optimizado para el UI
- Permite Hot Reload
- Rápido en plataformas ARM y x64

Es de tipado estricto y es utilizado por Flutter como lenguaje de programación.

### Hola mundo en Dart

Definiendo variables: 

- var: Variable con tipo de dato intuitiva.
- final: Creas una variable que no se puede modificar.
- late final: Inicialización tardía de una variable que no se puede modificar.
- String: Colocamos el tipo de dato al inicio
- const: Crea una variable en tiempo de construccion.

Interpolación de Strings

Podemos inyectar variables en strings con $

```dart
print("Hola $myName")
```

Para inyectar expresiones se usa ${}

```dart
print("Hola ${myName.toUpperCase()}")
```

### Tipos de variables

String, int, variables, booleanos, listas.

```dart
final String pokemon = "Ditto";
final int hp = 100;
final bool isAlive = true;
final List<String> abilities = ["impostor"];
final  sprites = <String>["ditto/front.png", "ditto/back.png"];
```

### Dynamic Type

Tratas de no usar tipo dinamico pero cuando es necesario usarlo, no lo satanicemos, es usado cuando hacemos una petición http y la complejidad del tipado es alta. 

Una variable ***dynamic*** no tiene tipo de dato, puede ser modifcada y hay que tener cuidado porque puede ser null.

```dart
dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = { 1,2,3,4,5,6};
  errorMessage = () => true;
  errorMessage = null;
```

### Maps

Son una estructura de datos key:value, se tipan la key y el value, pueden ser datos de todo tipo.

```dart
final Map<String, dynamic> pokemon = {
   "name":"Ditto",
    "hp": 100,
    "isAlive": true,
    "abilities": <String>["impostor"],
    "sprites": {
      1: "ditto/front.png",
      2: "ditto/back.png,"
    }
  };
```