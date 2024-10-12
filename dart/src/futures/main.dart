import 'dart:io';

void main(List<String> args) {
  print("Ji");
  get();
}

Future<void> get() async {
  sleep(Duration(seconds: 2));
  print("Hi i read it after 2 seconds");
}

// Some computation  happend in future.

// asynchronous programming allows to perform  concurrentlu proccess 
// without excution