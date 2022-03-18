import 'package:flutter/material.dart';
import 'package:snapchat_clone/data/bottom_items.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: getFooter(),
    );
  }

  Widget getFooter() {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(iconItems.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = index;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                        iconItems[index],
                        color: pageIndex == index ? colorItems[index] : Colors
                            .white.withOpacity(0.5)
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      textItems[index],
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,

                          color: pageIndex == index
                              ? colorItems[index]
                              : Colors.white.withOpacity(0.5)
                      ),
                    )
                  ],
                ),
              );
            })
        ),
      ),
    );
  }
}