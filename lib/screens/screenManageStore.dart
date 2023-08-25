import 'package:flutter/material.dart';
import 'package:ui_images/screens/screenDukanPremium.dart';
import 'package:ui_images/screens/screenPayments.dart';

class ScreenManageStore extends StatelessWidget {
  List<String> images = [
    'lib/icons/marketing.png',
    'lib/icons/money.png',
    'lib/icons/discount.png',
    'lib/icons/group.png',
    'lib/icons/scan.png',
    'lib/icons/cash.png',
    'lib/icons/list.png'
  ];
  List<Color> colors = [
    Colors.orange,
    Colors.green,
    Colors.amber,
    Colors.blueGrey,
    Colors.grey,
    Colors.purple,
    Colors.pink,
  ];
  List<String> headlines = [
    'Marketing Designs',
    'Online Payments',
    'Discount Coupons',
    'My costomers',
    'Store QR Codes',
    'Extra Charges',
    'Order Form',
  ];
  int? index;
  ScreenManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Store'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[300],
        child: GridView.builder(
            itemCount: 7,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (index == 1) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => ScreenPayments(),
                      ),
                    );
                  } else if (index == 0) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => ScreenDukanPremium(),
                      ),
                    );
                  }
                },
                child: Container(
                  width: 150,
                  height: 120,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: Colors.white,
                  ),
                  child: index < 6
                      ? Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                    top: 32,
                                  ),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: colors[index],
                                    ),
                                    child: Image.asset(
                                      images[index],
                                      height: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                  ),
                                  child: Text(
                                    headlines[index],
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontFamily: '',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                    top: 36,
                                  ),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: colors[index],
                                    ),
                                    child: Image.asset(
                                      images[index],
                                      height: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                  ),
                                  child: Text(
                                    headlines[index],
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontFamily: '',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              right: 12,
                              top: 24,
                              child: Container(
                                width: 42,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green,
                                ),
                                child: const Text(
                                  'NEW',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              );
            }),
      ),
    );
  }
}
