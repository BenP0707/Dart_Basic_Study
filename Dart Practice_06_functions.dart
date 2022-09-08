// Dart Practice_06_Functions
void main() {
  var sum = add(1, 1); //add 함수 불러와서 사용
  print('$sum');

  var sum2 = optionAdd(1, 1, 1); //optionadd 불러와서 사용
  print('$sum2');

  var sum3 = NameAdd(1, 1, c: 3, d: 2);
  print('$sum3');

  Operator op = add;
  print(op(1, 2));

  op = substract;
  print(op(2, 1));

  print(calculate(2, 1, add));
  print(calculate(2, 1, substract));
}

int add(int a, int b) {
  int sum = a + b;
  return sum;
}

int optionAdd(int a, int b, [int c = 1]) {
  int sum = a + b + c;
  return sum;
}

int NameAdd(int a, int b, {int c = 0, int d = 0}) {
  //{}괄호 안에 선언한 파라메터는 Named parameter가 된다.
  int sum = a + b + c + d;
  return sum;
}

typedef Operator(int n, int m);

int substract(int c, int d) {
  int sub = c - d;
  return sub;
}

int calculate(int x, int y, Operator op) {
  return op(x, y);
}
