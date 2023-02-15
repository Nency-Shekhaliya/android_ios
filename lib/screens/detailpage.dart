import 'package:flutter/material.dart';

class Detail_PAge extends StatefulWidget {
  String image;
  String appname;
  String rate;
  String image1;
  String image2;
  String image3;
  Detail_PAge(
      {Key? key,
      required String this.image,
      required String this.appname,
      required String this.rate,
      required String this.image1,
      required String this.image2,
      required String this.image3})
      : super(key: key);

  @override
  State<Detail_PAge> createState() => _Detail_PAgeState();
}

class _Detail_PAgeState extends State<Detail_PAge> {
  List<Map> images = [
    {
      'image1': "https://s.pinimg.com/images/facebook_share_image.png",
      'image2':
          "https://www.wikihow.com/images/thumb/3/3a/Use-Pinterest-Step-2-Version-6.jpg/v4-460px-Use-Pinterest-Step-2-Version-6.jpg",
      'image3':
          "https://upload.wikimedia.org/wikipedia/en/9/9c/Pinterest_home.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        elevation: 0,
        actions: [
          const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(widget.image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 60,
                      width: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.appname,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Noodlecake Studios Inc",
                            style: TextStyle(
                                fontSize: 12, color: Colors.green.shade800),
                          ),
                          const Text(
                            "Contains add . In app Purchases",
                            style: TextStyle(fontSize: 10, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 30,
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: "${widget.rate}*\n"),
                              const TextSpan(
                                  text: "954k reviews",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 30,
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: "5M+\n"),
                              TextSpan(
                                  text: "Downloads",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 30,
                        child: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: "E\n",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: "Everyone",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                width: 315,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  "Install",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: images
                        .map(
                          (e) => Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(10),
                                height: 250,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage(widget.image1))),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(10),
                                height: 250,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(widget.image2))),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(10),
                                height: 250,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(widget.image3))),
                              ),
                            ],
                          ),
                        )
                        .toList()),
              ),
              Container(
                height: 40,
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "About this game",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                padding: const EdgeInsets.only(left: 5),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Discover the endless desert",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: const Text(
                      "Action",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 90,
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: const Text(
                      "Editor's choice",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 40,
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Rating & reviews",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      child: Text(
                        widget.rate,
                        style: const TextStyle(fontSize: 50),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  '5',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                  width: 5,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      height: 8,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green.shade800,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  '4',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                  width: 5,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      height: 8,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green.shade800,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  '3',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                  width: 5,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      height: 8,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green.shade800,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  '2',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                  width: 5,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      height: 8,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green.shade800,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  '1',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 5,
                                  width: 5,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green.shade800,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
