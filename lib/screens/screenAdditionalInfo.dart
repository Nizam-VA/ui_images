import 'package:flutter/material.dart';

class ScreenAdditionalInfo extends StatefulWidget {
  ScreenAdditionalInfo({super.key});

  @override
  State<ScreenAdditionalInfo> createState() => _ScreenAdditionalInfoState();
}

class _ScreenAdditionalInfoState extends State<ScreenAdditionalInfo> {
  List<String> titles = [
    'Share Dukaan App',
    'Change Language',
    'WhatsApp Chat Support',
    'Privacy Policy',
    'Rate Us',
    'Sign Out'
  ];

  List<Icon> icons = [
    const Icon(Icons.share),
    const Icon(Icons.language),
    const Icon(Icons.whatshot),
    const Icon(Icons.privacy_tip_outlined),
    const Icon(Icons.rate_review),
    const Icon(Icons.logout),
  ];

  List<AssetImage> assets = [
    AssetImage('source/images/whatsapp.png'),
  ];

  List<Icon> trailing = [
    const Icon(Icons.arrow_forward_ios),
    const Icon(Icons.arrow_forward_ios),
  ];

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Additional Informations'),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return ListTile(
                leading: index == 2
                    ? Container(
                        margin: EdgeInsets.only(
                          left: 12,
                        ),
                        height: 21,
                        child: Image.asset(
                          'lib/icons/whatsapp.png',
                          color: Colors.grey[700],
                        ),
                      )
                    : IconButton(onPressed: () {}, icon: icons[index]),
                title: Text(titles[index]),
                trailing: index < 2
                    ? trailing[index]
                    : (index == 2
                        ? Switch(
                            value: isSwitched,
                            onChanged: (value) => setState(
                              () {
                                isSwitched = value;
                              },
                            ),
                          )
                        : null),
              );
            },
          ),
          const Positioned(
            bottom: 30,
            left: 175,
            child: Text(
              'Version',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          const Positioned(
            bottom: 15,
            left: 183,
            child: Text(
              '2.4.2',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
