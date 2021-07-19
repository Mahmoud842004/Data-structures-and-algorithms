
void main(List<String> args) {
  print(
    multiplication(
        number1:
            '3141592653589793238462643383279502884197169399375105820974944592',
        number2:
            '2718281828459045235360287471352662497757247093699959574966967627'),
  );
}

List mergesort(List input) {
  if (input.length == 1) {
    return input;
  }

  var fristlist = mergesort(input.sublist(0, (input.length / 2).toInt()));
  var secoundlist =
      mergesort(input.sublist((input.length / 2).toInt(), input.length));
  return merge(fristlist, secoundlist);
}

List merge(List fristlist, List secoundlist) {
  var listlenght = fristlist.length + secoundlist.length;
  var sortedlist = [];

  var i = 0;
  var j = 0;

  for (var k = 0; k < listlenght; k++) {
    if (i == fristlist.length) {
      sortedlist.add(secoundlist[j]);
      j = j + 1;
    } else if (j == secoundlist.length) {
      sortedlist.add(fristlist[i]);
      i = i + 1;
    } else {
      if (fristlist[i] < secoundlist[j]) {
        sortedlist.add(fristlist[i]);
        i = i + 1;
      } else {
        sortedlist.add(secoundlist[j]);
        j = j + 1;
      }
    }
  }
  return sortedlist;
}

BigInt multiplication({String number1, String number2}) {
  var num1 = BigInt.parse(number1);
  var num2 = BigInt.parse(number2);
  var result = num1 * num2;
  return result;
}

List<BigInt> convertnumber(BigInt number) {
  var numberslist = [];
  number.toString().split('').forEach((element) {
    numberslist.add(BigInt.parse(element));
  });
  return numberslist;
}
