import 'package:flutter/material.dart';

import 'package:my_profile/page/home/leaderborder/leaderborder_page_provider.dart';
import 'package:provider/provider.dart';

class LeaderPage extends StatefulWidget {
  const LeaderPage({super.key});

  @override
  State<LeaderPage> createState() => _LeaderPageState();
}

class _LeaderPageState extends State<LeaderPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LeaderPageProvider>(
      create: (context) => LeaderPageProvider(),
      child: Consumer<LeaderPageProvider>(
        builder: (context, value, child) => Scaffold(
          body: _body(),
        ),
      ),
    );
  }

  _body() {
    return Scaffold();
  }
}
