void main(List<String> args) {
  print(integermultiplication(m1: 1234, m2: 5678));
}

int integermultiplication({int m1, int m2}) {
  var list1 = convertint(m1);
  var finalresult = 0;
  var passednumbers = 0;

  for (var i = list1.length - 1; i >= 0; i--) {
    var finalnumber = '';
    for (var i = 1; i <= passednumbers; i++) {
      finalnumber = '${finalnumber}0';
    }
    finalnumber = '${list1[i] * m2}$finalnumber';
    finalresult = finalresult + int.parse(finalnumber);
    passednumbers++;
    print(finalnumber);
  }
  return finalresult;
}

List<int> convertint(int number) {
  List<int> intlist = [];
  var stringnumber = number.toString();
  var stringlist = stringnumber.split('');
  stringlist.forEach((element) {
    intlist.add(int.parse(element));
  });
  return intlist;
}
