import 'package:flutter/material.dart';
import 'package:service_app_frontend/model/categoryModel.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Text(
                "Where You Wanna Go?",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryData.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              right: 12, bottom: 8, top: 8),
                          child: Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 90,
                              width: 72,
                              decoration: BoxDecoration(
                                  color: categoryData[index].active
                                      ? Colors.yellow
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(categoryData[index].icon),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      categoryData[index].name,
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ]),
                            ),
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// now create Model and data