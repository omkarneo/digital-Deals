import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../utils/common_var.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cat = [
    Category("All", true),
    Category("Smartphone", false),
    Category("Laptops", false),
    Category("Headphones", false),
    Category("SmartWatch", false),
    Category("Speakers", false),
  ];

  List cardList = [
    Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://www.91-cdn.com/hub/wp-content/uploads/2021/10/Redmi-Note-11-Pro-1200x675.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      // child: ,
    ),
    Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://guardian.ng/wp-content/uploads/2022/03/Redmi-Note-11-Pro-5G-1.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      // child: ,
    ),
    // Text("1"),
    // Text("2"),
    // Text("3"),
    // Text("4"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.greyTextFormfieldColor,
              suffixIcon: const Icon(
                Icons.search_outlined,
                color: AppColors.primaryColor,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  width: 3,
                  color: AppColors.primaryColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: AppColors.primaryColor,
                  width: 3.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CarouselSlider(
              options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  aspectRatio: 1.5,
                  viewportFraction: 1),
              items: cardList.map((card) {
                return Builder(builder: (BuildContext context) {
                  return SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: card,
                  );
                });
              }).toList(),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: AppColors.primaryColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                for (Category i in cat) ...[
                  (i.isSelected)
                      ? Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    width: 1.5, color: AppColors.primaryColor)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                i.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: AppColors.primarytextColor),
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(width: 1.5)),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                i.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                ]
              ]),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: (1 / 1), crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://www.digitaltrends.com/wp-content/uploads/2023/02/macbook-pro-14-m2-max.jpg?p=1",
                          fit: BoxFit.cover,
                        ),
                      ),
                      // child: Container(

                      //   decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //           fit: BoxFit.cover,
                      //           image: NetworkImage(
                      //               "https://www.digitaltrends.com/wp-content/uploads/2023/02/macbook-pro-14-m2-max.jpg?p=1"))),
                      //   // child: Image.network(
                      //   //   "https://www.digitaltrends.com/wp-content/uploads/2023/02/macbook-pro-14-m2-max.jpg?p=1",
                      //   //   fit: BoxFit.cover,
                      //   // ),
                      // ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Macbook Pro",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade500),
                                ),
                                const Text(
                                  "₹ 1,50,000",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Category {
  String name;
  bool isSelected;
  Category(this.name, this.isSelected);
}
