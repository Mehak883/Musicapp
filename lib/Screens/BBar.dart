import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/Screens/Home.dart';
import 'package:musicapp/Screens/Person.dart';
import 'package:musicapp/Screens/Search.dart';
import 'package:musicapp/Screens/Favourite.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BBar extends StatefulWidget {
  const BBar({super.key});

  @override
  State<BBar> createState() => _BBarState();
}

class _BBarState extends State<BBar> {
  List<dynamic> icondata = [
    'Svgs/home.svg',
    CupertinoIcons.search,
    Icons.favorite_outline,
    'Svgs/person.svg'
  ];
  int selectedIndex = 0;
  final List<Widget> _pages = [Home(), const Search(), const Favourite(), const Person()];
  @override
  Widget build(BuildContext context) {
    // double screen_height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: Material(
        child: SizedBox(
          height: 60,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                    // ignore: avoid_print
                    print(selectedIndex);
                  },
                  child: Padding(
                      padding:
                        const  EdgeInsets.symmetric(horizontal: 39, vertical: 0),
                      child: selectedIndex == index
                          ? Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  icondata[index] is String
                                      ? SvgPicture.asset(
                                          icondata[index],
                                          // ignore: deprecated_member_use
                                          color:
                                              const Color.fromARGB(255, 25, 151, 255),
                                        )
                                      : Icon(
                                          icondata[index],
                                          color:
                                              const Color.fromARGB(255, 25, 151, 255),
                                          size: 28,
                                        ),
                                const  Text('.',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          height: 0.1,
                                          color:
                                              Color.fromARGB(255, 0, 144, 206)))
                                ],
                              ),
                            )
                          : icondata[index] is String
                              ? SvgPicture.asset(
                                  icondata[index],
                                  // ignore: deprecated_member_use
                                  color: Colors.black87,
                                  width: 26,
                                )
                              : Icon(icondata[index],
                                  color: Colors.black87, size: 28)));
            },
            itemCount: icondata.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
      body: _pages[selectedIndex],
    );
  }
}
