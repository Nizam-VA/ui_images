import 'package:flutter/material.dart';

class ScreenOrder extends StatelessWidget {
  const ScreenOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order #6808998'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              child: ListTile(
                title: Text(
                  'MAY 31, 05:47 PM',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.lens_rounded),
                  label: Text(
                    'Delivered',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: ListTile(
                title: Text(
                  '1 ITEM',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 18,
                  ),
                ),
                trailing: TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.receipt),
                  label: const Text(
                    'RECIEPT',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              height: 80,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              child: ListTile(
                title: const Text('EXPLORE | MEN | NAVY BLUE'),
                subtitle: Text(
                  '''1 piece
Size: XL''',
                  textAlign: TextAlign.left,
                ),
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: .3,
                    ),
                  ),
                  child: Image.asset(
                    'lib/icons/get-dressed.png',
                  ),
                ),
                trailing: const Text(
                  '₹799',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: const ListTile(
                title: Text(
                  'Item Total',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  '₹799',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: ListTile(
                title: const Text(
                  'Delivery',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: Text(
                  'FREE',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[600],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              )),
              child: const ListTile(
                title: Text(
                  'Grand Total',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  '₹799',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: ListTile(
                title: Text(
                  'CUSTOMERS DETAILS',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
                trailing: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                  label: Text(
                    'SHARE',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: ListTile(
                title: Text(
                  'Deepa',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  '+91-7898785845',
                ),
                trailing: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.call),
                  label: Image.asset(
                    'lib/icons/whatsapp.png',
                    height: 24,
                    color: Colors.green[700],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: const ListTile(
                title: Text(
                  'Adress',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  '''D 1101 Chartered Baverly
Hills, Subhramunyapura P.O''',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 26,
                vertical: 16,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Banglore',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pincode',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '5692369',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 26,
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Online',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green[50],
                    ),
                    child: Text(
                      'PAID',
                      style: TextStyle(
                        color: Colors.green[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Divider(
                thickness: .8,
                height: 1,
                color: Colors.grey[700],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'ADDITIONAL INFORMATIONS',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'State',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Karnataka',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'E-mail',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'antavan@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(24),
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Share Reciept',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.indigo,
                    letterSpacing: 1,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: Colors.indigo,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
