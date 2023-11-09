import 'package:flutter/material.dart';

class Retailer extends StatefulWidget {
  const Retailer({Key? key}) : super(key: key);

  @override
  State<Retailer> createState() => _RetailerState();
}

class _RetailerState extends State<Retailer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: colored_box());
  }

  Widget colored_box (){
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: ColoredBox(
        color: (Colors.white),
        child: OutlinedButton(
          onPressed: () {
            debugPrint('About to push named route ');
            Navigator.pushNamed(context, '/retailer-details');
            // Navigator.pushNamed(context, '/health_and_hygeine_awareness');
            // Navigator.of(context,rootNavigator: true).pushNamed('/health_and_hygeine_awareness');
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const HealthAndHygieneForm()),
            // );
            print('pushed');
          },
          style: OutlinedButton.styleFrom(
              side: BorderSide(width: 0.4, color: Colors.grey.shade300),
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    // side: BorderSide(color: Colors.red)
                  ),
              padding: EdgeInsets.symmetric(horizontal: 5.0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: Image(fit: BoxFit.fitWidth, image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'), height: 120)),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Retailer Name",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontFamily: 'Gotham Pro',
                                // letterSpacing: 0.5,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0,),
                      Row(
                        children: [
                          Text(
                            "30mins - 40mins",
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black38,
                                decoration: TextDecoration.none,
                                fontFamily: 'Gotham Pro',
                                // letterSpacing: 0.5,
                                // fontWeight: FontWeight.w900
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0,),
                      Row(
                        children: <Widget>[
                          Icon(
                              Icons.delivery_dining_outlined,
                              color: Colors.black87,
                          ),
                          SizedBox(width: 5.0,),
                          Text(
                            "ghc 12.00",
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black38,
                              decoration: TextDecoration.none,
                              fontFamily: 'Gotham Pro',
                              // letterSpacing: 0.5,
                              // fontWeight: FontWeight.w900
                            ),
                          ),
                          Spacer(),
                          Text(
                            "4.0",
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              fontFamily: 'Gotham Pro',
                              // letterSpacing: 0.5,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(width: 5.0,),
                          Icon(
                            Icons.star,
                            color: Colors.amber
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
