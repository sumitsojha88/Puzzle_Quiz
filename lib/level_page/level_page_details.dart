import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puzzle_riddle_apti_app/constants.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/sidebar_layout.dart';
import 'package:puzzle_riddle_apti_app/screens/quiz/quiz_screen.dart';



class levelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
         leading: IconButton(
          icon: Icon(Icons.home,size: 35, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SideBarLayout()));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.cyan[50],
     // bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/money2.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Classic Riddles",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      " 1 Min Questions",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: Text(
                        "These are the riddles that make the rounds",
                      ),
                    ),
                  /*  SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: SearchBar(),
                    ),
                     */
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                    SizedBox(height: 20),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        LevelCard(
                          LevelNum: 1,
                          isDone: true,
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()));
                          },
                        ),
                        LevelCard(
                          LevelNum: 2,
                          isDone: false,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 3,
                          isDone: false,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 4,
                          isDone: false,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 5,
                          isDone: true,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 6,
                          isDone: false,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 7,
                          isDone: true,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 8,
                          isDone: true,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 9,
                          isDone: false,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 10,
                          isDone: true,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 11,
                          isDone: false,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 12,
                          isDone: true,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 13,
                          isDone: true,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 14,
                          isDone: false,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 15,
                          isDone: true,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 16,
                          isDone: false,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 17,
                          isDone: false,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 18,
                          isDone: false,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 19,
                          isDone: true,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 20,
                          isDone: true,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 21,
                          isDone: true,
                          press: () {},
                        ),
                        LevelCard(
                          LevelNum: 22,
                          isDone: false,
                          press: () {},
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LevelCard extends StatelessWidget {
  final int LevelNum;
  final bool isDone;
  final Function press;
  const LevelCard({
    Key key,
    this.LevelNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Level $LevelNum",
                      style: Theme.of(context).textTheme.subtitle,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}