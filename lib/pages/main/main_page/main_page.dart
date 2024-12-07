
import 'package:flutter/material.dart';

import 'widgets/app_bar_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        context,
        title: "Search",
        onLeadingTapClickListener: () {
          setState(() {
            _scaffoldState.currentState!.openDrawer();
          });
        },
      ),
    );
  }
}
