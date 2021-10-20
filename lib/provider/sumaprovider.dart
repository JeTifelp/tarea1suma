import 'dart:convert';

import 'package:http/http.dart' as http;

class sumaProvider{
  String?  valor1;
  String? valor2;
   int? sumatotal;
    int suma=0;


 sumaProvider(){
   this.valor1='0';
   this.valor2='0';
   sumatotal=0;
   
 } 


suma2numeros( String v1,  String v2) async{
     
  final url2="http://192.168.0.14:3000/api/users/";
  var response= await http.post(Uri.parse(url2),body: {
          "valor1": v1,
          "valor2": v2
          } );
      //sumatotal=0;
      var data= jsonDecode( response.body);
      
    //   print(data);
       
      
    if(response.statusCode== 200){
      print(' _______valor1 y valor2 enviados exitosamente______');
      
    }   
 suma = int.parse(data['sum']);
      //su=suma;
      //print('la su total es: $su');
      print('la suma total es: $suma');
 }


 int? getSumatotal(){  

   return sumatotal;

 } 




 getDataUser() async {//192.168.0.18192.168.0.18
  http.Response respuesta =  await http.get(Uri.parse('http://192.168.0.14:3000/api/users/'));
  String json=  respuesta.body;
  print('________ json ___');
  print(json);
  
}

}//fin class