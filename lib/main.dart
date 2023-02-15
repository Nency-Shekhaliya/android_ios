import 'package:android_ios/views/components/firstpage.dart';
import 'package:android_ios/views/components/fourpage.dart';
import 'package:android_ios/views/components/secondpage.dart';
import 'package:android_ios/views/components/thirdpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyA_IAPP());
}

class MyA_IAPP extends StatefulWidget {
  const MyA_IAPP({Key? key}) : super(key: key);

  @override
  State<MyA_IAPP> createState() => _MyA_IAPPState();
}

class _MyA_IAPPState extends State<MyA_IAPP> with TickerProviderStateMixin {
  late TabController _tabController;
  DateTime Date = DateTime.now();
  int _currentindex = 0;
  List<Map> Name = [
    {'name': 'For you'},
    {'name': 'Top charts'},
    {'name': 'Categories'},
    {'name': "Children"}
  ];
  List<Map> MyIcons = [
    {'icon': Icons.games_outlined, 'lable': "Games"},
    {'icon': Icons.apps, 'lable': "Apps"},
    {'icon': Icons.movie_creation_outlined, 'lable': "Movies & TV"},
    {'icon': Icons.book_outlined, 'lable': "Books"},
  ];
  bool isandroid = true;
  int i = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: Name.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return isandroid
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: Container(
                  height: 40,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                          spreadRadius: 0.5, blurRadius: 1, color: Colors.grey)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.menu,
                        color: Colors.black54,
                      ),
                      const Text(
                        "Search for app & games",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const Icon(
                        Icons.mic_none,
                        color: Colors.black54,
                      ),
                      Switch(
                          value: isandroid,
                          onChanged: (val) {
                            setState(() {
                              isandroid = val;
                            });
                          })
                    ],
                  ),
                ),
                backgroundColor: Colors.white,
                bottom: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  indicatorColor: Colors.green.shade800,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.green.shade800,
                  onTap: (i) {
                    setState(() {
                      _currentindex = i;
                    });
                  },
                  tabs: Name.map((e) => Tab(
                        height: 50,
                        text: e['name'],
                      )).toList(),
                ),
              ),
              body: TabBarView(controller: _tabController, children: const [
                firstpage(),
                secondpage(),
                Thirdpage(),
                FourthPage()
              ]),
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: _currentindex,
                  selectedItemColor: Colors.green.shade800,
                  unselectedIconTheme: const IconThemeData(color: Colors.grey),
                  unselectedItemColor: Colors.grey,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index) {
                    setState(() {
                      _currentindex = index;
                    });
                  },
                  items: MyIcons.map(
                    (e) => BottomNavigationBarItem(
                        icon: Icon(
                          e['icon'],
                        ),
                        label: e['lable']),
                  ).toList()),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            theme: const CupertinoThemeData(
              brightness: Brightness.light,
            ),
            home: Builder(
              builder: (context) => CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    border: Border.all(color: CupertinoColors.white),
                    backgroundColor: CupertinoColors.white,
                    middle: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Friday,August 12",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              letterSpacing: 0.8),
                        )),
                    trailing: CupertinoSwitch(
                        value: isandroid,
                        onChanged: (val) {
                          setState(() {
                            isandroid = val;
                          });
                        }),
                  ),
                  child: CupertinoTabScaffold(
                    backgroundColor: CupertinoColors.white,
                    tabBar: CupertinoTabBar(
                      backgroundColor: CupertinoColors.white,
                      items: const [
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.today), label: "Today"),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.game_controller_solid),
                            label: "Games"),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.app_fill), label: 'Apps'),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.arrow_up_square_fill),
                            label: 'Updates'),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.search), label: "Search"),
                      ],
                    ),
                    tabBuilder: (context, i) {
                      if (i == 0) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              CupertinoNavigationBar(
                                backgroundColor: CupertinoColors.white,
                                middle: Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "Today",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                                trailing: const CircleAvatar(
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80"),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                height: 450,
                                width: 330,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://www.91-cdn.com/hub/wp-content/uploads/2022/11/Play-hidden-games-on-Google-for-free-1200x900.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                height: 450,
                                width: 330,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://i.guim.co.uk/img/media/7c2ab1a3e60e445caf0a4d3de302591e830e8f7f/0_0_3800_2280/master/3800.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=49331bc571155fab736c3ce179f31770"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ],
                          ),
                        );
                      } else if (i == 1) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              CupertinoNavigationBar(
                                backgroundColor: CupertinoColors.white,
                                middle: Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "Games",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                                trailing: const CircleAvatar(
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80"),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [
                                  Myiosboxl(
                                      image3:
                                          "https://images.ctfassets.net/vfkpgemp7ek3/3830973376/fdc92f674131936411134d6bb22ecdc0/number-one-apps.jpg",
                                      title: "NEW GAME"),
                                  Myiosboxl(
                                      image3:
                                          "https://static-prod-web.miniclip.com/assets/news/17_PR_SYBO.jpg",
                                      title: "NEW GAME"),
                                  Myiosboxl(
                                      image3:
                                          "https://cdn1.epicgames.com/spt-assets/581b8af82db34e5c98f5dae3ed5b9904/warpips-offer-1pcp0.jpg?h=480&resize=1&w=854",
                                      title: "NEW GAME"),
                                ]),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                height: 50,
                                width: 330,
                                decoration: const BoxDecoration(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Discover AR Gaming",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "See All",
                                      style: TextStyle(
                                          color: CupertinoColors.activeBlue,
                                          fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                              Myiosbox(
                                  image:
                                      "https://i.pinimg.com/474x/3b/f6/b8/3bf6b85778987157b3e19b948a0c8982.jpg",
                                  Name: "King of pool",
                                  image1:
                                      "https://i.pinimg.com/originals/f8/89/8e/f8898e79f66ec9545847915a2b306594.jpg",
                                  Name1: "Games"),
                              Myiosbox(
                                  image1:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCAdc-THY1gG1tsCOeWQVOaSl6II0eUkueQA&usqp=CAU",
                                  Name1: "Solts",
                                  image:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQACu-pn7Ra0Z5LRqXVykf3JSUBM04NRxKyRIm10_WBo0mJnRDAW6QtZ1uhTwBRuKSsPTM&usqp=CAU",
                                  Name: "Temple Run"),
                              Myiosbox(
                                  image:
                                      "https://img.buzzfeed.com/buzzfeed-static/static/2020-05/1/22/enhanced/9cfebabe169d/enhanced-88-1588373971-7.png?output-format=jpg&output-quality=auto",
                                  Name: "Candy Crush",
                                  Name1: "Morning",
                                  image1:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShy9N0S0t7NBzzPQ1s9baAE_KR7bJbZVqX2g&usqp=CAU"),
                              Myiosbox(
                                  image:
                                      "https://i.pinimg.com/originals/a3/d6/db/a3d6db693a44867583295c737caa38f3.png",
                                  Name1: "Clash of clan",
                                  image1:
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMfNa-p-9pSzKpgf6Gi2A5mgMn6mmfVaPSrECRTslSZIJIKr4OnpqnIPgpjF3NFNRoMzk&usqp=CAU',
                                  Name: "Spin"),
                            ],
                          ),
                        );
                      } else if (i == 2) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              CupertinoNavigationBar(
                                backgroundColor: CupertinoColors.white,
                                middle: Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "Apps",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                                trailing: const CircleAvatar(
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aW5kaWFuJTIwZ2lybHxlbnwwfHwwfHw%3D&w=1000&q=80"),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Myiosboxl(
                                        image3:
                                            "https://cdn.pixabay.com/photo/2015/10/30/10/03/app-1013616_960_720.jpg",
                                        title: "NOW WITH SIRI"),
                                    Myiosboxl(
                                        image3:
                                            "https://theappcompany.com/wp-content/uploads/2015/12/secret-of-mobile-apps.jpg",
                                        title: "NOW WITH SIRI"),
                                    Myiosboxl(
                                        image3:
                                            "https://www.apple.com/newsroom/images/product/apps/standard/Apple-App-Store-Awards-2022-Trophy_inline.jpg.slideshow-xlarge_2x.jpg",
                                        title: "NOW WITH SIRI"),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 15),
                                height: 50,
                                width: 330,
                                decoration: const BoxDecoration(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Discover AR Gaming",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "See All",
                                      style: TextStyle(
                                          color: CupertinoColors.activeBlue,
                                          fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                              Myiosbox(
                                  image:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl8fZutu_L-a_V13chRBwNgppgQg9WbgU-cw&usqp=CAU",
                                  Name: "App Store",
                                  image1:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkqEiNKz3qLA4KZ7r8HjflxLHEPRlsYtcYcg&usqp=CAU",
                                  Name1: "Spotify"),
                              Myiosbox(
                                  image1:
                                      "https://i.pinimg.com/736x/39/6c/d8/396cd8e1d8557f73c786892cffa4f13c--ios-logo-app-icon-logo.jpg",
                                  Name1: "U",
                                  image:
                                      "https://images.macrumors.com/t/MHxdMZl4fZJxDJHgK90uV4cVrzQ=/1600x/article-new/2018/03/2013-08-26_09-38-25__Phone_iOS7_App_Icon_Rounded-250x250.jpg",
                                  Name: "Phone"),
                              Myiosbox(
                                  image:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUAwuNRP8tcqzwLsQ9ED_hPqKfSZRjbjAkHA&usqp=CAU",
                                  Name: "Netflix",
                                  Name1: "Ios",
                                  image1:
                                      "https://images.macrumors.com/t/eZvRrgIGjNbxWTp75DpFPtI9KQw=/1600x/article-new/2020/07/shortcuts-icon.jpg"),
                              Myiosbox(
                                  image:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ87GIM0rKY-ADtQWEYmJer-hG1zJH19Jooxg&usqp=CAU",
                                  Name1: "Instgram",
                                  image1:
                                      'https://cdn.pixabay.com/photo/2016/08/09/17/52/instagram-1581266__340.jpg',
                                  Name: "Facebook"),
                            ],
                          ),
                        );
                      } else if (i == 3) {
                        return Container(
                          color: Colors.purple,
                        );
                      }
                      return Container(
                        color: Colors.amber,
                      );
                    },
                  )),
            ),
          );
  }

  Myiosbox(
          {required String image,
          required String Name,
          required String image1,
          required String Name1}) =>
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 70,
              width: 330,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage("$image"),
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Name),
                        const Text(
                          "Ultimate of Pool",
                          style: TextStyle(
                              fontSize: 12, color: CupertinoColors.systemGrey),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 10),
                          height: 25,
                          width: 70,
                          decoration: BoxDecoration(
                              color:
                                  CupertinoColors.systemGrey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "GET",
                            style: TextStyle(
                                color: CupertinoColors.systemBlue,
                                fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              height: 70,
              width: 330,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(image1),
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Name1),
                        const Text(
                          "Ultimate of Pool",
                          style: TextStyle(
                              fontSize: 12, color: CupertinoColors.systemGrey),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 10),
                          height: 25,
                          width: 70,
                          decoration: BoxDecoration(
                              color:
                                  CupertinoColors.systemGrey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "GET",
                            style: TextStyle(
                                color: CupertinoColors.systemBlue,
                                fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  Myiosboxl({required String image3, required String title}) =>
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 10, top: 10, bottom: 10),
                  height: 70,
                  width: 330,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "${title}\n",
                            style: const TextStyle(
                                fontSize: 8,
                                color: CupertinoColors.activeBlue)),
                        const TextSpan(text: "Warhammer AoS:Realm War\n"),
                        const TextSpan(
                            text: "Compete in thrilling battles\n",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                      image: DecorationImage(
                          image: NetworkImage("${image3}"), fit: BoxFit.cover)),
                ),
              ],
            ),
          ],
        ),
      );
}
