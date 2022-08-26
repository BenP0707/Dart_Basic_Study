//Dart Practice_03_Constant
void main() {
  //Final & Const를 사용한 상수선언
  final String firstName = 'Ben';
  const String lastName = 'Park';
  print(firstName);
  print(lastName);

  //상수로 선언된 변수는 변경 불가
  //firstName = 'Brian';

  //Final & Const의 차이점
  final DateTime now = DateTime.now();
  print(now);

}