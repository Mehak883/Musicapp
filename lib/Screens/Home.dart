import 'package:flutter/material.dart';
import 'package:musicapp/Providers/HomeProv.dart';
import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('build');

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Consumer<HomeProv>(
                  builder: (context, value, child) {
                    return Text(
                      value.setGreet(),
                      style:
                        const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                    );
                  },
                ),
               const Icon(
                  Icons.more_vert_rounded,
                  size: 27,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5.5,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Popular Artist',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: const Text('see all',
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 25, 151, 255)))),
                      ],
                    ),
                    // SingleChildScrollView(child:
                    SizedBox(width: 500, height: 120, child: 
                    ListView.builder(itemCount: 10,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                      return  Padding(
                          padding: const EdgeInsets.only(right: 15,top: 10),
                          child: 
                          SizedBox(
                            // width: 60,
                            child: Column(
                              children: [
                                GestureDetector(onTap: (){},child: ClipOval(
                                  child: SizedBox(
                                    
                                    // color: Colors.pink,
                                    width: 60,
                                    height: 60,
                                  child: Image.asset('images/My_dp.jpg',fit: BoxFit.cover,)
                                  ),
                                )),const SizedBox(height: 5,),
                          const  Text('Mehak')
                              ],
                            ),
                          ),
                        
                      ); 
                    },))
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
