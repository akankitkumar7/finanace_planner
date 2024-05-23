import 'package:flutter/material.dart';
import 'package:finplan/screens/drawer.dart';
import 'package:pie_chart/pie_chart.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {

  Map<String, double> dataMap = {
    "Shopping" :47,
    "Health" : 12,
    "Bills" : 28,
    "Food" : 13,
  };

  List <Color> colorList = const[
    Color.fromRGBO(2, 168, 185, 1),
    Color.fromRGBO(3, 188, 655, 1),
    Color.fromRGBO(74, 80, 80, 1),
    Color.fromRGBO(168, 210, 214, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        //backgroundColor: const Color.fromRGBO(164, 165, 165, 1),
        backgroundColor: Colors.grey.shade700,
        leading: Builder(
          builder: (context)=>InkWell(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),

                    child: Icon(Icons.menu,size: 35,color: Colors.grey.shade700)),
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
              ),
                  child: Icon(Icons.notifications_active_rounded,color: Colors.grey.shade700)),),
        ],
          ),
      body: Stack(
        children:[
          Container(
            height: 300,
            width: double.infinity,
            //color: const Color.fromRGBO(164, 165, 165, 1),
            color: Colors.grey.shade700,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0,top: 8.0),
                  child: Text(
                    '\$ 10,500',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0,top: 8),
                  child: Text(
                    "Current Balance",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.arrow_downward_sharp,color: Colors.grey.shade700,),
                          const Text("Income"),
                        ],
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_upward_sharp,color: Colors.grey.shade700,),
                          const Text("Expense"),
                        ],
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Icon(Icons.account_balance_wallet_rounded,color: Colors.grey.shade700,),
                          const Text("Wallet"),
                        ],
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.receipt_long,color: Colors.grey.shade700,),
                          const Text("Receipts"),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210.0),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
                color: Color.fromRGBO(232, 232, 232, 1),
              ),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 20.0,left: 10,right: 10),
                      child: Container(
                        height: 192,
                        width: 386,
                        decoration: BoxDecoration(
                          gradient: const  LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromRGBO(1, 163, 188, 1),
                              Color.fromRGBO(4, 189, 165, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 0,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 8.0,left: 300),
                              child: Text(
                                '\$ 12,500',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 45.0),
                              child: Text(
                                "****  ****  ****  1234",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:35.0,left: 15),
                                  child: Container(
                                    height: 36,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(28, 154, 166, 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                const Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0,top: 20),
                                      child: Text("CVV", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 5.0),
                                      child: Text(
                                        "...",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                  ),
                  const SizedBox(height: 20,),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("All Expenses"),
                        DropdownMenu(
                            enableFilter: true,
                            enableSearch: true,
                            hintText: "Select month",
                            width: 200,
                            menuStyle: MenuStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                            ),
                            dropdownMenuEntries: <DropdownMenuEntry<Color>>[
                              DropdownMenuEntry(value: Colors.red, label: "Jan"),
                              DropdownMenuEntry(value: Colors.blue, label: "Feb"),
                              DropdownMenuEntry(value: Colors.orange, label: "March"),
                              DropdownMenuEntry(value: Colors.green, label: "April"),
                              DropdownMenuEntry(value: Colors.deepPurple, label: "May"),
                              DropdownMenuEntry(value: Colors.deepPurple, label: "June"),
                              DropdownMenuEntry(value: Colors.deepPurple, label: "July"),
                              DropdownMenuEntry(value: Colors.deepPurple, label: "August"),
                              DropdownMenuEntry(value: Colors.deepPurple, label: "September"),
                              DropdownMenuEntry(value: Colors.deepPurple, label: "October"),
                              DropdownMenuEntry(value: Colors.deepPurple, label: "November"),
                              DropdownMenuEntry(value: Colors.deepPurple, label: "December")
                            ]
                        )]
                  ),
                  const SizedBox(height: 15),
                  PieChart(
                    dataMap: dataMap,
                    colorList: colorList,
                    chartLegendSpacing: 100,
                    chartRadius: 120,
                    chartType: ChartType.ring,
                    ringStrokeWidth: 20,
                    animationDuration:const Duration(seconds: 1),
                    chartValuesOptions: const ChartValuesOptions(
                        showChartValuesInPercentage: false,
                        showChartValues: true,
                        showChartValueBackground: true
                    ),
                    legendOptions: const LegendOptions(
                      showLegends: true,
                      legendShape: BoxShape.rectangle,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Total Expenses:"),
                      Text(
                        '\$ 8,500',
                        style: TextStyle(
                            color: Color.fromRGBO(2, 168, 185, 1)
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
