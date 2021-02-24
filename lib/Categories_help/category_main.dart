import 'package:flutter/material.dart';
import 'package:puzzle_riddle_apti_app/Categories_help/category_page_aptitude.dart';
import 'package:puzzle_riddle_apti_app/Categories_help/category_page_gk.dart';
import 'package:puzzle_riddle_apti_app/Categories_help/category_page_logo.dart';
import 'package:puzzle_riddle_apti_app/Categories_help/category_page_puzzle.dart';
import 'package:puzzle_riddle_apti_app/Categories_help/category_page_riddle.dart';
import 'package:puzzle_riddle_apti_app/menu_bar/navigation.dart';




class MyHomePage extends StatefulWidget  with NavigationStates  {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
       /* leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {},
        ), */
        title: Text('DASHBOARD',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 30.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),


      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('  Categories',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
           labelColor:   Color(0xFF00838F),
           // labelColor: Colors.blue,
            //  labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Puzzles',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Riddles',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('General Knowledge',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Aptitude',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Logo',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    Categorypuzzle(),
                    Categoryriddle(),
                    Categorygk(),
                    Categoryapti(),
                    Categorylogo(),
                  ]
              )
          )
        ],
      ),

    );
  }
}