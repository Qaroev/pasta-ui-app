import 'package:flutter/material.dart';
import 'package:pasta_ui_app/screens/about_screeen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        bottomSheet: Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 8,
                ),
              ]),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // if(showIcon==true) const Icon(Icons.card_travel),
                Text(
                  '30 min',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            ListTile(
              title: Row(
                children: const [
                  Text(
                    'Red Square, 17',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              subtitle: const Text(
                'Entrance 3, intercom 15, apartment 15, floor 5',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message_outlined, size: 20),
                    splashRadius: 18,
                  ),
                  const SizedBox(width: 8),
                  const CircleAvatar(
                    radius: 20,
                    foregroundImage: AssetImage('assets/profile.jpg'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(
                elevation: 8,
                margin: const EdgeInsets.only(top: 36),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 16),
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        height: 40,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            widgetChip(
                              color: const Color(0xFFF3F4F6),
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: Checkbox(
                                  value: isCheck,
                                  onChanged: (value) {
                                    setState(() {
                                      isCheck = !isCheck;
                                    });
                                  },
                                  fillColor: MaterialStateProperty.all<Color>(
                                      Colors.red),
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red.withOpacity(0.1)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  splashRadius: 16,
                                ),
                              ),
                            ),
                            const SizedBox(width: 4),
                            widgetChip(
                              color: const Color(0xFFF3F4F6),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.format_list_bulleted),
                                padding: EdgeInsets.zero,
                                splashRadius: 16,
                                constraints: const BoxConstraints(
                                    maxWidth: 24, maxHeight: 24),
                              ),
                            ),
                            const SizedBox(width: 16),
                            widgetChip(
                              color: const Color(0xFFFEEEEB),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.fastfood_outlined,
                                    color: Colors.red,
                                    size: 18,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Breakfast',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            widgetChip(
                              color: const Color(0xFFF3F4F6),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: Image.asset(
                                      'assets/icon-paste.png',
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Noodles',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            pastaCard('food', context),
                            pastaCard('food2', context),
                            pastaCard('food3', context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pastaCard(tag, context) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AboutScreen(),
            ),
          );
        },
        child: Material(
          color: Colors.white,
          child: Container(
            width: 310,
            height: 400,
            margin: const EdgeInsets.all(8),
            child: Stack(
              children: [
                Positioned(
                  left: 14,
                  top: 14,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.5,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pasta Al Pomodoro with Basil',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Chip(
                          label: Text(
                            '\$6.30',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          backgroundColor: Colors.redAccent,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 8,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.20),
                        offset: const Offset(0, 3),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ], borderRadius: BorderRadius.circular(200)),
                    child: Image.asset(
                      'assets/pasta-circle.png',
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget widgetChip({child, color}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
