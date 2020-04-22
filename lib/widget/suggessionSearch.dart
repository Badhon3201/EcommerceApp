import 'package:flutter/material.dart';
class suggessionSearch extends StatefulWidget {
  @override
  _suggessionSearchState createState() => _suggessionSearchState();
}

class _suggessionSearchState extends State<suggessionSearch> {
  List<bool> isSelected = List.generate(5, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        selectedBorderColor: Colors.blue,
        renderBorder: false,
        fillColor: Colors.transparent,
        children: <Widget>[
          /*RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)
            ),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.grey[300],Colors.grey[500]]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0))
              ),
              child: Container(
                constraints: BoxConstraints(
                    maxHeight: 36,
                    minWidth: 118
                ),
                alignment: Alignment.center,
                child: Text(
                  'IphoneX',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue[900],
                  ),
                ),
              ),
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)
            ),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.grey[300],Colors.grey[500]]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0))
              ),
              child: Container(
                constraints: BoxConstraints(
                    maxHeight: 36,
                    minWidth: 118
                ),
                alignment: Alignment.center,
                child: Text(
                  'IphoneX',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue[900],
                  ),
                ),
              ),
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)
            ),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.grey[300],Colors.grey[500]]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0))
              ),
              child: Container(
                constraints: BoxConstraints(
                    maxHeight: 36,
                    minWidth: 118
                ),
                alignment: Alignment.center,
                child: Text(
                  'IphoneX',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue[900],
                  ),
                ),
              ),
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)
            ),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.grey[300],Colors.grey[500]]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(80.0))
              ),
              child: Container(
                constraints: BoxConstraints(
                    maxHeight: 36,
                    minWidth: 118
                ),
                alignment: Alignment.center,
                child: Text(
                  'IphoneX',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue[900],
                  ),
                ),
              ),
            ),
          ),*/
          Icon(Icons.sentiment_very_dissatisfied, size: 36,),
          Icon(Icons.sentiment_dissatisfied, size: 36,),
          Icon(Icons.sentiment_neutral, size: 36,),
          Icon(Icons.sentiment_satisfied, size: 36,),
          Icon(Icons.sentiment_very_dissatisfied, size: 36,),
        ],
        isSelected: isSelected,
        onPressed: (int index){
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
      ),
    );
  }
}
