import 'package:flutter/material.dart';

import 'new_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text("Utils App"),
    //   ),
    //   // body: MySnackbar(),
    //   body: MyStepper(),
    // );

    return MyTabBar();
  }
}

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget _getTabBar() {
      return TabBar(
        tabs: [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.star)),
          Tab(icon: Icon(Icons.favorite)),
          Tab(icon: Icon(Icons.power_off)),
        ],
        controller: tabController,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: _getTabBar(),
        bottom: _getTabBar(),
      ),
      body: TabBarView(
        children: [
          NewPage(title: 'Page 1'),
          NewPage(title: 'Page 2'),
          NewPage(title: 'Page 3'),
          NewPage(title: 'Page 4')
        ],
        controller: tabController,
      ),
      bottomNavigationBar: Container(
        color: Colors.teal,
        child: _getTabBar(),
      ),
    );
  }
}

class MyStepper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stepper(
        steps: [
          Step(
            title: Text("Step 1 Title"),
            content: Text(
              "lorem test ci fsb ednfv mnsf sdv lorem test ci fsb ednfv mnsf sdv lorem test ci fsb ednfv mnsf sdvlorem test ci fsb ednfv mnsf sdvlorem test ci fsb ednfv mnsf sdv",
            ),
            isActive: true,
          ),
          Step(
            title: Text("Step 2 Title"),
            content: Text(
              "lorem test ci fsb ednfv mnsf sdv lorem test ci fsb ednfv mnsf sdv lorem test ci fsb ednfv mnsf sdvlorem test ci fsb ednfv mnsf sdvlorem test ci fsb ednfv mnsf sdv",
            ),
            isActive: true,
          ),
          Step(
            title: Text("Step 3 Title"),
            content: Text(
              "lorem test ci fsb ednfv mnsf sdv lorem test ci fsb ednfv mnsf sdv lorem test ci fsb ednfv mnsf sdvlorem test ci fsb ednfv mnsf sdvlorem test ci fsb ednfv mnsf sdv",
            ),
            isActive: true,
          ),
          Step(
            title: Text("Step 4 Title"),
            content: Text(
              "lorem test ci fsb ednfv mnsf sdv lorem test ci fsb ednfv mnsf sdv lorem test ci fsb ednfv mnsf sdvlorem test ci fsb ednfv mnsf sdvlorem test ci fsb ednfv mnsf sdv",
            ),
            isActive: true,
          ),
          Step(
            title: Text("Step 5 Title"),
            content: Text(
              "lorem test ci fsb ednfv mnsf sdv lorem test ci fsb ednfv mnsf sdv lorem test ci fsb ednfv mnsf sdvlorem test ci fsb ednfv mnsf sdvlorem test ci fsb ednfv mnsf sdv",
            ),
            isActive: true,
          )
        ],
        onStepContinue: () => print('onStepContinue'),
        onStepCancel: () => print('onStepCancel'),
        onStepTapped: (value) => print(value),
        currentStep: 2,
      ),
    );
  }
}

class MySnackbar extends StatelessWidget {
  final AlertDialog dialog = AlertDialog(
    content: Text('Dialog is up.'),
    title: Text('Welcome'),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
            color: Colors.pinkAccent,
            child: Text(
              'Click Me',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            // onPressed: () => Scaffold.of(context).showSnackBar(
            //   SnackBar(
            //     content: Text('You Clicked the button'),
            //     duration: Duration(milliseconds: 500),
            //   ),
            // ),

            onPressed: () => showDialog(context: context, child: dialog)),
      ),
    );
  }
}
