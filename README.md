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

### Set, Iterables, List

Son estructuras de datos parecidas al Array.

- toSet() → Convierte una lista en un set (sin elementos repetidos)
- toList() → Convierte en una lista.
- .where → Recorre los elementos de la lista o el iterable.

```dart
void main() {

 final numbers = [1,2,3,4,5, 5 ,5,5,23,1,13];
 
  print("List original ${ numbers.toSet().toList() }"); 
  print("Length ${numbers.length}");
  print("Index 0: ${numbers[0]}");
  print("First: ${numbers.first}");
  print("Reverse: ${numbers.reversed}");
  
  final reversedNumbers = numbers.reversed;
  print("Iterable: $reversedNumbers ");
  print("List: ${ reversedNumbers.toList()}");
  print("List: ${ reversedNumbers.toSet()}");
  
  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });
  
  print(">5: $numbersGreaterThan5");
  print(">5 set: ${numbersGreaterThan5.toSet()}");
}
```

### Funciones

Definidas fuera de la función principal **main.**

Pueden ser funciones flechas o regulares, llevar parámetros con el tipo de datos incluido y parámetros opcionales dentro de llaves cuadradas.

```dart
void main() {
  print(greetEveryone());
  
  print(addTwoNumbers(2,3));
}

String greetEveryone() => "Hello everyone!";

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional (int a, [int b = 0]) {
//   b = b ?? 0;
//   b ??= 0;
  return a + b;
}
```

### Parámetros con nombre.

Van dentro de llaves. Esta las hace parámetros opcionales automáticamente, podemos darle un valor por default o aplicar **required**.

```dart
String greetPerson({required String name, String message = "Hola"}) {
  return "$message $name";
}
```

### Clases

El 95% de Dart son clases.

```dart
void main() {
   final wolverine = new Hero("Logan", "Regeneración");
}

class Hero {
  String name;
  String power;
  
  Hero(this.name, this.power);
  
//   Hero( String pName, String pPower ) 
//     : name = pName,
//       power = pPower;
  
}
```