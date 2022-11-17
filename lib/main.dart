import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freshfarm_ui/gridveg.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmhome(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class Farmhome extends StatefulWidget {
  const Farmhome({Key? key}) : super(key: key);

  @override
  State<Farmhome> createState() => _FarmhomeState();
}

class _FarmhomeState extends State<Farmhome> {
  List<String> images = [
    "https://i.pinimg.com/originals/d6/e1/e2/d6e1e29e54a61dc43605ddd86be3b0d3.jpg",
    "https://c8.alamy.com/comp/CNT35M/vintage-world-war-ii-poster-of-a-basket-filled-with-fresh-vegetables-CNT35M.jpg",
    "https://cdn2.vectorstock.com/i/1000x1000/42/21/basket-of-fresh-vegetables-poster-vector-14194221.jpg",
    "https://image.shutterstock.com/shutterstock/photos/1568437813/display_1500/stock-vector-farm-fresh-vegetables-poster-vector-template-1568437813.jpg",
    "https://www.cdc.gov/foodsafety/images/comms/features/GettyImages-1247930626-500px.jpg?_=00453"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              title: const Text("Farmers Fresh Zone"),
              actions: const [
                Icon(Icons.location_on_rounded),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    "Kochi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                )
              ],
              bottom: AppBar(
                title: Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.white,
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search for Vegetables,Fruits"),
                    )),
              )),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green.shade50),
                    child: Center(
                        child: Text("VEGETABLES",
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontWeight: FontWeight.bold)))),
                Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green.shade50),
                    child: Center(
                        child: Text("FRUITS",
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontWeight: FontWeight.bold)))),
                Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green.shade50),
                    child: Center(
                        child: Text("EXOTIC",
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontWeight: FontWeight.bold)))),
                Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green.shade50),
                    child: Center(
                        child: Text("FRESH CUTS",
                            style: TextStyle(
                                color: Colors.green.shade800,
                                fontWeight: FontWeight.bold))))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: images
                  .map(
                    (item) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(item), fit: BoxFit.fill)),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                  autoPlay: true, aspectRatio: 2.0, enlargeCenterPage: true),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1)),
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Icon(Icons.lock_clock),
                              Text("30 Mins policy")
                            ],
                          ),
                        ),
                        Column(
                          children: const [
                            Icon(Icons.mobile_screen_share),
                            Text("Tracabelity")
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.home_work),
                            Text("Local Sourcing")
                          ],
                        )
                      ]),
                ),
              ),
            )
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Shop by Category",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Veggrid(),
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
      ]),
    );
  }
}
