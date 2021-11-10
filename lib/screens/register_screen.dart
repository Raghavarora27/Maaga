// import 'package:Foodybite/auth/auth_services.dart';
// import 'package:Foodybite/screens/login_screen/login_screen.dart';
// import 'package:Foodybite/screens/navigation_screen/navigation_screen.dart';
// import 'package:Foodybite/widgets/big_blue_button.dart';
// import 'package:Foodybite/widgets/text_button.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class RegisterScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController nameController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final authService = Provider.of<AuthService>(context);
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: SingleChildScrollView(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/Register.png'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Container(
//             height: MediaQuery.of(context).size.height,
//             decoration: BoxDecoration(
//               color: Colors.black54,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Padding(
//                     padding: const EdgeInsets.only(top: 40.0),
//                     child: Text(
//                       'Create Account',
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         color: Colors.white,
//                       ),
//                     )),
//                 SizedBox(
//                   height: 30.0,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                   child: TextField(
//                     controller: nameController,
//                     style: TextStyle(color: Colors.white),
//                     decoration: InputDecoration(
//                       enabledBorder: const OutlineInputBorder(
//                         borderSide: const BorderSide(
//                             color: Colors.lightBlueAccent, width: 0.0),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                             color: Colors.lightBlueAccent, width: 0.0),
//                       ),
//                       prefixIcon: Icon(
//                         Icons.supervised_user_circle_outlined,
//                         color: Colors.white,
//                       ),
//                       hintText: 'Name',
//                       hintStyle: TextStyle(
//                         color: Colors.white,
//                       ),
//                       fillColor: Colors.white,
//                       focusColor: Colors.white,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                   child: TextField(
//                     controller: emailController,
//                     style: TextStyle(color: Colors.white),
//                     decoration: InputDecoration(
//                       enabledBorder: const OutlineInputBorder(
//                         borderSide: const BorderSide(
//                             color: Colors.lightBlueAccent, width: 0.0),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.lightBlueAccent, width: 0.0),
//                       ),
//                       prefixIcon: Icon(
//                         Icons.mail,
//                         color: Colors.white,
//                       ),
//                       hintText: 'Email',
//                       hintStyle: TextStyle(
//                         color: Colors.white,
//                       ),
//                       fillColor: Colors.white,
//                       focusColor: Colors.white,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                   child: TextField(
//                     obscureText: true,
//                     controller: passwordController,
//                     style: TextStyle(color: Colors.white),
//                     decoration: InputDecoration(
//                       enabledBorder: const OutlineInputBorder(
//                         borderSide: const BorderSide(
//                             color: Colors.lightBlueAccent, width: 0.0),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.lightBlueAccent, width: 0.0),
//                       ),
//                       prefixIcon: Icon(
//                         Icons.lock,
//                         color: Colors.white,
//                       ),
//                       hintText: 'Password',
//                       hintStyle: TextStyle(
//                         color: Colors.white,
//                       ),
//                       fillColor: Colors.white,
//                       focusColor: Colors.white,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Container(
//                   width: MediaQuery.of(context).size.width * .6,
//                   child: BigBlueButton(
//                     title: 'Register',
//                     onPress: () async {
//                       final user =
//                           await authService.createUserWithEmailAndPassword(
//                               emailController.text, passwordController.text);
//                       Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => BottomNavigation()));
//                     },
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Already have an account?',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                       ),
//                     ),
//                     SizedBox(width: 5,),
//                     TextSimpleButton(
//                       title: 'Login',
//                       colors: Colors.blue,
//                       onPress: () {
//                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
//                       },
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class CircleIconButton extends StatelessWidget {
//   const CircleIconButton({
//     Key key,
//     this.icon,
//     this.onPress,
//   }) : super(key: key);
//   final Icon icon;
//   final Function onPress;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 35,
//       height: 35,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         shape: BoxShape.circle,
//         border: Border.all(
//           color: Colors.white,
//         ),
//       ),
//       child: IconButton(
//         icon: icon,
//         onPressed: () {
//           onPress();
//         },
//       ),
//     );
//   }
// }