import 'package:delivery_app/pages/set_location.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_app/objects.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:delivery_app/main.dart';

class Welcome_slider extends StatefulWidget {
  const Welcome_slider({Key? key}) : super(key: key);

  @override
  State<Welcome_slider> createState() => _Welcome_sliderState();
}

class _Welcome_sliderState extends State<Welcome_slider> {
  @override


  final List<Sliders> information = [
    Sliders(title: 'All your shopping...Online!',body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',image_: 'images/ingredients.jpg'),
    Sliders(title: 'All your shopping...Online!',body: 'Complete shopping with just 3 clicks.', image_: 'images/medicalPharmacy.jpg'),
    Sliders(title: 'All your shopping...Online!',body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', image_: 'images/pixxa.jpg'),
  ];

  Widget build(BuildContext context) {
    double top_height = MediaQuery.of(context).size.height * 0.60;
    double bottom_height = MediaQuery.of(context).size.height * 0.40;
    final double height = MediaQuery.of(context).size.height;

    return CarouselSlider(
      options: CarouselOptions(
        height: height,
        viewportFraction: 1.0,
      ),
      items: information.map((info) => Builder(
          builder: (BuildContext context) {
            return MyCard(top_height, bottom_height, info);
          },
        )
      ).toList(),
    );
  }

  Widget MyCard(double height_t, double height_b, var info) {
    return Container(
        // width: MediaQuery.of(context).size.height,
        margin: EdgeInsets.symmetric(horizontal: 1.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: height_t,
              decoration: BoxDecoration(
                color: Colors.white10,
              ),
              child: Stack(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints.expand(),
                    child: Image.asset(info.image_, fit: BoxFit.cover,),
                    ),
                  Container(
                    child: new Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(48.0),
                        child: TextButton(
                            child: Text("SKIP"),
                            style: TextButton.styleFrom(
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontFamily: 'Futura Book',
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.w300
                            ),
                          ),
                          // onPressed: ()=>Navigator.pushReplacementNamed(context, '/set-location'),
                          onPressed: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SetLocation()))
                        ),
                      ),
                    )
                  )]
              ),
            ),
            Container(
              height: height_b,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[100]
              ),
              padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    info.title,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontFamily: 'Gotham Pro',
                        letterSpacing: 1.0
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28.0),
                    child: Text(
                      info.body,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontFamily: 'Futura Book',
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                  ),
                  Expanded(
                      child: new Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '...'
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: const Icon(Icons.arrow_forward),
                              backgroundColor: Colors.red[700],
                            )
                          ],
                        ),
                      )
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}
