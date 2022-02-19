void linearSearch(List<int> list, int size, int searchedNumber, Stopwatch stopwatch) {
  stopwatch.start();
  for (int i = 0; i < size; i++) {
    if (list[i] == searchedNumber) {
      stopwatch.stop();
      print(
        "Pesquisa para o nº $searchedNumber: ${stopwatch.elapsedMicroseconds} microsegundos",
      );
      break;
    }
  }
  stopwatch.reset();
}

void main() {
  print("Populando o array...\n\n");
  List<int> arrayOfNumbers = List.generate(999999999, (i) => i);
  Stopwatch stopwatch = Stopwatch();

  List<int> searchedNumbers = [
    1,
    10,
    100,
    1000,
    10000,
    100000,
    100000000,
    9999999999,
  ];

  int sizeOfList = arrayOfNumbers.length;

  print("-> Lista ordenada");
  searchedNumbers.forEach((number) {
    linearSearch(
      arrayOfNumbers,
      sizeOfList,
      number,
      stopwatch,
    );
  });

  print("\n\n-> Lista desordenada");
  arrayOfNumbers.shuffle();
  searchedNumbers.forEach((number) {
    linearSearch(
      arrayOfNumbers,
      sizeOfList,
      number,
      stopwatch,
    );
  });
}
