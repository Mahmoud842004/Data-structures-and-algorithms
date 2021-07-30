import 'dart:math';

void main(List<String> args) {
  quicksort(
    0,
    9,
    List.generate(
      10,
      (index) => Random().nextInt(10),
    ),
  );
}

void quicksort(int start, int end, List l) {
  try {
    if (start > end) {
      print(l);
    }
    if (end == start || end == -1 || start > end) {
      return;
    }
    int p = l[start];
    var i = start;

    for (var j = start + 1; j <= end; j++) {
      if (l[j] < p) {
        var temp = l[i + 1];
        l[i + 1] = l[j];
        l[j] = temp;
        i = i + 1;
      }
    }
    var temp = l[start];
    l[start] = l[i];
    l[i] = temp;
    p = l[i];

    quicksort(start, l.indexOf(p) - 1, l);
    quicksort(l.indexOf(p) + 1, end, l);
  } catch (e) {
    print(e.toString());
  }
}
