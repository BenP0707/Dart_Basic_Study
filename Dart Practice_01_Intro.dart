void main() // Dart의 특징1, 모든것들을 Object취급
            //Dart의 특징3, Type언어지만 자유도 존재.
{
  var example1 = 1;  //특징3, var: type을 설정하지 않아도 dart에서 알아서 variable의 type추측. 다른 Type대입 불가능
  var example2 = "text";
  var example3 = [1,2,3,4];
  var example4 = ['cat','dog','whale'];
  var example5 = {
    2:'helium',
    10:'neon',
    18:'argon'};
  print(example1);
  print(example2);
  print(example3);
  print(example4);
  print(example5[2]);
  print(example5[10]);
  print(example5[18]);

  main2();

  var car = Car();
  print(car._number);//Private 변수를 class밖에서도 접근이 가능하다.
}

class Car // 예시용 'Car'클래스 제작
{
  String model = 'Avante';
  String _number = 'register'; //Public, private, protected의 개념이 없고, _function()으로 정의된다.

}

void main2()  //Dart의 특징2, List<dynamic>과 같은 제너릭 type 지원
{
  List<dynamic> list = [1,2,"3",4,true]; //모두 Object취급하기 때문에 해당형식이 가능하다. 
  print(list);
}
