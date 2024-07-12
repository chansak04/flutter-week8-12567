import 'dart:async';

Stream<int> createNumber(int count) async*{
 for (int i = 1; i <= count; i++) {
  if(i == 4){
    throw Exception("4 number");
    }
    yield i;  
  }
}

void subscribeListen(){
  Stream stream = createNumber(5);
  final subscribetion = stream.listen(null);
  subscribetion.onData((x)=> print("number $x"));
  subscribetion.onError((err)=>print("error:$err"));
  subscribetion.onDone(()=>print("Done"));
  // Stream stream = createNumber(5);
  // stream.listen(
  //   (x) => print("Number: $x"),
  //   onError: (err)=>print("error:$err"),
  //   onDone: ()=>print("Done")
  //   );
}