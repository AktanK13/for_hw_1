import 'dart:io';

void main() {
// 1) Возьмем, например, два списка:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
// и напишите программу, которая возвращает список, содержащий только общие для них элементы (без дубликатов). Убедитесь, что ваша программа работает с двумя списками разного размера.
// Ответ: [1, 2, 3, 5, 8, 13]

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> result = [];

  for (var i = 0; i < a.length; i++) {
    if (b.contains(a[i])) {
      result.add(a[i]);
    }
  }
  result = result.toSet().toList();
  print(result);

//   2) Допустим, вам дан список, сохраненный в переменной:
// а = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
// Напишите код Dart, который берет этот список и создает новый список, в котором есть только четные элементы этого списка.
// Ответ = [4, 16, 36, 64, 100];

  List<int> c = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  result.clear();
  for (var i = 0; i < c.length; i++) {
    if (c[i].isEven) {
      result.add(c[i]);
    }
  }
  print(result);

// 3) Создайте функцию, которая принимает две строки в качестве аргументов и возвращает, сколько раз первая строка (один символ) была найдена во второй строке.
// Пример:
// вожу "a" и "dart" ➞ результат = 1

  print(func('a', 'asdfasdgasd asvav'));

  // 1. Составьте программу, выводящую на экран квадраты чисел от 10 до 20.
  result.clear();
  for (var i = 10; i <= 20; i++) {
    result.add(i * i);
  }
  print(result);

  // 2. Составьте программу, котораЯ вычисляет сумму чисел от 1 до n.значение n вводится с клавиатуры.
  // print('ввeдитe значение:');
  // int n = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  // int count = 0;
  // for (var i = 1; i <= n; i++) {
  //   count += i;
  // }
  // print(count);

  // 3. В сберкассу на трёхпроцентный вклад положили S рублей.Какой станет сумма вклада через N лет.(Данные вводятся с клавиатуры)
  // print('Введите сумму вклада (в рублях): ');
  // double s = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  // print('Введите количество лет: ');
  // int nTwo = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  // double interestRate = 0.03;
  // double resultTwo = calculateDeposit(s, interestRate, nTwo);
  // print('Сумма вклада через $nTwo лет: $resultTwo рублей');

  // 4. Даны натуральные числа от 20 до 50.Напечатать те из них, которые делятся на 3, но не делятся на 5.
  result.clear();
  for (var i = 20; i <= 50; i++) {
    if (i % 3 == 0 && i % 5 != 0) {
      result.add(i);
    }
  }
  print(result);

  // 7. Даны натуральные числа от 1 до 50. Найти сумму тех из них, которые делятся на 5 или на 7.
  int sum = 0;
  for (var i = 1; i <= 50; i++) {
    if (i % 5 == 0 || i % 7 == 0) {
      sum += i;
    }
  }
  print('Сумма чисел: $sum');

  // 8. Напечатать те из двузначных чисел которые делятся на 4, но не делятся на 6.
  result.clear();
  for (var i = 10; i < 100; i++) {
    if (i % 4 == 0 && i % 6 != 0) {
      result.add(i);
    }
  }
  print(result);



// 9. Найти сумму чисел от 100 до 200 кратных 17.
  int sumTwo = 0;

  for (var i = 100; i <= 200; i++) {
    if (i % 17 == 0) {
      sumTwo += i;
    }
  }

  print('Сумма чисел: $sumTwo');

  // 10. Составьте программу, которая вычисляет сумму квадратов чисел от 1 до введенного вами целого числа N
  print('Введите целое число N: ');
  int n = int.tryParse(stdin.readLineSync()??'')??0;
  int sumOfSquares = calculateSumOfSquares(n);
  print('Сумма квадратов чисел от 1 до $n: $sumOfSquares');
  
}

int func(String letter, String word) {
  int count = 0;
  for (var i = 0; i < word.length; i++) {
    if (word[i].toLowerCase() == letter.toLowerCase()) {
      count++;
    }
  }
  return count;
}

double calculateDeposit(double principal, double rate, int years) {
  double result = principal * (1 + rate * years);
  return result;
}


int calculateSumOfSquares(int n) {
  int sum = 0;

  for (int i = 1; i <= n; i++) {
    sum += i * i;
  }

  return sum;
}