import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  var result="";
  var answer="";
Widget btn(var textt){
  return Container(
    margin: EdgeInsets.all(5),
    child: ElevatedButton(
      
      style:  ButtonStyle(
       backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed))
          return Color(0xffD7802E);
        return Color(0xff191919); // Use the component's default.
      },
    ),
         padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(19),),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.black)
      )
    )
),
      onPressed: (){ setState(() {
        result= result+textt;
      }); }, child: Text(textt ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal,color: Colors.white70),  ), ),
  );
}


// del(){
//   setState(() {
//       result = result.substring(0, result.length - 1); });
// }



clearr(){
  setState(() {
    result="";
    answer="";
  });
}
output()
{
  Parser p= Parser();
  Expression exp = p.parse(result);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL,cm);
setState(() {
  answer= eval.toString();
});
}

   


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.black,
        
        child: Column(
          children: [
Container( 
  height: 300,
  padding: EdgeInsets.all(30),
  alignment: Alignment.bottomRight,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
       Text(answer ,textAlign: TextAlign.right ,style: TextStyle(fontSize: 40, fontWeight: FontWeight.normal,color: Colors.white70),),
      Text(result ,textAlign: TextAlign.right ,style: TextStyle(fontSize: 50, fontWeight: FontWeight.normal,color: Colors.white),),
    ],
  )
  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
             
Container(
    margin: EdgeInsets.all(5),
    child: ElevatedButton(
      
      style:  ButtonStyle(
       backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed))
          return Color(0xffD7802E);
        return Color(0xff191919); // Use the component's default.
      },
    ),
         padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(19),),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.black)
      )
    )
),
      onPressed: clearr , child: Text("AC" ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal,color: Colors.white70),  ), ),
  ),


//                 Container(
//     margin: EdgeInsets.all(5),
//     child: ElevatedButton(
      
//       style:  ButtonStyle(
//        backgroundColor: MaterialStateProperty.resolveWith<Color>(
//       (Set<MaterialState> states) {
//         if (states.contains(MaterialState.pressed))
//           return Color(0xffD7802E);
//         return Color(0xff191919); // Use the component's default.
//       },
//     ),
//          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(19),),
//     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//       RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//         side: BorderSide(color: Colors.black)
//       )
//     )
// ),
//       onPressed: del , child: Text("C" ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal,color: Colors.white70),  ), ),
//   ),

                btn("("),
                btn(")"),
                btn("%"),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                btn("7"),
                btn("8"),
                btn("9"),
                btn("*"),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                btn("4"),
                btn("5"),
                btn("6"),
                btn("-"),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                btn("1"),
                btn("2"),
                btn("3"),
                btn("+"),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                btn("."),
                btn("0"),
                btn("/"),
               Container(
    margin: EdgeInsets.all(5),
    child: ElevatedButton(
      
      style:  ButtonStyle(
       backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed))
          return Color(0xffD7802E);
        return Color(0xffD7802E); // Use the component's default.
      },
    ),
         padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(19),),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.black)
      )
    )
),
      onPressed: output , child: Text("=" ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal,color: Colors.white70),  ), ),
  ),
              ],
            )
          ],
        ),
      )
    );
  }
}



