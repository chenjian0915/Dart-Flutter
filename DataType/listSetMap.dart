main() {
  List<String> strListOne = ['beijing', 'tianjin', 'shanghai'];
  var strListTwo = <String>['blue', 'green', 'black'];

  print(strListOne);

  // List 常用函数
  strListTwo.add('white');
  print(strListTwo);
  print(strListTwo[1]);
  print(strListTwo.length);
  strListTwo.insert(2, 'orange'); //在集合指定index位置插入指定的元素
  print(strListTwo);
  print(strListTwo.sublist(1, 3));
  print(strListTwo.getRange(1, 3));

  // 遍历方法
  // for (var i = 0; i < strListTwo.length; i++) {
  //   print('for--->' + strListTwo[i]);
  // }

  // strListTwo.forEach((value) => {print('forEach--->' + value)});

  // for (var item in strListTwo) {
  //   print('for-in--->' + item);
  // }
  // while (strListTwo.iterator.moveNext()) {
  //   print(strListTwo.iterator.current);
  // }

  // Set
  Set<String> colorSet = {'red', 'yellow', 'blue', 'green'}; //直接使用{}形式初始化
  var colorList = <String>{'red', 'yellow', 'blue', 'green', 'green'};
  print(colorList);

  var colorSet1 = {'red', 'yellow', 'blue', 'green'};
  var colorSet2 = {'red', 'blue', 'black', 'orange'};
  // 交、并、补
  print(colorSet1.intersection(colorSet2));
  print(colorSet1.union(colorSet2));
  print(colorSet1.difference(colorSet2));

  // Map
  Map<String, num> map1 = {'color': 100, 'age': 200};
  print(map1);
  // Map.fromIterables将List集合转化成Map
  List<String> colorKeys = ['white', 'black'];
  List<int> colorValues = [0xffffffff, 0xff000000];
  Map<String, int> colorMap = Map.fromIterables(colorKeys, colorValues);
  print('colorMap $colorMap');

  // 集合常用操作符
  List<String> colorList = ['red', 'yellow', 'blue', 'green'];
  //forEach箭头函数遍历
  colorList.forEach((color) => {print(color)});
  colorList.forEach((color) => print(color)); //箭头函数遍历，如果箭头函数内部只有一个表达式可以省略大括号

  //map函数的使用
  print(colorList.map((color) => '$color_font').join(","));

  //every函数的使用，判断里面的元素是否都满足条件，返回值为true/false
  print(colorList.every((color) => color == 'red'));

  //sort函数的使用
  List<int> numbers = [0, 3, 1, 2, 7, 12, 2, 4];
  numbers.sort((num1, num2) => num1 - num2); //升序排序
  numbers.sort((num1, num2) => num2 - num1); //降序排序
  print(numbers);

  //where函数使用，相当于Kotlin中的filter操作符，返回符合条件元素的集合
  print(numbers.where((num) => num > 6));

  //firstWhere函数的使用，相当于Kotlin中的find操作符，返回符合条件的第一个元素，如果没找到返回null
  print(numbers.firstWhere((num) => num == 5,
      orElse: () => -1)); //注意: 如果没有找到，执行orElse代码块，可返回一个指定的默认值

  //singleWhere函数的使用，返回符合条件的第一个元素，如果没找到返回null，但是前提是集合中只有一个符合条件的元素, 否则就会抛出异常
  print(numbers.singleWhere((num) => num == 4,
      orElse: () => -1)); //注意: 如果没有找到，执行orElse代码块，可返回一个指定的默认值

  //take(n)、skip(n)函数的使用，take(n)表示取当前集合前n个元素, skip(n)表示跳过前n个元素，然后取剩余所有的元素
  print(numbers.take(5).skip(2));

  //List.from函数的使用，从给定集合中创建一个新的集合,相当于clone一个集合
  print(List.from(numbers));

  //expand函数的使用, 将集合一个元素扩展成多个元素或者将多个元素组成二维数组展开成平铺一个一位数组
  var pair = [
    [1, 2],
    [3, 4]
  ];
  print('flatten list: ${pair.expand((pair) => pair)}');

  var inputs = [1, 2, 3];
  print('duplicated list: ${inputs.expand((number) => [
        number,
        number,
        number
      ])}');
}
