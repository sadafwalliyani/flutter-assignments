import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget iconbuttonWidget(iconns){
  return(

    Container(      
      height: 60,
      width: 59,          
      decoration: new BoxDecoration(
              color: Color(0xff242042),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
  child: IconButton(onPressed: (){}, icon: 
  ImageIcon(iconns,
   size:50,)
        

  ))
  );
}


// Widget iconbuttonWidget(iconn) {
//   return
//   ElevatedButton.icon(
//   onPressed: () {},  
//    icon:
//    ImageIcon(iconn,
//    size:50,
//    ),
            
      
//   label: Text(""),
//   style: ElevatedButton.styleFrom(
//         primary: Color(0xff242042),
//         fixedSize:Size(59, 60),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(7),
          
//         ),
//   ));



// }

