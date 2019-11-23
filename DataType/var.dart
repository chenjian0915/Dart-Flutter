// 如果var声明的变量开始不初始化，不仅值可以改变它的类型也是可以被修改的，但是一旦开始初始化赋值后，它的类型就确定了，后续不能被改变。
main() {
  var color; // 仅有声明未赋值的时候，这里的color的类型是dynamic,所以它的类型是可以变的
  color = 'red';
  var num = 2;
  // num = 'aaa';  错误

  print(color);

  // 在dart中声明常量可以使用const或final 两个关键字，注意: 这两者的区别在于如果常量是编译期就能初始化的就用const(有点类似Kotlin中的const val)
  // 如果常量是运行时期初始化的就用final(有点类似Kotlin中的val)
  const PI = 3.141592653; //const定义常量
  final nowTime = DateTime.now(); //final定义常量
  print(PI);
  print(nowTime);
}
