import 'dart:io';

void main() {
  performTasks();
}

/*
Future<void> performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result = '';

  //synchronous method
  //sleep(threeSeconds);

  //asynchronous method
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}
*/

void task1() {
  String result = 'task 1 complete';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  //1 (other following functions will wait till it's finished)
  /*sleep(threeSeconds);
  String result = 'task 2 complete';
  print('Task 2 complete');*/

  //2 (allows other following functions to start before it's finished)
  /*Future.delayed(threeSeconds, () {
    String result = 'task 2 complete';
    print('Task 2 complete');
  });*/

  //3
  late String result;

  await Future.delayed(threeSeconds, () {
    result = 'task 2 complete';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task 3 complete';
  print('Task 3 complete with $task2Data');
}
//3
/*void performTasks() {
  task1();
  String task2Result = task2();
  task3(task2Result);
}*/
Future<void> performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}
