import 'dart:convert';

void main(){
  //print('hola mundo');
  
  //print('hola Cristhian');
  
  /*var nombre='Karen';
  print('Hola $nombre'); 
  */
  
  /*int empleados=21;
  double pi=3.1416;
  var numero=1;
  print('$empleados - $pi - $numero');
  
  String nombre='Cristhian';
  print(nombre);
  print(nombre[0]);
  print(nombre[nombre.length -1]);
  */
  
  /*bool activado=true;
  print(activado);
  
  if(activado==true){
    print('El motor esta funcionando');
  }else{
    print('El motor esta apagado');
  }
  */
  
  /*List<int> numeros=[1,2,3,4,5,6];
  print(numeros);
  numeros.add(7);
  print(numeros);
  numeros.add(8);
  print(numeros);
  
  List maxNumeros=List(10);
  print(maxNumeros);
  maxNumeros[0]=1;
  print(maxNumeros);
  */
  
  /*Map<String, dynamic> persona={
    'nombre': 'Cristhian',
    'edad': 25,
    'estado': true,
  };
  print(persona['nombre']);
  print(persona['edad']);
  if(persona['estado']==true){
     print('El esta soltero.');
  }else{
    print('el esta casado.');
  }
  print(persona);
  */

  
  //llamadas a las funciones
  String mensaje=saludar2(texto: 'Hola',nombre: 'Cristhian');
  print(mensaje);
  
  //uso de las clases
  final wolverine=new Heroe(nombre: 'Logan',poder: 'regeneracion');
  print(wolverine);
  
  //constructores con nombre
  //final wolverines=new Heroes('Logan', 'regeneracion');
  final rawJson='{"nombres": "Logan", "poderes": "regeneracion"}';
  final parsedJson = json.decode(rawJson);
  print(parsedJson);
  
  final wolveriness=new Heroes.fromJson(parsedJson);
  
  //print(wolverines.nombres);
  //print(wolverines.poderes);
  
  //getters and setters
  final cuadrado=new Cuadrado();
  cuadrado.lado=10;
  print('area: ${cuadrado.area}');
  
}

  //clase para practicar getters and setters
  class Cuadrado{
    //poniendo _ hacemos que los atributos sean privados
    double _lado;
    //double _area;
    
    set lado(double valor){
      if(valor<=0){
        throw('El lado no puede ser menor a 0');
      }
      _lado=valor;
    }
  
    double get area=> _lado*_lado;
    
    String toSting()=>'Lado: $_lado';
  }

  //segunda clase que usamos para los constructores con nombre
  class Heroes{
    String nombres;
    String poderes;
    
    Heroes(this.nombres, this.poderes);
    
    Heroes.fromJson(parseJson){
      nombres=parseJson['nombre'];
      poderes=parseJson['poderes'];
    }
  }  

  //clases en dart
  class Heroe{
    String nombre;
    String poder;
    
    /*Heroe({String nombre, String poder}){
      this.nombre=nombre;
      this.poder=poder;
    }*/
    
    Heroe({this.nombre, this.poder});
    
    String toString(){
      return '${this.nombre } - ${this.poder}';
    }
  }

  //Funciones
  String saludar({String texto, String nombre}){
    return '$texto $nombre';
  }

  String saludar2({String texto, String nombre})=> '$texto $nombre';