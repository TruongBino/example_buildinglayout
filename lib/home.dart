import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.deepOrange),
          leading: IconButton(
            icon: Image.asset('assets/images/bars.png'),
            onPressed: () {},
          ),
          title: Center( // Sử dụng Center để căn giữa tiêu đề
            child: Text(
              'Your 90 days',
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/images/plus.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/bell.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/images/comment-dots.png'),
              onPressed: () {},
            ),
          ],
        ),
        body: BuildBody(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepOrange,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/home.png'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Consultant.png'),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Y99dDj.tif.png'),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/tr90.png'),
              label: 'TR90',
              ),
          ],
          showUnselectedLabels: false,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 16.0,
          unselectedFontSize: 14.0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }
}
class BuildBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            const Divider(color: Colors.deepOrangeAccent),
            Container(
              margin: EdgeInsets.only(top: 50),
                child: _HeaderImage()
            ),
            const Divider(),
            _healthInformation(),
            _cardformation(),
          ],
        ),
      ),
    );
  }
}
Column _HeaderImage() {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/unsplash_RDcEWH5hSDE.png'),
                  ),
                ),
                const Text(
                  'User Name',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Image.asset('assets/images/Group 1325.png'),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Image.asset('assets/images/Group 1326.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          RichText(
            text: const TextSpan(
              text: 'XX / 90',
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' Day(s)',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Physical index'),
          Image.asset('assets/images/gk60uK.tif.png'),
          Stack(
            children: [
              Container(
                width: 80,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('05/12/2022'),
              ),
            ],
          ),
          const SizedBox(
            width: 100,
            height: 100,
          ),
          Image.asset('assets/images/plus.png', width: 20, height: 20),
          Image.asset('assets/images/share.png', width: 20, height: 20),
        ],
      ),
    ],
  );
}
Column _healthInformation() {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(2),
                child: Image.asset('assets/images/vector.png'),
              ),
              const Text('Weight'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 50),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('0.00'),
              ),
              const Text('kg'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 100),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('-5 kg',style: TextStyle(
                  color: Colors.green,
                ),
                ),
              ),
            ],
          )
        ],
      ),
      const Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(2),
                child: Image.asset('assets/images/Group 1330.png'),
              ),
              const Text('BMI'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 95),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('105'),
              ),
              const Text('kg/m'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 100),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('103',style: TextStyle(
                  color: Colors.green,
                ),
                ),
              ),
            ],
          )
        ],
      ),
      const Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(2),
                child: Image.asset('assets/images/vector (1).png'),
              ),
              const Text('Body Fan'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 32),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('0.00'),
              ),
              const Text('%'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 100),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('00.0',style: TextStyle(
                  color: Colors.deepOrange,
                ),
                ),
              ),
            ],
          )
        ],
      ),
      const Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(2),
                child: Image.asset('assets/images/vector (2).png'),
              ),
              const Text('Visceral Fat'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 1),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('0.00'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 100),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('00.0',style: TextStyle(
                  color: Colors.green,
                ),
                ),
              ),
            ],
          )
        ],
      ),
      const Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(2),
                child: Image.asset('assets/images/vector (3).png'),
              ),
              const Text('Skeletal Muscle'),
            ],
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('0.00'),
              ),
              const Text('%'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 120),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('00.0',style: TextStyle(
                  color: Colors.green,
                ),
                ),
              ),
            ],
          )
        ],
      ),
      const Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(2),
                child: Image.asset('assets/images/Group 1332.png'),
              ),
              const Text('Waistline'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('0.00'),
              ),
              const Text('kg'),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 100),
                width: 50,
                height: 20,
                color: const Color.fromARGB(220, 220, 220, 220),
                alignment: Alignment.center,
                child: const Text('0.00',style: TextStyle(
                  color: Colors.green,
                ),
                ),
              ),
            ],
          )
        ],
      ),
      const Divider(),
      Container(
        margin: EdgeInsets.only(top: 20,bottom: 30),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Save',style: TextStyle(color: Colors.white),),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0), // Đặt bán kính bo góc tại đây
              ),
            ),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Legend:   '),
            Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
              ),
            ),
          Text('Doing well   '),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.deepOrange,
            ),
          ),
          Text('Constant   '),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
          Text('Need help   '),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Text('Last record   '),
        ],
      ),
      Container(
        margin: EdgeInsets.all(50),
        child: Column(
          children: [
            Wrap(
                children:
                [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'My Transformation \n',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Click here for testing guidelines.Your photos can be viewed by your Consultant. If you wish to disable that, proceed to setting for Configuration',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ],
        ),
      ),
    ],
  );
}
Row _cardformation(){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Day 1'),
                          _BoxCard(),
                          Text('Front'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Day 15'),
                          _BoxCard(),
                          Text('Front'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Day 60'),
                          _BoxCard(),
                          Text('Front'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('          Share', style: TextStyle(color: Colors.deepOrange)),
                  _BoxCard(),
                  Text('Slide'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('          Share', style: TextStyle(color: Colors.deepOrange)),
                  _BoxCard(),
                  Text('Slide'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('          Share', style: TextStyle(color: Colors.deepOrange)),
                  _BoxCard(),
                  Text('Slide'),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Day 7'),
                  _BoxCard(),
                  Text('Front'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Day 30'),
                  _BoxCard(),
                  Text('Front'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Day 90'),
                  _BoxCard(),
                  Text('Front'),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('          Share', style: TextStyle(color: Colors.deepOrange)),
                  _BoxCard(),
                  Text('Slide'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('          Share', style: TextStyle(color: Colors.deepOrange)),
                  _BoxCard(),
                  Text('Slide'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('          Share', style: TextStyle(color: Colors.deepOrange)),
                  _BoxCard(),
                  Text('Slide'),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
Container _BoxCard(){
  return Container(
    width: 80,
    height: 120,
    decoration: BoxDecoration(
      color: Color.fromARGB(232, 232, 232, 232),
      borderRadius: BorderRadius.circular(15), // Đặt bán kính bo góc là 10
    ),
    child: Image.asset('assets/images/plus.png'),
  );
}