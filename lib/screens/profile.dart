import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
        title: const Text(
            "Profile",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 5,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios,color: Colors.white,),
        actions:const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.settings,color: Colors.white,size: 26,),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 290,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade700,
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: CircleAvatar(
                      radius: 70,
                    backgroundColor: Colors.blue.shade700,
                      child: Image.asset("assets/images/img_3.png",fit: BoxFit.fill,),
                  ),
                ),
                const SizedBox(height: 5,),
                const Text(
                    "Ankit Kumar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "UI/UX Designer",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("1000 Followers", style: TextStyle(

                        color: Colors.white
                    ),),
                    SizedBox(width: 10,),
                    Text(
                      "|",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("1000 Following", style: TextStyle(
                        color: Colors.white
                    ),),
                  ],
                )
              ],
            ),
            ),
          const SizedBox(height: 10,),
          const Text(
              "Your Details",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(Icons.person_2_outlined,size: 30,color: Colors.grey.shade700,),
                const SizedBox(width: 40,),
                const Text("Name")
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
            child: Divider(thickness: 2,color: Colors.grey.shade700,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(Icons.email_outlined,size: 30,color: Colors.grey.shade700,),
                const SizedBox(width: 40,),
                const Text("Email")
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
            child: Divider(thickness: 2,color: Colors.grey.shade700,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(Icons.phone_android,size: 30,color: Colors.grey.shade700,),
                const SizedBox(width: 40,),
                const Text("Phone Number")
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
            child: Divider(thickness: 2,color: Colors.grey.shade700,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(Icons.location_pin,size: 30,color: Colors.grey.shade700,),
                const SizedBox(width: 40,),
                const Text("Address"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
            child: Divider(thickness: 2,color: Colors.grey.shade700,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(Icons.location_city,size: 30,color: Colors.grey.shade700,),
                const SizedBox(width: 40,),
                const Text("City"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
            child: Divider(thickness: 2,color: Colors.grey.shade700,),
          ),
          const SizedBox(height: 13,),
          Container(
            height: 50,
            width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
            child: const Center(
              child: Text(
                  "Logout",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
