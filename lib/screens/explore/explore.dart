import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telebirr/util/constants.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  static final List<Map<String, String>> exploreItems = [
    {
      "title": "All About Telebirr",
      "desc": "Every Guide you're looking for",
    },
    {"title": "Announcements", "desc": "New actions and more"},
    {"title": "Support Options", "desc": "Look inside for any doubt you have"},
    {"title": "More", "desc": "Anything else you missed"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        title: const Text("Explore"),
        centerTitle: true,
        backgroundColor: kPrimary,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(kPadding)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: exploreItems.length,
                      itemBuilder: ((context, index) {
                        var item = exploreItems[index];
                        return Container(
                          height: kPadding * 8,
                          margin: index == 0
                              ? const EdgeInsets.only(
                                  top: kPadding, bottom: kPadding * 0.5)
                              : const EdgeInsets.symmetric(
                                  vertical: kPadding * 0.5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Stack(
                            alignment: AlignmentDirectional.topStart,
                            children: [
                              Positioned(
                                top: 0,
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Image.asset(
                                  "assets/images/explore-${(index % 4) + 1}.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(kPadding),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.black.withOpacity(0.6),
                                        Colors.black.withOpacity(0.1),
                                      ],
                                    ),
                                    // color: Colors.black.withOpacity(0.3),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item["title"]!,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        item["desc"]!,
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
