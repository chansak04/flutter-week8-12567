import 'package:dart_week8/asynchronous.dart';
import 'package:dart_week8/boardcastStream.dart';
import 'package:dart_week8/future.dart';
import 'package:dart_week8/singleStream.dart';
import 'package:dart_week8/stream.dart';
import 'package:dart_week8/synchronous.dart';

void main(){
  CallboardcastStream();
  // CallsubscribeListen();
  // CallStream();
  // CallFuture();
  // callAsynchronous();
  // callSynchronous();
}

void CallboardcastStream(){
  boardcastStream();
}

void CallsubscribeListen(){
  subscribeListen();
}

void CallStream() async{
  await for (String data in getUserName2()){
  print(data);
  }
}

void CallFuture(){
  print("Start");
  getUserName().then((value) => print(value),);
  // getUserName().then((value)) => print(value));
  print("End");
}

void callAsynchronous(){
  asynchronous();
}

void callSynchronous(){
  synchronous();
}