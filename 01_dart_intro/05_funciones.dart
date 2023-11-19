void main() {
  print(greetEveryone());
  
  print(addTwoNumbers(2,3));

    print(greetPerson(name: "Jean Pierre", message: "Hi,"));

}

String greetEveryone() => "Hello everyone!";

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional (int a, [int b = 0]) {
//   b = b ?? 0;
//   b ??= 0;
  return a + b;

  
}

String greetPerson({required String name, String message = "Hola"}) {
  return "$message $name";
}