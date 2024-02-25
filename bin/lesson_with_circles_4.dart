import 'dart:io';
import 'dart:math';

void main() {
  print('Задание 1.');
//Напишите код с циклом while, который выведет на экран список языков с нумерацией.
//   ['go', ‘java', ‘dart’, ‘sql’,  'php', 'python', 'javascript', 'ruby'];
//пример:
//  0 go
//  1 java
//  2 php
//  3 python
//  4 javascript
//  5 ruby

  List<String> language = [
    'go',
    'java',
    'dart',
    'sql',
    'php',
    'python',
    'javascript',
    'ruby'
  ];
  int i = 0;
  while (language.length > i) {
    print('$i ${language[i]}');
    i++;
  }

  print('\n Задание 2.');
  //c помощью цикла do while нужно перебрать все языки в списке, и когда код
  //доходит до “python”, цикл должен быть прерван.['go', ‘java', ‘dart’, ‘sql’,
  //'php', 'python', 'javascript', 'ruby'];

  List<String> lan = [
    'go',
    'java',
    'dart',
    'sql',
    'php',
    'python',
    'javascript',
    'ruby'
  ];
  dynamic ii = 0;
  do {
    print(lan[ii]);
    ii++;
  } while (lan[ii] != 'python');

  print('\n Задание 3.');
//У вас есть список имён. <используйте цикл do while>:
  //    names = ('Максат','Лязат','Данияр','Айбек','Атай','Салават','Адинай','Жоомарт','Алымбек','Эрмек','Дастан','Бекмамат','Аслан',)
  //    Выведите на экран всё имена которые лежат на чётных числах
  List names = [
    'Максат',
    'Лязат',
    'Данияр',
    'Айбек',
    'Атай',
    'Салават',
    'Адинай',
    'Жоомарт',
    'Алымбек',
    'Эрмек',
    'Дастан',
    'Бекмамат',
    'Аслан',
  ];
  int j = 0;
  do {
    j++;
    if (j.isEven) {
      print(names[j]);
    }
  } while (j < names.length);

  print('\n Задание 4.');

//У вас всё тот же список имён. используйте цикл  while:
//names = (Максат, Лязат,Данияр,Айбек,Атай,Салават,Адинай,Жоомарт,Алымбек,
//Эрмек,Дастан,Бекмамат,Аслан) Выведите каждое 2 имя.
  List namess = [
    'Максат',
    'Лязат',
    'Данияр',
    'Айбек',
    'Атай',
    'Салават',
    'Адинай',
    'Жоомарт',
    'Алымбек',
    'Эрмек',
    'Дастан',
    'Бекмамат',
    'Аслан',
  ];
  int jj = 0;
  while (jj < namess.length) {
    print(namess[jj]);
    jj += 2;
  }
  print('\n Задание 5.');
  //Список: [Мавпродош, Лорнектиф, Древерол, Фиригарпиг, Клодобродыч]
  //Ваша задача такова: повторите код, который будет спрашивать у пользователя
  //его ник и либо пускать  (выведется сообщение «Ты – свой. Приветствую,
  //любезный {НИК_ПОСЕТИТЕЛЯ}!»),либо нет (в этом случае будет такой текст:
  //«Тут ничего нет. Еще есть вопросы?»).
  print('Задачу не понял! \n');

  print('Задание 6.');
//Сформировать из введенного числа обратное по порядку входящих в него цифр и
//вывести на экран. Например, если введено число 3486, то надо вывести число 6843.
  print('ВВедите число:');

  int reverseNum(int num) {
    int reversed = 0;
    while (num != 0) {
      int digit = num % 10;
      reversed = reversed * 10 + digit;
      num = num ~/ 10;
    }
    return reversed;
  }

  int num = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  int reversedNum = reverseNum(num);
  print('Обратное число - $reversedNum');

//Вам дан массив чисел [1, 2, 3, 4, 5] и вам нужно удвоить каждое число в этом
//массиве. Должно запринтить [2, 4, 6, 8, 10] «используйте map()»
  print('\n Задание 7.');
  List arrays = [1, 2, 3, 4, 5];
  var newArrays = arrays.map((array) => array * 2);
  print(
      'Задданный массив чисел - $arrays \nУдвоенный массив чисел - $newArrays \n');

  print('Задание 8.');
  //У вас есть массив ['apple', 'banana', 'orange', ‘strawberry’] создайте циклк
  //Map() и выведите длину каждого слово в массиве. Должно вывести  [5, 6, 6, 10]

  List fruites = ['apple', 'banana', 'orange', 'strawberry'];
  var fruitesLength = fruites.map((e) => e.length);
  print(fruitesLength);

  print('\n Задание 9.');
//Напишите программу, которая генерирует случайные числа от 1 до 10 до тех пор,
//пока не будет сгенерировано число, равное 7.

  int intValue = 0;
  do {
    int intValue = Random().nextInt(10) + 1;
    print(intValue);
  } while (intValue != 7);

  print('Было сгенерировано число 7!');
}
