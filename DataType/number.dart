main() {
  num number = 10;
  double pi = 3.1415926;
  int width = 300;
  int height = 200;

  print(width / height); // 如果个int相除返回double
  print(width / 3);
  print(width ~/ height); //

  // 数值型方法
  print(pi.toStringAsFixed(3)); //3.142 保留有效数字
  print(6.6.floor()); //6向下取整
  print((-6.6).ceil()); //-6 向上取整
  print(9.9.ceil()); //10 向上取整
  print(666.6.round()); //667 四舍五入
  print((-666.6).abs()); // 666.6 取绝对值
  print(666.6.toInt()); //666 转化成int,这中toInt、toDouble和Kotlin类似
  print(999.isEven); //false 是否是偶数
  print(999.isOdd); //true 是否是奇数
  print(666.6.toString()); //666.6 转化成字符串
}
