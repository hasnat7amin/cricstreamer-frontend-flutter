import 'package:cricstreamer/constants/text_styles.dart';
import 'package:cricstreamer/widgets/custom_drawer.dart';
import 'package:cricstreamer/widgets/drawer_list_tile.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Home extends StatefulWidget {
  bool showsearch = true;
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool _showsearch;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.showsearch = true;
    _showsearch = widget.showsearch;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _showsearch ? CustomDrawer() : null,
      appBar: AppBar(
        automaticallyImplyLeading: _showsearch,
        iconTheme: IconThemeData(color: gray_dark, size: 30),
        backgroundColor: white,
        titleSpacing: 0,
        shadowColor: gray,
        elevation: 1,
        title: _showsearch
            ? Text(
                "CRIC STREAMER",
                style: TextStyle(
                  color: gray_dark,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                child: TextField(

                    style: TextStyle(
                        fontSize: 18.0,
                        height: 1.0,
                        color: Colors.black
                    ),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    fillColor: gray_light,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      borderSide: BorderSide(color: gray_light, width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      borderSide: BorderSide(color: gray_light, width: 0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      borderSide: BorderSide(color: gray_light, width: 0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      borderSide: BorderSide(color: gray_light, width: 0),
                    ),
                    suffixIcon: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        setState(() {
                          _showsearch = !_showsearch;
                          print(_showsearch);
                        });
                      },
                      child: Icon(
                        Icons.search_rounded,
                        color: green_light,
                      ),
                    ),
                  ),
                ),
              ),
        actions: _showsearch
            ? [
                GestureDetector(
                  child: Icon(Icons.search_rounded),
                  onTap: () {
                    setState(() {
                      _showsearch = !_showsearch;
                      print(_showsearch);
                    });
                  },
                ),
                Padding(padding: EdgeInsets.only(right: 20))
              ]
            : null,
      ),
    );
  }
}
