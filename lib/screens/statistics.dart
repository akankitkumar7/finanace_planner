import 'package:finplan/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  Map<String, double> dataMap = {
    "Grocery Shopping" :47,
    "Car Expenses" : 12,
    "Online Shopping" : 28,
    "Health Expenditure" : 13,
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
      backgroundColor:const Color.fromRGBO(232, 232, 232, 1),
      drawer: const DrawerPage(),
      appBar: AppBar(
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
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Icon(Icons.notifications_active_rounded,color: Colors.grey.shade700),),
            ),
          ],
        ),
      body: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.grey.shade700,
            child: const Center(
                child: Text(
                    "Statistics",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ),
          const SizedBox(
             height: 50,
           ),
           PieChart(
            dataMap: dataMap,
            colorList: colorList,
            chartRadius: 150,
            chartType: ChartType.ring,
            ringStrokeWidth: 20,
            animationDuration:const Duration(seconds: 1),
            chartValuesOptions: const ChartValuesOptions(
            showChartValuesInPercentage: true,
            showChartValues: true,
            showChartValueBackground: true,
            ),
            legendOptions: const LegendOptions(
              showLegends: true,
              legendShape: BoxShape.rectangle,
              legendPosition: LegendPosition.bottom
            ),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:const EdgeInsets.only(left: 15.0),
                child: Text(
                    "Cards",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade900
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right:8.0),
                child: Icon(Icons.more_vert,color: Colors.grey.shade900,size: 30,),
              ),
            ],
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: const Border.symmetric(),
              subtitle: const Text("No data available"),
              tileColor: Colors.grey.shade700,
              leading: const Icon(Icons.credit_card,),
              title: const Text("Visa Card"),
              trailing: const Text('\$ 10,500'),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: const Border.symmetric(),
              subtitle: const Text("No data available"),
              tileColor: Colors.grey.shade700,
              leading: const Icon(Icons.credit_card),
              title: const Text("Visa Card"),
              trailing: const Text('\$ 10,500'),
            ),
          ),
        ],
      ),
    );
  }
}


