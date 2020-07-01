//Futures
void main() async{
  print('estamos a punto de pedir datos');
  
  String data=await httpGet('http//api.nada.com/aliens');
  print(data);
  
  print('ultima linea');
}


Future<String> httpGet(String url){
  return Future.delayed(new Duration(seconds: 4), (){
    return 'Hola mundo';
  });
}

//Async son funciones asincronas
