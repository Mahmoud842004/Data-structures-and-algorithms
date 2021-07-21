void main(List<String> args) {
  print(countinginversions([1, 3, 5, 2, 4, 6], 6));
}

List countinginversions(List input, int inputlength) {
  if (input.length == 1) {
    return input;
  }

  var fristlist = countinginversions(
      input.sublist(0, (input.length / 2).toInt()), inputlength);
  var secoundlist = countinginversions(
      input.sublist((input.length / 2).toInt(), input.length), inputlength);
  return mergeandcount(fristlist, secoundlist, inputlength);
}

List mergeandcount(List fristlist, List secoundlist, int inputlength) {
  var listlenght = fristlist.length + secoundlist.length;
  var sortedlist = [];
  var inversedpairs = 0;
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
      } else if (fristlist[i] > secoundlist[j]) {
        sortedlist.add(secoundlist[j]);
        j = j + 1;
        if (listlenght == inputlength) {
          inversedpairs += fristlist.length - i;
        }
      } else {
        sortedlist.add(secoundlist[i]);
        i = i + 1;
      }
    }
  }
  if (listlenght == inputlength) {
    print(inversedpairs);
  }
  return sortedlist;
}
