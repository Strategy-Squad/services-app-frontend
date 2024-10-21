import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:service_app_frontend/model/categoryModel.dart';
import 'package:service_app_frontend/model/homeServiceVerticalSlider.dart';


class Servicedashboard extends StatefulWidget {
  const Servicedashboard({super.key});

  @override
  State<Servicedashboard> createState() => _ServicedashboardState();
}

class _ServicedashboardState extends State<Servicedashboard> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: CircleAvatar(
                          radius: screenWidth * 0.07,
                          backgroundImage: NetworkImage(
                            'https://www.nicepng.com/png/full/182-1829287_cammy-lin-ux-designer-circle-picture-profile-girl.png',
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Hiruni ✋",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenWidth * 0.05),
                            ),
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.locationDot,
                                  color: Colors.blue,
                                  size: screenWidth * 0.05,
                                ),
                                SizedBox(width: screenWidth * 0.02),
                                Text(
                                  "Panadura, Sri Lanka",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: screenWidth * 0.04),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.all(screenWidth * 0.02),
                        child: InkWell(
                          onTap: () {
                            print('Notification icon pressed');
                          },
                          child: Container(
                            width: screenWidth * 0.1,
                            height: screenWidth * 0.1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.bell,
                                color: Colors.black,
                                size: screenWidth * 0.05,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'How Can help you today?',
                        prefixIcon:
                            Icon(Icons.search, size: screenWidth * 0.05),
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.01,
                          horizontal: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    child: Row(
                      children: [
                        Text(
                          "Today Special",
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(screenWidth * 0.02),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "25% OFF",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.07,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Get discount for every order,",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "only valid for today",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: screenHeight * 0.01),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.blue,
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: screenWidth * 0.04,
                                            vertical: screenHeight * 0.01),
                                      ),
                                      child: Text(
                                        "Get Discount",
                                        style: TextStyle(
                                            fontSize: screenWidth * 0.04,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          'https://i.ibb.co/61rxQL1/Daco-4431776.png',
                          width: screenWidth * 0.25,
                          height: screenHeight * 0.2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    child: Row(
                      children: [
                        Text(
                          "Service Category",
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryData.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(
                            right: screenWidth * 0.05,
                            bottom: screenHeight * 0.01,
                            top: screenHeight * 0.01),
                        child: Column(
                          children: [
                            Material(
                              elevation: 3,
                              shape: const CircleBorder(),
                              child: ClipOval(
                                child: Container(
                                  height: screenWidth * 0.1,
                                  width: screenWidth * 0.1,
                                  decoration: BoxDecoration(
                                    color: categoryData[index].active
                                        ? Colors.white
                                        : Color(0x33336CEE),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      categoryData[index].icon,
                                      size: screenWidth * 0.06,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              categoryData[index].name,
                              style: TextStyle(fontSize: screenWidth * 0.03),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenHeight * 0.0001),
                    child: Row(
                      children: [
                        Text(
                          "Home Services",
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "See All",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.18,
                    child: VerticalSliderCardRow(),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
