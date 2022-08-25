void main() //main함수의 선언
{
  //정수Type
  int number1 =  1; // 정수형 변수 'number1'선언과 동시에 정수'1'값을 저장
  print(number1); //1

  int number2 = 2; //'number2'변수 선언, '2'저장
  print(number2); //2

  print(number1+number2);//3
  print(number1*number2);//2
  print(number1-number2);//-1
  print(number2-number1);//1

  //실수Type
  double number3 =  1.52; // 정수형 변수 'number1'선언과 동시에 정수'1'값을 저장
  print(number3); //1.52

  double number4 = 2.33; //'number2'변수 선언, '2'저장
  print(number4); //2.33

  print(number3+number4);//3.85
  print(number3*number4);//3.5416
  print(number3-number4);//-0.81
  print(number4-number3);//0.81

  //문자열
  String dart = 'dart'; //문자열 변수 'dart'선언과 동시에 문자열'dart'저장
  print(dart);//dart
  print(dart+' 공부중');//dart 공부중
  print(dart.toUpperCase());//DART
  print(dart.toLowerCase());//dart


  //Dynamic 변수
   Object dynamic; //변수 선언과 동시에 값을 할당하지 않음
   dynamic = 1; //'dynamic' 변수에 숫자 '1'을 저장
   print(dynamic);

   dynamic = '동적변수';
   print(dynamic);


  //참,거짓
  bool visible = true;
  print(visible); //true

  //리스트
  List <int>intlist = [];
  intlist.add(10);

  List list = []; //'List'선언, 값과 Type을 저장하지않아 동적 List로 생성됨
  list.add(1); // 값'1' 저장
  list.add('사람');//값'사람' 저장
  list.add(15); //값 '15'저장
  print(list);//[1,사람,15]

  //리스트 명령어: join
  print(list.join());//1사람15

  //리스트 명령어: indexOf
  print(list.indexOf(1));//0
  print(list.indexOf('사람'));//1
  print(list.indexOf(15));//2

  //리스트 명령어: forEach
  list.forEach((listmini) {
    print('$listmini!');
   });

  //리스트 명령어: where
  List<String> fruits = ['Apple','Banana','Kiwi'];
  print(fruits.where((fruit) => fruit.toLowerCase().indexOf('a')>=0));

  //리스트 명령어: map
  Iterable<String> newFruits = fruits.map((e) {
    return 'My name is ${e}';
  });
  print(newFruits);
  print(newFruits.toList());

  //리스트 명령어: fold
  List<int> numbers = [1, 2, 3, 4, 5];
    int result = numbers.fold(0, (previousValue, element) {
     int sum = previousValue+ element;
     return sum * 2;
   });
  print(result);

  //리스트 명령어: reduce
  int total = numbers.reduce((value, element) => value + element);
  print(total);

  //리스트 명령어: asMap
  List<int> number = [10, 20, 30, 40, 50];
  Iterable indexNumbers = number.asMap().entries.map((e) {
    return 'index: ${e.key} / value: ${e.value}';
  });
  print(indexNumbers);
  print(indexNumbers.toList());


  //고정 크기의 리스트 생성
  List listlimit = List.filled(3,''); // 저장공간이 3개인 List 선언
  listlimit[0] = 1; //1번 저장칸에 숫자 '1'저장
  listlimit[1] ='dart';//2번 저장칸에 문자열 'dart'저장
  listlimit[2] = '키위';//3번 저장칸에 문자열 '키위'저장
  print(listlimit);//[1,dart,키위]

  //맵
  Map<String,String> car = {'model': '아반떼', 'Color': '회색', 'price': '이천만원'};
  print(car); //{model: 아반떼, Color: 회색, price: 2000}
  print(car['model']);//아반떼

  car.remove('model');
  print(car);
  car['price'] = '천오백만원';
  print(car);

  //맵, entries의 사용
  Map<String, int> fruitCount = {
    'Apple': 3,
    'Banana': 4,
    'Kiwi': 10,
  };

  Iterable newFruitCount =
      fruitCount.entries.map((e) => '${e.key} is ${e.value}!');
  print(newFruitCount);
  print(newFruitCount.toList());

  //enum실행
  main2();
}

//Enum
enum Status {
  wait,
  approved,
  reject,
}

void main2() {
  Status currentStatus = Status.wait;
  print(currentStatus == Status.approved);
  print(Status.values.toList());
}