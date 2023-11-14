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