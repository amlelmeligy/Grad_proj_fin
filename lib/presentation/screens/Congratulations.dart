import 'package:flutter/material.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: MaterialButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Container(
                  margin: EdgeInsets.all(50),
                  child: AlertDialog(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                    icon: Icon(
                      Icons.telegram_outlined,
                      size: 100,
                    ),
                    title: Text("Congratulations!"),
                    content: Text(
                        "your passward reset successfully , you will be directed to loginDoctor screen",
                        style: TextStyle(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 128, 126, 126))),
                    // actions: [
                    //   ElevatedButton(onPressed: () {}, child: Text('ok')),
                    //   ElevatedButton(onPressed: () {}, child: Text('no'))
                    // ],
                    backgroundColor: Color.fromARGB(255, 175, 195, 223),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                );
              },
            );
          },
          color: Colors.red,
          child: Text(
            "press",
            style: TextStyle(color: Colors.white),
          ),
      ),
    ),
        ));
  }
}


//create new pass


// import 'package:flutter/material.dart';
// import 'package:graduation/app/app_colors.dart';
// import 'package:graduation/presentation/screens/Forget_pass.dart';
// import 'package:graduation/presentation/screens/log_in.dart';
// import 'package:graduation/presentation/screens/on_boding3.dart';
// import 'package:graduation/presentation/screens/on_bording2.dart';
//
// class NewPassword extends StatefulWidget {
//   const NewPassword({super.key});
//
//   @override
//   State<NewPassword> createState() => _NewPassword();
// }
//
// class _NewPassword extends State<NewPassword> {
//   bool _obscureText = true;
//   bool rememberMe = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: InkWell(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (builder) => FORGET()));
//             },
//             child: Icon(
//               Icons.arrow_back_ios_new_sharp,
//               color: Colors.black,
//             )),title: Text("Forget password",style:
//       TextStyle(fontWeight: FontWeight.bold, fontSize: 20,fontFamily: "Outfit"),),centerTitle: true,
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.white),
//       ),
//       body: Column(mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 5.0),
//             child: Text(
//               "Create a New Password",
//               style:
//               TextStyle(fontWeight: FontWeight.bold, fontSize: 24,fontFamily: "Outfit"),
//             ),
//           ),
//
//           SizedBox(height: 15,),
//           Padding(
//               padding: const EdgeInsets.only(
//                   left: 15.0, right: 15.0, top: 15, bottom: 0),
//               child: TextFormField(
//                 obscureText: _obscureText,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25)),
//                   labelText: 'Write new password ',
//                   hintText: 'Enter secure password',
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _obscureText = !_obscureText;
//                       });
//                     },
//                     child: Icon(
//                       _obscureText
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                     ),
//                   ),
//                 ),
//                 // Other TextFormField properties go here
//               )
//             //validatePassword,        //Function to check validation
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Padding(
//               padding: const EdgeInsets.only(
//                   left: 15.0, right: 15.0, top: 15, bottom: 0),
//               child: TextFormField(
//                 obscureText: _obscureText,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25)),
//                   labelText: 'Confirm  password',
//                   hintText: 'Enter secure password',
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _obscureText = !_obscureText;
//                       });
//                     },
//                     child: Icon(
//                       _obscureText
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                     ),
//                   ),
//                 ),
//                 // Other TextFormField properties go here
//               )
//             //validatePassword,        //Function to check validation
//           ),SizedBox(height: 15,),
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0),
//             child: Row(
//               children: <Widget>[
//                 Checkbox(
//                   value: rememberMe,
//                   onChanged: (bool? value) {
//                     setState(() {
//                       rememberMe = value!;
//                     });
//                   },
//                 ),
//                 Text('Remember Me',style: TextStyle(fontSize: 14,color: AppColors.buttonColor,fontFamily: "Outfit"),),
//               ],
//             ),
//           ),SizedBox(height: 20,),
//           InkWell(
//             child:
//             Center(
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Color(0xff15596F),
//                     borderRadius: BorderRadius.circular(24)),
//                 width: 336,
//                 height: 46,
//                 alignment: Alignment.center,
//                 child: const Text("VerifyDoctor ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24,fontFamily: "Outfit")),
//               ),
//             ),
//
//           ),
//           // child: Container(
//           //   decoration: BoxDecoration(
//           //       color: Color(0xff15596F),
//           //       borderRadius: BorderRadius.circular(24)),
//           //   width: 386,
//           //   height: 46,
//           //   alignment: Alignment.center,
//           //   child: const Text("VerifyDoctor",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Outfit")),
//           // ),
//
//         ],
//       ),
//
//
//     );
//   }
// }


