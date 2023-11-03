import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/common_var.dart';
import '../homepage/homepage.dart';
import 'bloc/dashboard_bloc.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Digital Deals",
            style: TextStyle(color: Colors.lightBlue),
          ),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.lightBlue,
              ),
              onPressed: () {},
            ),
          )
        ],
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          if (state is DashboardNavigatorState) {
            return state.tab;
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      bottomNavigationBar: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          if (state is DashboardNavigatorState) {
            return BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: AppColors.primaryIconColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    // color: Colors.grey,
                  ),
                  label: 'Search',
                  backgroundColor: AppColors.primaryIconColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favorite',
                  backgroundColor: AppColors.primaryIconColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  backgroundColor: AppColors.primaryIconColor,
                ),
              ],
              currentIndex: state.index,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.unSelectedIconColor,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              onTap: (value) {
                BlocProvider.of<DashboardBloc>(context)
                    .add(DashBoardNavigatorEvent(value));
              },
            );
          } else {
            return Container();
          }
        },
      ),

      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       TextFormField(
      //         decoration: InputDecoration(
      //           suffixIcon: const Icon(
      //             Icons.search_outlined,
      //             color: Colors.lightBlue,
      //           ),
      //           focusedBorder: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(25.0),
      //             borderSide: const BorderSide(
      //               width: 3,
      //               color: Colors.lightBlue,
      //             ),
      //           ),
      //           enabledBorder: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(25.0),
      //             borderSide: const BorderSide(
      //               color: Colors.lightBlue,
      //               width: 3.0,
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       ClipRRect(
      //         borderRadius: BorderRadius.circular(10),
      //         child: CarouselSlider(
      //           options: CarouselOptions(
      //               height: 200.0,
      //               autoPlay: true,
      //               autoPlayInterval: const Duration(seconds: 3),
      //               autoPlayAnimationDuration:
      //                   const Duration(milliseconds: 800),
      //               autoPlayCurve: Curves.fastOutSlowIn,
      //               // pauseAutoPlayOnTouch: Duration(seconds: 10),
      //               aspectRatio: 1.5,
      //               viewportFraction: 1),
      //           // onPageChanged: (index) {
      //           //   setState(() {
      //           //     _currentIndex = index;
      //           //   });
      //           // },
      //           items: cardList.map((card) {
      //             return Builder(builder: (BuildContext context) {
      //               return SizedBox(
      //                 width: MediaQuery.sizeOf(context).width,
      //                 child: card,
      //               );
      //             });
      //           }).toList(),
      //         ),
      //       ),
      //       Expanded(
      //         child: GridView.builder(
      //           itemCount: 10,
      //           gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
      //               childAspectRatio: (1 / 1), crossAxisCount: 2),
      //           itemBuilder: (context, index) {
      //             return Padding(
      //               padding: const EdgeInsets.all(2.0),
      //               child: Column(children: [
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: ClipRRect(
      //                     borderRadius: BorderRadius.circular(10),
      //                     child: Image.network(
      //                       "https://www.digitaltrends.com/wp-content/uploads/2023/02/macbook-pro-14-m2-max.jpg?p=1",
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                   // child: Container(

      //                   //   decoration: BoxDecoration(
      //                   //       image: DecorationImage(
      //                   //           fit: BoxFit.cover,
      //                   //           image: NetworkImage(
      //                   //               "https://www.digitaltrends.com/wp-content/uploads/2023/02/macbook-pro-14-m2-max.jpg?p=1"))),
      //                   //   // child: Image.network(
      //                   //   //   "https://www.digitaltrends.com/wp-content/uploads/2023/02/macbook-pro-14-m2-max.jpg?p=1",
      //                   //   //   fit: BoxFit.cover,
      //                   //   // ),
      //                   // ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.all(2.0),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       Padding(
      //                         padding: const EdgeInsets.all(8.0),
      //                         child: Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             Text(
      //                               "Macbook Pro",
      //                               style: TextStyle(
      //                                   fontWeight: FontWeight.w600,
      //                                   color: Colors.grey.shade500),
      //                             ),
      //                             const Text(
      //                               "₹ 1,50,000",
      //                               style: TextStyle(
      //                                 fontWeight: FontWeight.w600,
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                       const Padding(
      //                         padding: const EdgeInsets.all(8.0),
      //                         child: Row(
      //                           children: [
      //                             Icon(
      //                               Icons.star,
      //                               color: Colors.yellow,
      //                             ),
      //                             SizedBox(
      //                               width: 2,
      //                             ),
      //                             Text(
      //                               "4.9",
      //                               style:
      //                                   TextStyle(fontWeight: FontWeight.w600),
      //                             )
      //                           ],
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 )
      //               ]),
      //             );
      //           },
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
