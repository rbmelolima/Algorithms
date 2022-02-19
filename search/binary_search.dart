void binary_search(
  List<int> list,
  int size,
  int searchedNumber,
  Stopwatch stopwatch,
) {
  int low = 0;
  int high = size - 1;
  int mid;
  int counter = 0;

  stopwatch.start();
  while (low <= high) {
    mid = (low + high) ~/ 2;
    if (list[mid] == searchedNumber) {
      print(
        'Pesquisa para o nº $searchedNumber: ${stopwatch.elapsedMicroseconds} microsegundos',
      );
      print('-> $counter interações\n');
      return;
    } else if (list[mid] < searchedNumber) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
    counter++;
  }
  stopwatch.stop();
  stopwatch.reset();
}

void main() {
  print("Populando o array...\n\n");
  List<int> arrayOfNumbers = List.generate(99999, (i) => i);
  List<int> searchedNumbers = [1, 10, 100, 1000, 99998];
  Stopwatch stopwatch = Stopwatch();
  int sizeOfList = arrayOfNumbers.length;

  searchedNumbers.forEach((number) {
    binary_search(
      arrayOfNumbers,
      sizeOfList,
      number,
      stopwatch,
    );
  });
}
