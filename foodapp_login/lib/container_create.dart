import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget{
 final String title1;
 final String hint1;
 final String hint2;
 final String title2;
 final VoidCallback onPressed;

 const CustomWidget({super.key,
   required this.title1,
   required this.hint1,
   required this.hint2,
   required this.title2,
   required this.onPressed,
 });

 @override
   Widget build(BuildContext context) {
    return Container(
      height: 315,
      width: 300,
       padding:const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title1,
            style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
          ),

        const SizedBox(
         height: 15,
        ),
        Container(
         width: 500, 
         height: 40,
         child:  TextFormField(
          decoration: InputDecoration(
            hintText: hint1,
            hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
           border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
           ),
           ),
          ),
        ),
        
       const SizedBox(
         height: 15
        ),
        Container(
         width: 500, 
         height: 40,
         child:  TextFormField(
          decoration: InputDecoration(
            hintText: hint2,
            hintStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
           border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
           ),
           ),  
          ),
        ),

       const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
       ElevatedButton(
           onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple[800],
              minimumSize: const Size(500, 40),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                ),
          ),
            child: const Text(
              'Create Account',
              style:  TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
               
              Column(
                children: [               
                Container(
                  padding: const EdgeInsets.only(bottom:20),
                  decoration:const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 2.5,
                      )
                    )
                  ),
                ),

        const Padding(padding: EdgeInsets.symmetric(vertical:10,)),
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Text(title2,
             style: const TextStyle(fontSize: 15,color: Colors.black),
          ),
        
        const SizedBox(width: 10),
        TextButton(
         onPressed: () {},
         child: Text('Sign In',),
         style: ButtonStyle(
         fixedSize: MaterialStateProperty.all<Size>(
         const Size(70.0, 30),
        ),
         padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
         const EdgeInsets.only(right: 10, top: 9),
        ),
         textStyle: MaterialStateProperty.all<TextStyle>(
         const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        ),
       ),
      )
         
                ],
              ),
          ],
        ),
          ],
        ),
    );
   }
}

    


   
