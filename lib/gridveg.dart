import 'package:flutter/material.dart';

class Veggrid extends StatelessWidget {
  const Veggrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> img = [
      "https://img.freepik.com/free-photo/healthy-vegetables-wooden-table_1150-38014.jpg?w=2000",
      "https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature.jpg?sfvrsn=64942d53_4",
      "https://www.healthifyme.com/blog/wp-content/uploads/2019/12/exotic-fruits-cover-1.jpg",
      "https://static.tnn.in/photo/msid-92063059/92063059.jpg",
      "https://images.everydayhealth.com/images/diet-nutrition/healthy-foods-that-boost-energy-01-1440x810.jpg",
      "https://static.toiimg.com/photo/70364232.cms",
      "https://healthyfitnessmeals.com/wp-content/uploads/2021/04/Southwest-chicken-salad-7.jpg"
    ];
    List<String> txt = [
      "Vegetables",
      "Fruits",
      "Exotic",
      "FreshCuts",
      "Nutrition Chargers",
      "Packed Flours",
      "Gourmet salads"
    ];
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
      itemCount: img.length,
      itemBuilder: (Context, int index) {
        return Column(
          children: [
            Card(
              child: Container(
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(blurRadius: 20.0, color: Colors.black)
                    ],
                    image: DecorationImage(
                        image: NetworkImage(img[index]), fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(height: 7),
            Text(
              txt[index],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )
          ],
        );
      },
    );
  }
}