//تعديل
// import 'package:flutter/material.dart';
// import 'package:graduation/app/app_colors.dart';
// import 'package:graduation/presentation/screens/Forget_pass.dart';
// import 'package:graduation/presentation/screens/log_in.dart';
// import 'package:graduation/presentation/screens/on_boding3.dart';
// import 'package:graduation/presentation/screens/on_bording2.dart';
//
// class NewPassword extends StatefulWidget {
//   const NewPassword({super.key});
//
//   @override
//   State<NewPassword> createState() => _NewPassword();
// }
//
// class _NewPassword extends State<NewPassword> {
//   bool _obscureText = true;
//   bool rememberMe = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: InkWell(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (builder) => FORGET()));
//             },
//             child: Icon(
//               Icons.arrow_back_ios_new_sharp,
//               color: Colors.black,
//             )),title: Text("Forget password",style:
//       TextStyle(fontWeight: FontWeight.bold, fontSize: 20,fontFamily: "Outfit"),),centerTitle: true,
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.white),
//       ),
//       body: Column(mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 5.0),
//             child: Text(
//               "Create a New Password",
//               style:
//               TextStyle(fontWeight: FontWeight.bold, fontSize: 24,fontFamily: "Outfit"),
//             ),
//           ),
//
//           SizedBox(height: 15,),
//           Padding(
//               padding: const EdgeInsets.only(
//                   left: 15.0, right: 15.0, top: 15, bottom: 0),
//               child: TextFormField(
//                 obscureText: _obscureText,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25)),
//                   labelText: 'Write new password ',
//                   hintText: 'Enter secure password',
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _obscureText = !_obscureText;
//                       });
//                     },
//                     child: Icon(
//                       _obscureText
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                     ),
//                   ),
//                 ),
//                 // Other TextFormField properties go here
//               )
//             //validatePassword,        //Function to check validation
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Padding(
//               padding: const EdgeInsets.only(
//                   left: 15.0, right: 15.0, top: 15, bottom: 0),
//               child: TextFormField(
//                 obscureText: _obscureText,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25)),
//                   labelText: 'Confirm  password',
//                   hintText: 'Enter secure password',
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _obscureText = !_obscureText;
//                       });
//                     },
//                     child: Icon(
//                       _obscureText
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                     ),
//                   ),
//                 ),
//                 // Other TextFormField properties go here
//               )
//             //validatePassword,        //Function to check validation
//           ),SizedBox(height: 15,),
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0),
//             child: Row(
//               children: <Widget>[
//                 Checkbox(
//                   value: rememberMe,
//                   onChanged: (bool? value) {
//                     setState(() {
//                       rememberMe = value!;
//                     });
//                   },
//                 ),
//                 Text('Remember Me',style: TextStyle(fontSize: 14,color: AppColors.buttonColor,fontFamily: "Outfit"),),
//               ],
//             ),
//           ),SizedBox(height: 20,),
//           InkWell(
//             child: Center(child: Container(decoration: BoxDecoration(
//                 color: Color(0xff15596F),
//                 borderRadius: BorderRadius.circular(24)),
//               width: 386,
//               height: 46,
//               margin: EdgeInsets.symmetric(horizontal: 10),
//               child: MaterialButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) {
//                       return Container(
//                         margin: EdgeInsets.all(10),
//                         child: AlertDialog(
//                           contentPadding:
//                           EdgeInsets.symmetric(vertical: 50, horizontal: 30),
//                           icon: Padding(
//                             padding: const EdgeInsets.only(top: 15.0),
//                             child: Image.asset("assets/images/congratulation.png",width: 96.8,height: 92.56,),
//                           ),
//                           title: Text("Congratulations!",style: TextStyle(fontFamily: "Outfit",fontSize: 20)),
//                           content: Padding(
//                             padding: const EdgeInsets.only(bottom: 18.0),
//                             child: Text(
//                                 "your passward reset successfully , you will be directed to loginDoctor screen",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     color:  Color.fromARGB(250, 124, 125, 126))),
//                           ),
//                           // actions: [
//                           //   ElevatedButton(onPressed: () {}, child: Text('ok')),
//                           //   ElevatedButton(onPressed: () {}, child: Text('no'))
//                           // ],
//                           // backgroundColor: Color.fromARGB(255, 175, 195, 223),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(40)),
//                         ),
//                       );
//                     },
//                   );
//                 },
//
//                 child:  Text("VerifyDoctor",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Outfit")),
//               ),
//             ),
//               // child: Container(
//               //   decoration: BoxDecoration(
//               //       color: Color(0xff15596F),
//               //       borderRadius: BorderRadius.circular(24)),
//               //   width: 386,
//               //   height: 46,
//               //   alignment: Alignment.center,
//               //   child: const Text("VerifyDoctor",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Outfit")),
//               // ),
//             ),
//           ),
//         ],
//       ),
//
//
//     );
//   }
// }
