// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_payment_apps/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: properties
  int selectedIndex = -1;

  // TODO: widget header
  Widget headerWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          // TODO: header image
          Center(
            child: Image.asset(
              "assets/icon_one.png",
              width: 260,
              height: 200,
            ),
          ),
          SizedBox(
            height: 30,
          ),

          // TODO: text title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: text kiri title
              Text(
                "Upgrade to",
                style: titleStyle,
              ),
              SizedBox(
                width: 6,
              ),
              // TODO: text "pro" kanan title
              Text(
                "Pro",
                style: titleStyle.copyWith(color: orangeColor),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),

          // TODO: subtitle
          Text(
            "Go unlock all features and \nbuild your own business bigger",
            textAlign: TextAlign.center,
            style: subTitleStyle,
          ),
        ],
      ),
    );
  }

  // TODO: widget Option
  Widget optionWidget({
    int index,
    String tittle,
    String subTitle,
    String price,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selectedIndex == index ? blueColor : darkBlue,
            )),

        // TODO: isi content di dalam containernya
        child: Column(
          children: [
            // TODO: untuk konten ke sampingnya
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TODO: mengecek selectedIndex dengan index untuk menampilkan gambar
                selectedIndex == index
                    ? Image.asset(
                        "assets/check_second.png",
                        width: 18,
                        height: 18,
                      )
                    : Image.asset(
                        "assets/check.png",
                        width: 18,
                        height: 18,
                      ),
                SizedBox(width: 16),

                // TODO: Content in the box of optional
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tittle,
                      style: contentStyle,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      subTitle,
                      style: subContentStyle,
                    ),
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Text(
                  price,
                  style: priceStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  // TODO: widget button
  Widget button() {
    return Container(
      width: 237,
      height: 52,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(70),
            ),
            primary: blueColor,
            shadowColor: Colors.white,
            elevation: 5,
          ),
          onPressed: () {
            showConfirmation();
          },
          child: Text(
            "Checkout Now",
            style: buttonStyle,
          )),
    );
  }

  // TODO: show Alert Dialog
  Future<void> showConfirmation() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Are you want upgrade to premium'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Yes'),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // TODO; mengubah behavior dari glow menjadi bouncing scroll efek
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            headerWidget(),
            SizedBox(
              height: 35,
            ),
            optionWidget(
              index: 0,
              tittle: "Monthly",
              subTitle: "Good for starting up",
              price: "\$20",
            ),
            SizedBox(
              height: 20,
            ),
            optionWidget(
              index: 1,
              tittle: "Quarterly",
              subTitle: "Focusing on building",
              price: "\$55",
            ),
            SizedBox(
              height: 20,
            ),
            optionWidget(
              index: 2,
              tittle: "Yearly",
              subTitle: "Steady a company",
              price: "\$220",
            ),
            SizedBox(
              height: 40,
            ),
            selectedIndex == -1 ? Container() : button(),
          ],
        ),
      ),
    );
  }
}
