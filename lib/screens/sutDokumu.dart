import 'package:flutter/material.dart';


class SutDokumuPage extends StatefulWidget {
  const SutDokumuPage({super.key});

  @override
  State<SutDokumuPage> createState() => _SutDokumuPageState();
}

class _SutDokumuPageState extends State<SutDokumuPage> {
  Color mainColor = Color(0xFF232343);
  Color secColor=Color(0xFF353666);
  Color tileColor = Color(0xFF5355a2);
  Color boxColor = Color(0xFFBCBEDC);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            //app header
            Container(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/46.jpg"),
                  
                  ),
                  Text("Süt Dökümü",
                  style:
                   TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600
                    ) , ),
                 
                   
                    
                    IconButton(onPressed: (){}, icon:Icon(Icons.notifications,color: Colors.white,)
                    )
                   
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Container(
              child: Column(
                children: [
                      Text("Tahmini Günlük Süt ",
                  style:
                   TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600
                    ) , ),
                   
                       Text("  300 L ",
                  style:
                   TextStyle(
                    color: Colors.white,
                    fontSize: 45.0,
                    fontWeight: FontWeight.w600
                    ) , ),
                ],
              ),
            ),
          
            Expanded(child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top:26.0,left: 16.0,right: 16.0),
              decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
                topRight: Radius.circular(60.0),
              )
            ), child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Geçmiş Süt Dökümü",style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Expanded(child: 
                ListView(
                  children: [
                    ListTile(Icons.water_drop,Colors.white,"11.01.2024","Süt Litreleriniz ",13.66),
                   ListTile(Icons.water_drop,Colors.white,"11.01.2024","Süt Litreleriniz ",13.66),
                   ListTile(Icons.water_drop,Colors.white,"11.01.2024","Süt Litreleriniz ",13.66),
                   ListTile(Icons.water_drop,Colors.white,"11.01.2024","Süt Litreleriniz ",13.66),
                   ListTile(Icons.water_drop,Colors.white,"11.01.2024","Süt Litreleriniz ",13.66),
                   ListTile(Icons.water_drop,Colors.white,"11.01.2024","Süt Litreleriniz ",13.66),
                   ListTile(Icons.water_drop,Colors.white,"11.01.2024","Süt Litreleriniz ",13.66),
                   ListTile(Icons.water_drop,Colors.white,"11.01.2024","Süt Litreleriniz ",13.66),
                   ListTile(Icons.water_drop,Colors.white,"11.01.2024","Süt Litreleriniz ",13.66),
                   ListTile(Icons.water_drop,Colors.white,"11.01.2024","Süt Litreleriniz ",13.66),


                  ],
                ))
              ],
            ),
            )),
            
           ],
           
          ),
      ));
  }
}
Widget ListTile(
  IconData icon ,Color color, String type, String title,  double value){
 return Container(
  padding: EdgeInsets.all(8.0),
  margin: EdgeInsets.only(bottom: 16.0),
  decoration:  BoxDecoration(
    color: Color(0xFF5355a2),
    borderRadius: BorderRadius.circular(8.0),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 252, 252, 252),
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Icon(icon,
      size: 32.0,
      color:Colors.black,),
    ),
    SizedBox(
      width: 12.0,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(type,
          style:TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            ) ,),
            SizedBox(height: 2.0,),
              Text(title,
          style:TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
            ) ,),
       
        ],
      ),
    ),
    Text("$value L", style: TextStyle(color:  Colors.white, fontSize: 22.0,fontWeight:FontWeight.bold ),)
  ],
  ),
 );
   
  }
