import 'package:flutter/material.dart';
class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<bool> isSelected = [true,false,false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 232, 232, 1),
      appBar: AppBar(
        title: Text(
            "DashBoard",
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 25,
            fontWeight: FontWeight.w500,
            letterSpacing: 2
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(232, 232, 232, 1),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0,top: 10),
          child: Container(
            height: 38,
              width: 38,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey.shade400,width: 2)
              ),
              child: Icon(Icons.arrow_back_ios,color: Colors.grey.shade700,)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey.shade400,width: 2),
                ),
                child: Icon(Icons.calendar_today_outlined,color: Colors.grey.shade700,)),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(Icons.arrow_circle_down_outlined,color: Colors.blue,),
                  const SizedBox(width: 10,),
                  Column(
                    children: [
                      Text(
                          "Income",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey.shade600,

                        ),
                      ),
                       const Text(
                          '\$10,000',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
               Row(
                children: [
                  const Icon(Icons.arrow_circle_up_outlined,color: Colors.red,),
                  const SizedBox(width: 10,),
                  Column(
                    children: [
                      Text("Expenses", style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey.shade600,

                      ),),
                      const Text('\$4,000', style: TextStyle(
                        fontSize: 18,
                      ),)
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 20,),
          ToggleButtons(
            borderWidth: 2,
            splashColor: Colors.pink.shade400,
            fillColor: Colors.lightBlue,
            selectedColor: Colors.white,
            borderRadius: BorderRadius.circular(20),
              isSelected: isSelected,
              children: const <Widget> [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                      "Weekly",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text("Monthly",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text("Yearly",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                ),
              ],
            onPressed: (int newIndex){
              setState(() {
                for(int index = 0; index < isSelected.length; index++){
                  if(index == newIndex){
                    isSelected[index] = true;
                  }else{
                    isSelected[index] = false;
                  }
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
