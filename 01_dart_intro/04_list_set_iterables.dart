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