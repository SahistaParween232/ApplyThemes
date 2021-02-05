import 'package:applythemes/ResponsiveBodyWidget.dart';
import 'package:flutter/material.dart';

import 'ResponsivePage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResponsivePage(
            widget: bottomWithBodyWidget(context, _homeContent(context))));
  }

  //todo home content widget
  Widget _homeContent(context) {
    return Container(
      padding: EdgeInsets.all(50),
      color: Colors.black12,
      child: Column(
        children: [
          Text('Vams3.1 dkdkdkdkdkkdkddkkdkkdkdkdkdkkdkkdkdkdkdkkdkdkd'
              'fhfhhfhfhfhfhfhfhhfhfhhfhhfhfhfhhfhfhfhfhhfhfhfhhfhfh'
              'dgdgdgdggdgdgdgggddggggggggggghhhhhhhhhhhhhhhhhhhhhhhh'
              'dfghjklllllllllllllllllllllllllllllll',
          style: TextStyle(
            color: Colors.cyan,
            fontSize: 18,
          ),),
          SizedBox(height: 15,),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              icon: const Icon(Icons.person),
              hintText: 'name',
              labelText: 'name',
            ),
          ),
          SizedBox(height: 15,),
          RaisedButton(
            textColor: Colors.cyan,
            child: Text('dfghjklllllllllllllllllllllllllllllll'),
              onPressed: (){})
        ],
      ),
    );
  }
}
