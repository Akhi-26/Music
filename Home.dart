import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/Music/card.dart';
import 'package:demo/UI/Introduction_Page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Home extends StatelessWidget {
  var txt = [
    "Hot Hindi Hits",
    "Daily Mix 1",
    "Trending Now\n Tamil",
    "Charie(Original)",
    "Tamil x English\n Songs",
    "Trending Now\n Malayalam"
  ];

  var img = [
    "https://i.scdn.co/image/ab67706f00000002698894ab14938696261d9cd5",
    "https://dailymix-images.scdn.co/v2/img/ab6761610000e5ebd8b9980db67272cb4d2c3daf/1/en/default",
    "https://i.scdn.co/image/ab67706f00000002187a533a2f2945297ec2a402",
    "https://i.scdn.co/image/ab67616d0000b2735741b5ad37b57d61e106e106",
    "https://mosaic.scdn.co/300/ab67616d00001e0244d9dabab29dd5a5a57bc0cfab67616d00001e02f36ab14d5a0e4283e06e1c75ab67616d00001e02f376dc789733ee42f9d92638ab67616d00001e02faf3bd768fa92f99b6ccbd1c",
    "https://i.scdn.co/image/ab67706f00000002452b8c5c0a720e58d620b4ee"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Musify",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),
          actions: [
            SizedBox(width: 50, child: Icon(Icons.notifications)),
            SizedBox(width: 50, child: Icon(Icons.question_mark)),
            SizedBox(width: 50, child: Icon(Icons.settings))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.white), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books_outlined, color: Colors.white),
                label: "Library"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined, color: Colors.white),
                label: "Account")
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4, bottom: 8, top: 8),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: 4, bottom: 8),
                      child: Container(
                        height: 35,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[850]),
                        child: Center(
                            child: Text(
                          "Music",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[850]),
                        child: Center(
                            child: Text(
                          "Podcast & Shows",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 70, crossAxisCount: 2),
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[850]),
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5)),
                                    image: DecorationImage(
                                        image: NetworkImage(img[index]),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    txt[index],
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ));
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 200, bottom: 15),
                child: Text(
                  "Your Top Mixes",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Musicard(),
                      Romanticcard(),
                      Hindicard(),
                      Musicard(),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 200, top: 20, bottom: 15),
                child: Text(
                  "Romanchification",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Musicard(),
                      Romanticcard(),
                      Hindicard(),
                      Musicard(),
                    ],
                  )),
            ],
          ),
        ));
  }
}
