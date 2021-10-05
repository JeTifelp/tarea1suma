import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
final _text1= TextEditingController();
final _text2= TextEditingController();
  int _suma = 0;



 sumar(int a, int b){
   _suma = a + b;
//print('aqui la suma');

}
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
    
        title: Text("Suma"),
      ),
      body: Center(
    
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _text1,
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.input),
                
                border: OutlineInputBorder(),
                labelText: 'numero1'
              ),
            ),
            SizedBox(
                        height: 20,
                      ),


            TextField(
              controller: _text2,
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.input),
                
                border: OutlineInputBorder(),
                labelText: 'numero2'
              ),
            ),
            SizedBox(
                        height: 20,
                      ),
            Text(
              'Suma Total: '+'$_suma',
              style: Theme.of(context).textTheme.headline4,
            ),
            
            //FlatButton(onPressed: (){}, child: Text('Sumar')),
            IconButton(
            onPressed:(){sumar(int.parse(_text1.text),int.parse(_text2.text));
                      setState(() {
                
                        _suma;
                      });  
                      //_suma=0;   
                      _text1.clear();
                      _text2.clear();  
                      //_suma=0;      
            } , 
            icon: Icon(Icons.add_box)
            )
          ],

        

        
        ),
        
      ),
      
    );
    
    
  }
}
