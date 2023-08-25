import 'package:flutter/material.dart';

class ScreenCatalogue extends StatefulWidget {
  const ScreenCatalogue({super.key});

  @override
  State<ScreenCatalogue> createState() => _ScreenCatalogueState();
}

class _ScreenCatalogueState extends State<ScreenCatalogue> {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Products'),
    Tab(text: 'Catagories'),
  ];

  List<String> titles = [
    'Couch Potato | Women...',
    'Couch Potato | Men...',
    'Mug | Explore',
    'Combo Blasht 1 | Pack...',
    'Mug | Orchard',
    'Combo Blasht 2 | Expo...',
    'I see combo pack',
    'Kids Combo blahst',
  ];

  List<String> images = [
    'lib/icons/hard-disk.png',
    'lib/icons/joystick.png',
    'lib/icons/coffee.png',
    'lib/icons/computer.png',
    'lib/icons/hard-disk.png',
    'lib/icons/joystick.png',
    'lib/icons/coffee.png',
    'lib/icons/computer.png',
  ];

  List<bool> isSwitched = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Catalogue',
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: Column(
                    children: List.generate(8, (index) {
                  return Container(
                    margin: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                      top: 12,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: 160,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: .3,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                images[index],
                                height: 70,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 123,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          titles[index],
                                          style: TextStyle(
                                            fontSize: 16,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        Icon(
                                          Icons.more_vert,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    '1 piece',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 123,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          '₹799',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 168,
                                        ),
                                        Switch(
                                          activeColor: Colors.indigo,
                                          activeTrackColor: Colors.blue[100],
                                          value: isSwitched[index],
                                          onChanged: (value) {
                                            setState(() {
                                              isSwitched[index] = value;
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'in stock',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.green[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.share_outlined,
                            ),
                            Text(
                              'Share Product',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                })),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
