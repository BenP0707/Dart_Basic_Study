// Dart Practice_05_Statements
void main()
{
    //if문
    int num1 = 19;

    if(num1%2==0)
    {
        print('2');
    }
    else if(num1%3==0)
    {
        print('3');
    }
    else
    {
        print('no');
    }

    //Switch문
    int num2 = 19;
    switch(num2%2)
    {
      case 0:
       print('${2}!');
       break;
      case 1:
        print('${1}!');
        break;
      default:
        print('No!!');
        break;

    }

    //for 문
    for(int i=0; i<10; i++)
    {
      print(i);
    }

    List<int> num = [1,4,5,10];
    int total =0;
    for(int i=0; i<num.length; i++)
    {
      total = total + num[i];
    }
    print(total);

    total =0;
    for(int number in num)
    {
      total += number;
    }
    print(total);

    for(int i=0; i<10; i++)
    {
      if(i==5)
      {
        print('break!i=${i}');
        break;
      }
    }

    for(int i=0; i<10; i++)
    {
      if(i==5)
      {
        print('Continue i=${i}');
        continue;
      }
    }

    //While문
    int i=0;
    while(i<10)
    {
      i+= i;
      i++;
    }
    print(i);

    i=0;
    do
    {
      i++;
    }while(i==10);
    print(i);

    i=0;
    while(true)
    {
      i++;
      if(i==5)
      {
        print('BREAK!');
        break;
      }
    }
    print('-------------------');

    for( i = 1 ; i < 20 ; i++ )
	{
		if( i % 2 != 0 ) //나머지가 0이 아닌경우 continue, 나머지가 0인경우 print
			continue; //Continue = 실행되면 continue 아래의 실행문은 모두 무시하고 실행문1(여기서는 반복문)으로 돌아간다.
		print(i);
	}

}