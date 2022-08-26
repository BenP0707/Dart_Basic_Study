//Dart Practice_04_Operator
void main() {
  double num1 = 4; //실수 표현을 위해 double로 선언
  double num2 = 8;

  //산술연산자
  print(num1 + 2); //덧셈
  print(num1 - 2); //뺄셈
  print(num1 * 2); //곱셈
  print(num1 / 2); //나눗셈
  print(num1 % 3); //나눈 뒤 나머지
  print(num1++); //후위증가연산자 num+1
  print(num1--); //후위감소연산자 num-1
  print(++num1); //전위증가연산자 num+1
  print(--num1); //전위감소연산자 num-1
  print('-------------');
  print('num1=${num1}');
  print('-------------');
  print(num1 += 1); //num1 = num1 + 1
  print(num1 -= 1); //num1 = num1 - 1
  print(num1 *= 1); //num1 = num1 * 1
  print(num1 /= 2); //num1 = num1 / 2
  print(num1 %= 3); //num1 = num1 % 3

  //비교연산자 결과값은 Boolean으로 표시
  print(num1 > num2); // 초과
  print(num1 < num2); // 미만
  print(num1 >= num2);//이상
  print(num1 <= num2);//이하
  print(num1 == num2);//같다
  print(num1 != num2);//다르다
  print('-------------');

  //타입 비교 연산자, 결과값은 Boolean
  print(num is double);
  print(num is String);
  print(num is List);

  print(num is! int);
  print(num is! String);
  print(num is! List);
  print('-------------');

  //논리 연산자
  print(true && true); //AND, true
  print(true && false); //AND, False
  print(false && true); //AND, False
  print(false && false);//AND, False
  print(true || true);  //OR, True
  print(true || false); //OR, True
  print(false || true); //OR, True
  print(false || false);//OR, False

  //Null-aware Operator
  var name = null;
  name ??= 'Yakuza';
  print(name);

  name ??= 'Dev';
  print(name);

}