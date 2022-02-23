int search_smaller(List<int> list) {
  int smaller = list[0];
  int smaller_index = 0;

  for (int i = 1; i < list.length; i++) {
    if (list[i] < smaller) {
      smaller = list[i];
      smaller_index = i;
    }
  }

  return smaller_index;
}

List<int> selection_sort(List<int> array) {
  List<int> newArray = [];

  while (array.isNotEmpty) {
    int smaller_index = search_smaller(array);
    newArray.add(array.removeAt(smaller_index));
  }

  return newArray;
}

void main() {
  print(selection_sort([1, 5, 2, 8, 7, 32, 24, 14, 9]));
}
