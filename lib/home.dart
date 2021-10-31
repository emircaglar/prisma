import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/kursen.dart';
import 'package:untitled1/lehrer.dart';

import 'books.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,

         title: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Center(
             child: Container(child: Image.asset("images/prisma1.png",height: 50,),
             ),
           ),
           ),
         ),


      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            /*Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: RichText(
                text: TextSpan(
                  text:
                  'Prisma Lernzentrum - Homburg   ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: 'Sprache, Bildung, Integration            ',
                        style: TextStyle(color: Colors.grey,fontSize: 19)),

                    TextSpan(
                        text: '   Wir begleiten Sie auf Ihren persönlichen und beruflichen Bildungsweg. Lassen Sie sich bei uns bestmöglich fördern!',
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text('Prisma Lernzentrum - Homburg'),

                Text('Sprache, Bildung, Integration',style: TextStyle(fontSize: 20,color: Colors.grey),),

                Text('Wir begleiten Sie auf Ihren persönlichen und beruflichen Bildungsweg. Lassen Sie sich bei uns bestmöglich fördern!'),],),
            ),
/*
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Du bist",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeUserContainer(
                  media: media,
                  bottumText: 'Schuler',
                  buttomIcon: Icons.school,
                  color: Colors.green,
                ),
                HomeUserContainer(
                  media: media,
                  bottumText: 'Lehrer',
                  buttomIcon: Icons.cast_for_education,
                  color: Colors.blue,
                ),
              ],
            ),*/
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text("Optionen",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Startseite',
                        buttomIcon: 'images/a11.jpg',


                      ),
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Kurse',
                        buttomIcon: 'images/a11.jpg',
                          navigate: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Kursen()),
                            );
                          }
                      ),
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Books',
                        buttomIcon: 'images/a11.jpg',
                          navigate: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Books()),
                        );
                      }

                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Personen',
                        buttomIcon: 'images/a11.jpg',  navigate: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Lehrer()),
                        );
                      }
                      ),
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Über uns',
                        buttomIcon: 'images/a11.jpg',
                      ),
                      HomeoptionsContainer(
                        media: media,
                        bottumText: 'Kontakt',
                        buttomIcon: 'images/a11.jpg',
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeoptionsContainer extends StatelessWidget {
  const HomeoptionsContainer({
    Key? key,
    required this.media,
    required this.bottumText,
    required this.buttomIcon,
     this.navigate,
  }) : super(key: key);

  final Size media;
  final String bottumText;
  final String buttomIcon;
  final Function ()? navigate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),border:Border.all()),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
             Image.asset(buttomIcon,fit: BoxFit.fitHeight,),
              SizedBox(height: media.height * 0.02),
              Text(
                bottumText,
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
       width: media.width * .25,
       // height: media.height * .13,
      ),
    );
  }
}

class HomeUserContainer extends StatelessWidget {
  const HomeUserContainer({
    Key? key,
    required this.media,
    required this.bottumText,
    required this.buttomIcon,
    required this.color,
  }) : super(key: key);

  final Size media;
  final String bottumText;
  final IconData buttomIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),color: Colors.grey,border:Border.all() ),

          child: Icon(buttomIcon),
          width: media.width * .25,
          height: media.height * .13,
        ),
        SizedBox(height: media.height * 0.02),
        Text(bottumText)
      ],
    );
  }
}
