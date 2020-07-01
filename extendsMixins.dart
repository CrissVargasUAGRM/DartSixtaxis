//extends herencia de clases
void main(){
  final superman=new Heroe();
  superman.nombre='Clark kent';
  
  final lexLuthor=new Villano();
  lexLuthor.nombre='Luthor';
  
  print(superman.nombre + ' vs ' + lexLuthor.nombre);
  
  
  //Mixins
  final paloma = new Paloma();
  paloma.volar();
  
  final pezVolador = new PezVolador();
  pezVolador.nadar();
}
​
abstract class Personaje{
  String nombre;
  String poder;
}
​
class Heroe extends Personaje{
  int valetia;  
}
​
class Villano extends Personaje{
  int maldad;
}
​
//Mixins
abstract class Animal{
  
}
​
abstract class Mamiferos extends Animal{
  
}
​
abstract class Ave extends Animal{
  
}
​
abstract class Pez extends Animal{
  
}
​
abstract class Volador{
  void volar()=>print('estoy volando');
}
​
abstract class Nadador{
  void nadar()=>print('estoy nadando');
}
​
abstract class Caminador{
  void caminar()=>print('estoy caminando');
}
​
class Delphin extends Mamiferos with Nadador{
  
}
​
class Murcielago extends Mamiferos with Caminador,Volador{
  
}
​
class Gato extends Mamiferos with Caminador{
  
}
​
class Paloma extends Ave with Caminador, Volador, Nadador{
  
}
​
class Tiburon extends Pez with Nadador{
  
}
​
class PezVolador extends Pez with Nadador,Volador{
  
}