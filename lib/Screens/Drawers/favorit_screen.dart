import 'package:flutter/material.dart';
import 'package:moumen_app_ui/Screens/Tabs/first_tab.dart';
import 'package:moumen_app_ui/Screens/Tabs/scand_tab.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(controller: _tabController, tabs: [
          const Tab(
            text: "First ",
          ),
          const Tab(
            text: "Scand ",
          )
        ]),
      ),
      body: Custom_Tab_View(tabController: _tabController),
    );
  }
}

class Custom_Tab_View extends StatelessWidget {
  const Custom_Tab_View({
    Key? key,
    required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(controller: _tabController, children: [
      FirstTab(


      ),
        ScandTab(),
    ]);
  }
}
