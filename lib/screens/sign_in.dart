import 'package:finplan/screens/home_screen.dart';
import 'package:flutter/material.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Create an account",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(168,	167,	243,1),
              fontSize: 40,
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
             child: TextField(
              decoration: InputDecoration(
                suffixIcon:const Icon(Icons.person),
                hintText: "Enter Your Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:const BorderSide(
                    width: 20,
                    color: Color.fromRGBO(168,	167,	243,1)
                  )
                )
              ),
             ),
           ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon:const Icon(Icons.email),
                  hintText: "E-mail",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:const BorderSide(
                          width: 20,
                          color: Color.fromRGBO(168,	167,	243,1)
                      )
                  ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.phone),
                  hintText: "Phone Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:const BorderSide(
                          width: 20,
                          color: Color.fromRGBO(168,	167,	243,1)
                      )
                  )

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Create Password",
                  suffixIcon: const Icon(Icons.visibility),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:const BorderSide(
                          width: 20,
                          color: Color.fromRGBO(168,	167,	243,1)
                      )
                  )

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Confirm Password",
                  suffixIcon: const Icon(Icons.visibility),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:const BorderSide(
                          width: 30,
                          color: Color.fromRGBO(168,	167,	243,1)
                      )
                  )

              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
            },
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(168,	167,	243,1),
              ),
              child:const Center(
              child: Text(
                "Continue",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                ),
              ),
            ),
            ),
          ),
         const SizedBox(
           height: 20,
         ),
         const Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "By continuing you're agreeing to our ",
                style: TextStyle(fontSize: 10),
              ),
              Text(
                  "terms & conditions",
                style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(
                        168,	167,	243,1,
                    ),decoration: TextDecoration.underline,
                    decorationColor: Color.fromRGBO(168,	167,	243,1),
                ),
              ),
              Text(
                  " and our privacy policies",
                style: TextStyle(fontSize: 10),

              ),
            ],
          ),
        ],
      ),
    );
  }
}

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

