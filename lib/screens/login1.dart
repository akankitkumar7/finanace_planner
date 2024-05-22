import 'package:finplan/screens/logine.dart';
import 'package:finplan/screens/sign_in.dart';
import 'package:flutter/material.dart';
class Login1Screen extends StatefulWidget {
  const Login1Screen({super.key});

  @override
  State<Login1Screen> createState() => _Login1ScreenState();
}

class _Login1ScreenState extends State<Login1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Opacity(opacity: 1,
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: const Color.fromRGBO(13, 247, 205, 1),
                    height: 220,
                  ),
                ),
                ),
                ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: const Color.fromRGBO(168,	167,	243,1),
                    height: 200,
                  ),
                ),
              ],
            ),
             const Text(
                 "Welcome!",
               style: TextStyle(
                   fontWeight: FontWeight.bold,
                 color: Color.fromRGBO(168,	167,	243,1),
                 fontSize: 40,
               ),
             ),
            const Text(
              "Your personal finance app",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20,
              ),
            ),
            Image.asset("assets/images/img.png",height: 300,width: 300,),
            const SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignInScreen()));
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                   color: const Color.fromRGBO(168,	167,	243,1,),
                ),
                child: const Center(
                    child: Text(
                        "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                      ),
                    ),
                ),
              ),
            ),
            const SizedBox(height: 30 ,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginInScreen()));
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color.fromRGBO(168,	167,	243,1,),width: 2),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromRGBO(168,	167,	243,1,),
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}

//custom WaveClipper class with path

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width/5 , size.height);
    var firstEnd = Offset(size.width/2.25 , size.height-50.0);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width-(size.width/3.24), size.height-105);
    var secondEnd = Offset(size.width, size.height-10);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant WaveClipper oldClipper) {
    return false;
  }}
