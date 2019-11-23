main() {
  List<String> colorList = ['blue', 'green', 'yellow', 'red'];

  for (var i = 0; i < colorList.length; i++) {
    print('for-item->$colorList[i]');
  }

  num index = 0;
  while (index < colorList.length) {
    print(colorList[index++]);
  }
  num doindex = 0;
  do {
    print(colorList[doindex++]);
  } while (doindex < colorList.length);
}
