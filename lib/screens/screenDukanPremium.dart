import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenDukanPremium extends StatefulWidget {
  ScreenDukanPremium({super.key});

  @override
  State<ScreenDukanPremium> createState() => _ScreenDukanPremiumState();
}

class _ScreenDukanPremiumState extends State<ScreenDukanPremium> {
  List<String> titles = [
    'Custom domain name',
    'Verified seller badge',
    'Dukaan for PC',
    'Priority support',
  ];

  List<String> subtitles = [
    'Get your own custom domain and build your brand on the internet.',
    'Get green verified badge under your store name and built trust.',
    'Access all the exclusive premium features on Dukaan for PC.',
    'Get your request resolved with our priority customer support.'
  ];

  List<String> images = [
    'lib/icons/global.png',
    'lib/icons/badge.png',
    'lib/icons/computer.png',
    'lib/icons/customer-service-headset.png'
  ];

  List<bool> _isVisiblity = [false, false, false, false];

  bool _isVisible = false;
  bool _isClicked = false;

  final _url = 'https://youtu.be/TRl1QJ-8nxQ';
  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(_url);
    _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: YoutubePlayerFlags(
          autoPlay: false,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dukaan Premium',
          style: TextStyle(
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.indigo,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 120,
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 18,
                          right: 18,
                        ),
                        width: double.infinity,
                        child: const Text(
                          'Features',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Column(
                        children: List.generate(
                          titles.length,
                          (index) {
                            return ListTile(
                              leading: CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.indigo,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Image.asset(
                                    images[index],
                                    height: 22,
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                              title: Text(
                                titles[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: .5,
                                  fontSize: 16,
                                ),
                              ),
                              subtitle: Text(
                                subtitles[index],
                              ),
                            );
                          },
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        width: double.infinity,
                        child: Text(
                          'What is Dukaan Premium?',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .75,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: YoutubePlayer(
                            thumbnail: Text(
                              '',
                            ),
                            controller: _controller,
                            showVideoProgressIndicator: true,
                            progressColors: ProgressBarColors(
                              handleColor: Colors.indigo,
                              playedColor: Colors.indigo,
                              bufferedColor: Colors.grey,
                            ),
                            onReady: () => debugPrint(
                              'Ready',
                            ),
                          ),
                        ),
                        width: double.infinity,
                        height: 200,
                      ),
                      const Divider(
                        thickness: 2,
                        color: Colors.grey,
                        height: 48,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        width: double.infinity,
                        child: const Text(
                          'Freequetly asked questions',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .75,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Column(
                        children: List.generate(
                          4,
                          (index) {
                            return Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 16,
                                    top: 8,
                                    right: 11,
                                  ),
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      const Text(
                                        'What types of business can use Dukaan Premium?',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isVisiblity[index] =
                                                !_isVisiblity[index];
                                          });
                                        },
                                        icon: _isVisiblity[index]
                                            ? const Icon(
                                                Icons.remove,
                                              )
                                            : const Icon(
                                                Icons.add,
                                              ),
                                      ),
                                    ],
                                  ),
                                ),
                                Visibility(
                                  visible: _isVisiblity[index],
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child: Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                      style: TextStyle(),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        width: double.infinity,
                        child: const Text(
                          'Need help? Get in touch',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .75,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 172,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: .3,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.chat_bubble_outline,
                                    size: 40,
                                  ),
                                  Text(
                                    'Live Chat',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[700],
                                      letterSpacing: .75,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 172,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: .3,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.call_sharp,
                                    size: 40,
                                  ),
                                  Text(
                                    'Phone Call',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey[700],
                                      letterSpacing: .75,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey,
                        height: 36,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 170,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked = !_isClicked;
                                  });
                                },
                                child: Text(
                                  'Select Domain',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: _isClicked
                                        ? Colors.white
                                        : Colors.indigo,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      _isClicked ? Colors.indigo : Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                      color: _isClicked
                                          ? Colors.white
                                          : Colors.indigo,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 170,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _isClicked = !_isClicked;
                                  });
                                },
                                child: Text(
                                  'Get Premium',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: _isClicked
                                        ? Colors.indigo
                                        : Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      _isClicked ? Colors.white : Colors.indigo,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(
                                      color: _isClicked
                                          ? Colors.indigo
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 25,
              top: 12,
              child: Container(
                height: 200,
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 24,
                          child: Icon(
                            Icons.shopping_bag,
                            size: 26,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'dukaan',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'PREMIUM',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.indigo,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Get Dukaan Premium for Just',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      '₹4,999/Year',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'All the advanced features for scaling your business.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 1,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showWidget() {
    setState(() {
      _isVisible = true;
    });
  }

  hideWidget() {
    setState(() {
      _isVisible = false;
    });
  }
}
