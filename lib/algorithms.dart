void main(List<String> args) {
  print(summparis([1, 2, 4, 4,4], 8));
}

dynamic sumpairs(List list, int sum) {
  var returnedlist = [];
  for (var i = 0; i < list.length - 1; i++) {
    for (var j = 0; j < list.length; j++) {
      if (list[i] + list[j] == sum && i != j) {
        returnedlist.add([list[i], list[j]]);
      }
    }
  }
  if (returnedlist.length == 0) {
    return 'there is no items';
  } else {
    return returnedlist;
  }
}

dynamic summparis(List list, int sum) {
  var returnedlist = [];
  for (var i = 0; i < list.length; i++) {
    if (list.contains(sum - list[i]) && i != list.indexOf(sum - list[i])) {
      returnedlist.add([list[i], sum - list[i]]);
    }
  }
  if (returnedlist.isEmpty) {
    return 'there is no paired item there sum is equel the result';
  } else {
    return returnedlist;
  }
}
