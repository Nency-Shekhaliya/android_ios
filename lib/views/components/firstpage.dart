import 'package:android_ios/screens/detailpage.dart';
import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          sugbox(name: "Recommended for you"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Mybox(
                    image:
                        "https://play-lh.googleusercontent.com/s5GouLUXk_86K6_eZ9th1Fq_o2_Qx-PE9QVD9-6tfpJvxS31exdCUS3qO5kFXT-fog",
                    appname: "Nest",
                    rate: "4.2 ",
                    image1:
                        'https://www.wikihow.com/images/thumb/0/05/Add-an-Account-to-the-Nest-App-Step-2.jpg/v4-460px-Add-an-Account-to-the-Nest-App-Step-2.jpg.webp',
                    image2:
                        'https://cms-assets.tutsplus.com/cdn-cgi/image/width=850/uploads/users/31/posts/27585/image/TestNest.jpg',
                    image3:
                        'https://is1-ssl.mzstatic.com/image/thumb/Purple112/v4/29/9d/7b/299d7b59-88a5-82e7-a2ac-6dc574a92f69/AppIcon-1x_U007emarketing-0-6-0-85-220.png/1200x600wa.png'),
                Mybox(
                    image:
                        "https://static.vecteezy.com/system/resources/previews/008/123/821/original/real-estate-logo-house-logo-home-logo-sign-symbol-free-vector.jpg",
                    appname: "Myapp",
                    rate: "3.0 ",
                    image1:
                        'https://i.ytimg.com/vi/TKrUmqyHHBE/maxresdefault.jpg',
                    image2:
                        'https://cdn.dribbble.com/users/749191/screenshots/5591313/output.gif',
                    image3:
                        'https://play-lh.googleusercontent.com/pDwCBuq-E5hqM6JWKwicKn25i0jgmiqG_y-G_k0UF04FCcmBDyOO_vQ2JtBZc72fkdw=w526-h296-rw'),
                Mybox(
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Spotify_App_Logo.svg/400px-Spotify_App_Logo.svg.png",
                    appname: "Spotify",
                    rate: "2.0",
                    image1:
                        'https://flutterfix.com/wp-content/uploads/2020/09/storify-app.png',
                    image2:
                        'https://images.macrumors.com/t/DRn3JIfCklVIKp7KbtQKB3a2l1U=/1600x900/smart/article-new/2019/06/spotify-june-2019.jpg',
                    image3:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRez_uLWaqwZjHSLSTFMrdUtis8fjF-iWwNSxCss-la3Pkt5KMjnH1saJroFTEBcVTruYU&usqp=CAU'),
                Mybox(
                    image:
                        "https://play-lh.googleusercontent.com/gcAQcWADEZsAU8DPXisFrTF2Y9eFNF-l7IZmYt0oOLK4vXewovKreaz6jEBG_2wWNw",
                    appname: "Tasty",
                    rate: "1.5",
                    image1:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc4yxVUDc1KeUEKg9NEjBTUugz9oeEg-_MHzKoWefsMgUVwDo07SrS8Z8es7_ZR7Ru0MI&usqp=CAU',
                    image2:
                        'https://cdn.dribbble.com/users/3103104/screenshots/6461655/dribbble_1_tasty_4x.png?compress=1&resize=400x300&vertical=top',
                    image3:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhQRBEthAR_-HEnFSAa-NSYGqTP7oXs8bYyw&usqp=CAU'),
              ],
            ),
          ),
          sugbox(name: "New & Updated apps"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Mybox(
                    image:
                        "https://i.pinimg.com/originals/76/00/8b/76008bb9685d410d47fe1fa01dc54f15.jpg",
                    appname: "Instagram",
                    rate: "4.5 ",
                    image1:
                        'https://about.fb.com/wp-content/uploads/2022/12/IG-Messaging-Stories-Bundle_Header.jpg',
                    image2:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe4KJVLQufcE0RIucN1nV-WoeOP-5xXmQHSrM8-7PkPbDF-frgpYDKaVCA7SGlzil-xUw&usqp=CAU',
                    image3:
                        'https://lh3.googleusercontent.com/EHNJetO1d134L09fQUyzZ_pstb57vMLN_mgo-8Y4P9rBod92WLQxZsFFOE0zCP4tt7eujQUwR_Oan0wyP0uhGVGf2w=w640-h400-e365-rj-sc0x00ffffff'),
                Mybox(
                    image:
                        "https://www.seekpng.com/png/detail/892-8926937_google-home-logo-google-home.png",
                    appname: "Google homes",
                    rate: "3.8 ",
                    image1:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPwtpJCAOtQXbQ4gdWuYl7Yyxf8Y5PLbdDgaUU_0g_IZ8EXx1G3pXSc3ERQu7rwBM3iUg&usqp=CAU',
                    image2:
                        'https://fdn.gsmarena.com/imgroot/news/22/10/google-announces-nest-doorbell-wifi-pro-home-app-updates/inline/-1200/gsmarena_001.jpg',
                    image3:
                        'https://i2.wp.com/9to5google.com/wp-content/uploads/sites/4/2022/10/Google-Home-app-redesign-Spaces.jpeg?ssl=1'),
                Mybox(
                    image:
                        "https://s3.us-east-1.amazonaws.com/cdn.designcrowd.com/blog/25-famous-app-logos-to-keep-you-amused/WhatsApp.png",
                    appname: "Whatsapp",
                    rate: "5.0",
                    image1:
                        'https://images.fonearena.com/blog/wp-content/uploads/2018/03/WhatsApp-Group-Description-1.jpg',
                    image2:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe4LUKPdcgG3EuM1pt8nuN5ceThHO07B4HHk3Px3N2C0LBDsgyHV7M0Y5KxhuDVk3r1LQ&usqp=CAU',
                    image3:
                        'https://laugardie.com/img/navegando%20la%20funcionalidad%202.png'),
                Mybox(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHlkN986a0tK4-XCYRbZlryXEIVDbEDL4a3Q&usqp=CAU",
                    appname: "Pintrest",
                    rate: "2.5",
                    image1:
                        'https://s.pinimg.com/images/facebook_share_image.png',
                    image2:
                        'https://www.wikihow.com/images/thumb/3/3a/Use-Pinterest-Step-2-Version-6.jpg/v4-460px-Use-Pinterest-Step-2-Version-6.jpg',
                    image3:
                        'https://upload.wikimedia.org/wikipedia/en/9/9c/Pinterest_home.png'),
              ],
            ),
          ),
          sugbox(name: "Suggested for you"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Mybox(
                    image:
                        "https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/facebook-app-icon.png",
                    appname: "Facebook",
                    rate: "4.9 ",
                    image1:
                        'https://api.time.com/wp-content/uploads/2019/05/fb-dating.png',
                    image2:
                        'https://mspoweruser.com/wp-content/uploads/2019/05/Facebook-redesign-1200x807.jpg',
                    image3:
                        'https://static-prod.adweek.com/wp-content/uploads/2020/07/FacebookPagesCurrentVsTest.jpg'),
                Mybox(
                    image:
                        "https://i.pinimg.com/originals/b3/8a/a1/b38aa1b21050b0e769a97eb751d12829.png",
                    appname: "Swiggy",
                    rate: "3.0 ",
                    image1:
                        'https://miro.medium.com/max/1400/1*DcnZtT2-PkHrWChVL3UymA.jpeg',
                    image2:
                        'https://miro.medium.com/max/1400/1*fKf-z5I-iPue-_q6TLROUg.jpeg',
                    image3:
                        'https://bstrategyhub.com/wp-content/uploads/2019/04/Pasted-Graphic-2.png'),
                Mybox(
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6uar84p0xLninfsXqx8FT6AHWv52EaTlPsQ&usqp=CAU",
                    appname: "Telegram",
                    rate: "2.0",
                    image1:
                        'https://www.appsdiary.webknowledgefree.com/wp-content/uploads//2020/01/5e2142999e726-Telegram.jpg',
                    image2:
                        'https://static.c.realme.com/IN/thread/1291080324322689024.png',
                    image3:
                        'https://o.aolcdn.com/hss/storage/midas/967e126dd17dfd9548ce71cef7667898/204802725/a7c0863af9ecc4b3af.jpeg'),
                Mybox(
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/8/80/Meesho_Logo_Full.png",
                    appname: "Meesho",
                    rate: "1.5",
                    image1:
                        'https://cdn.dribbble.com/users/11535587/screenshots/18738416/media/0337e7fb757ff4501c6e782734dd91a5.jpg?compress=1&resize=400x300',
                    image2:
                        'https://cdn.dribbble.com/users/980520/screenshots/4249195/product_reviews___ratings_still_2x.gif?compress=1&resize=400x300',
                    image3:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGaTzvGuXOo3X8aRl5AyNu9OTmGnc3OZcqPormqU6i64vLwzYRsUyLPxbQ9smrYFBnagA&usqp=CAU'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  sugbox({required String name}) => Container(
        height: 40,
        width: 330,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$name",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Icon(
              Icons.arrow_forward,
              size: 18,
              color: Colors.grey,
            ),
          ],
        ),
      );
  Mybox(
          {required String image,
          required String appname,
          required String rate,
          required String image1,
          required String image2,
          required String image3}) =>
      Row(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Route route = MaterialPageRoute(
                      builder: (context) => Detail_PAge(
                            image: image,
                            appname: appname,
                            rate: rate,
                            image1: image1,
                            image2: image2,
                            image3: image3,
                          ));
                  Navigator.push(context, route);
                },
                child: Container(
                  height: 100,
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            image,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Container(
                height: 40,
                width: 100,
                alignment: Alignment.centerLeft,
                child: Text(
                  "$appname\n ${rate} *",
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 10),
                ),
              )
            ],
          ),
        ],
      );
}
