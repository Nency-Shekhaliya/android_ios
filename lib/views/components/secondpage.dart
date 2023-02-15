import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  Color rbc1 = Colors.green.withOpacity(0.3);
  Color b1 = Colors.green.withOpacity(0.3);
  Color rbc2 = Colors.white;
  Color b2 = Colors.grey;
  Color rbc3 = Colors.white;
  Color b3 = Colors.grey;
  Color rbc4 = Colors.white;
  Color b4 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      rbc1 = Colors.green.withOpacity(0.3);
                      b1 = Colors.green.withOpacity(0.3);
                      rbc2 = Colors.white;
                      b2 = Colors.grey;
                      rbc3 = Colors.white;
                      b3 = Colors.grey;
                    });
                  },
                  child: Container(
                    height: 20,
                    width: 70,
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: rbc1,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: b1)),
                    child: const Text(
                      "Top free",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      rbc1 = Colors.white;
                      b1 = Colors.grey;
                      rbc2 = Colors.green.withOpacity(0.3);
                      b2 = Colors.green.withOpacity(0.3);
                      rbc3 = Colors.white;
                      b3 = Colors.grey;
                    });
                  },
                  child: Container(
                    height: 20,
                    width: 70,
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: rbc2,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: b2)),
                    child: const Text(
                      "Top grossing",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      rbc1 = Colors.white;
                      b1 = Colors.grey;
                      rbc2 = Colors.white;
                      b2 = Colors.grey;
                      rbc3 = Colors.green.withOpacity(0.3);
                      b3 = Colors.green.withOpacity(0.3);
                    });
                  },
                  child: Container(
                    height: 20,
                    width: 70,
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: rbc3,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: b3)),
                    child: const Text(
                      "Trending",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
            Mycon(
                name: "Bottel trip 3D",
                image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt-CmLZO53urUmA0-Wi7ryhR2aOwTPnkIKLA&usqp=CAU",
                subtitle: "tastypill",
                rate: ' 4.3 *'),
            Mycon(
                name: "Tample Run 2",
                image:
                    "https://e7.pngegg.com/pngimages/15/857/png-clipart-temple-run-2-app-store-android-subway-surfer-smiley-fictional-character.png",
                subtitle: "A1 GAMES FZ",
                rate: ' 3.3 *'),
            Mycon(
                name: "Traffic Run",
                image:
                    "https://play-lh.googleusercontent.com/X_ujJN7ApuI65sWIpy7jQKy6RlYrEJ2gNsyEt5obdk-hXQLhQ3lW9PezYwXH1YcAsA=w240-h480-rw",
                subtitle: "Tokyo",
                rate: ' 2.0 *'),
            Mycon(
                name: "Stack Ball",
                image:
                    "https://play-lh.googleusercontent.com/3pf26YI4SRN_Uk72hQeHJHbv57xOKOVEThflyjzoM6OegOxEolE8lGCImYz7DC9bv4w",
                subtitle: "Saygames",
                rate: ' 5.5 *'),
            Mycon(
                name: "Rope Around",
                image:
                    "https://play-lh.googleusercontent.com/OlvqC7O-DiPtDJlYVLFHlmSRDxjLPkPBNCcKf7jZOnuJvkLNJKmR6UHMGmOOZDwBqc4",
                subtitle: "Good job games",
                rate: ' 3.1 *'),
            Mycon(
                name: "Run Race 3D",
                image:
                    "https://play-lh.googleusercontent.com/KIE26FLMZA8DDRpWF7hqI1xsUPo7mkvNE5CIY6tUDRDkQh64U2oAXa5C7sgIjDAdi_w",
                subtitle: "tastypill",
                rate: ' 2.3 *'),
            Mycon(
                name: "House Paint",
                image:
                    "https://play-lh.googleusercontent.com/MNT_GLLV_NHy0Q4GV6RYZMOlDpRdNIHxsrqv1iWEkoh9xYhrwY0_z0x6EDHWacLzLJw",
                subtitle: "tastypill",
                rate: ' 1.3 *'),
            Mycon(
                name: "Run",
                image:
                    "https://logos-world.net/wp-content/uploads/2022/05/Logo-Subway-Surfers.png",
                subtitle: "tastypill",
                rate: ' 2.6 *'),
          ],
        ),
      ),
    );
  }

  Mycon(
          {required String name,
          required String image,
          required String subtitle,
          required String rate}) =>
      Container(
          height: 80,
          width: 330,
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(image),
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                width: 10,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(text: '$name\n', style: const TextStyle(fontSize: 16)),
                TextSpan(
                    text: "$subtitle\n",
                    style: const TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(
                    text: '$rate',
                    style: const TextStyle(fontSize: 12, color: Colors.grey))
              ]))
            ],
          ));
}
