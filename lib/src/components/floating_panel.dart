import 'package:flutter/material.dart';

import 'package:sliding_up_panel/sliding_up_panel.dart';

class FloatingPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SlidingUpPanel(
        minHeight: (MediaQuery.of(context).size.height * 50) / 100,
        panel: _scrollingList(),
      ),
    );
  }

  Widget _scrollingList(){
    return Container(
      //adding a margin to the top leaves an area where the user can swipe
      //to open/close the sliding panel
      padding: const EdgeInsets.only(top: 20.0),

      color: Colors.white,
      child: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int i){
          return Container(
            padding: const EdgeInsets.all(12.0),
            child: Text('$i'),
          );
        },
      ),
    );
  }
}
