import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: VerticalSliderCardRow(),
      ),
    );
  }
}

class VerticalSliderCardRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.3, // 40% of screen height
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5, // Number of cards
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            elevation: 5,
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100, // Width of the image container
                      height: 150, // Height of the image container
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/sample_image.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(10)),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Title $index',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Description for card $index.',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            SizedBox(height: 10),
                            Text('Location: City $index'),
                            Text('Rate: ${index * 5} ⭐️⭐️'),
                            Text('Price: \$${index * 10}'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: IconButton(
                    icon: Icon(Icons.favorite_border,
                        color: const Color.fromARGB(255, 167, 165, 164)),
                    onPressed: () {
                      // Handle add favorite action
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
