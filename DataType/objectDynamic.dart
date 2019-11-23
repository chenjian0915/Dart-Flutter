main() {
  Object color = 'black';
  color = 0xff000000; //运行正常，0xff000000类型是int, int也继承于Object
  dynamic color1 = 'black';
  color1 = 0xff000000; //运行正常，0xff000000类型是int, int也继承于Object
}
