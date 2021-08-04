import 'dart:collection';

import 'package:InstiApp/src/api/model/achievements.dart';
import 'package:InstiApp/src/bloc_provider.dart';
import 'package:InstiApp/src/drawer.dart';
import 'package:InstiApp/src/utils/common_widgets.dart';
import 'package:InstiApp/src/utils/title_with_backbutton.dart';
import 'package:flutter/material.dart';

class YourAchievementPage extends StatefulWidget {
  const YourAchievementPage({Key key}) : super(key: key);

  @override
  _YourAchievementPageState createState() => _YourAchievementPageState();
}

class _YourAchievementPageState extends State<YourAchievementPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  bool firstBuild = true;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var bloc = BlocProvider.of(context).bloc;
    if (firstBuild && bloc.currSession != null) {
      bloc.updateAchievements();
      firstBuild = false;
    }
    var fab;
    fab = FloatingActionButton.extended(
      icon: Icon(Icons.add_outlined),
      label: Text("Add Acheivement"),
      onPressed: () {
        Navigator.of(context).pushNamed("/achievements/add");
      },
    );
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      bottomNavigationBar: MyBottomAppBar(
        shape: RoundedNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              tooltip: "Show bottom sheet",
              icon: Icon(
                Icons.menu_outlined,
                semanticLabel: "Show bottom sheet",
              ),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: bloc.currSession == null
            ? Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    Icon(
                      Icons.cloud,
                      size: 200,
                      color: Colors.grey[600],
                    ),
                    Text(
                      "Login To View Achievements",
                      style: theme.textTheme.headline5,
                      textAlign: TextAlign.center,
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              )
            : RefreshIndicator(
                onRefresh: () => bloc.updateAchievements(),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: TitleWithBackButton(
                          child: Text(
                            "Your Acheivements",
                            style: theme.textTheme.headline4,
                          ),
                        ),
                      ),
                      StreamBuilder(
                        stream: bloc.achievements,
                        builder: (context,
                            AsyncSnapshot<UnmodifiableListView<Achievement>>
                                snapshot) {
                          if (snapshot.hasData) {
                            if (snapshot.data.length > 0) {
                              return SliverList(
                                delegate: SliverChildBuilderDelegate(
                                    (context, index) => AchListItem(
                                        achievement: snapshot.data[index]),
                                    childCount: snapshot.data.length),
                              );
                            } else {
                              return SliverToBoxAdapter(
                                child: Center(
                                  child: Text("No Achievements"),
                                ),
                              );
                            }
                          } else {
                            return SliverToBoxAdapter(
                              child: Center(
                                child: CircularProgressIndicatorExtended(
                                  label: Text("Getting your Achievements"),
                                ),
                              ),
                            );
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
      ),
      floatingActionButton: fab,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

class AchListItem extends StatefulWidget {
  final String title;
  final String company;
  final String icon;
  final String forText;
  final String importance;
  final bool isVerified;
  final bool isHidden;
  final Achievement achievement;
  AchListItem({
    Key key,
    this.achievement,
  })  : this.title = achievement.title,
        this.company = achievement.body.bodyName,
        this.icon = achievement.body.bodyImageURL,
        this.forText = achievement.event.eventName,
        this.importance = achievement.description,
        this.isVerified = achievement.verified,
        this.isHidden = achievement.hidden,
        super(key: key);

  @override
  _AchListItemState createState() => _AchListItemState();
}

class _AchListItemState extends State<AchListItem> {
  bool isSwitchOn = false;

  @override
  void initState() {
    print(widget.company);
    isSwitchOn = widget.isHidden;
    super.initState();
  }

  void toggleSwitch(bool value) {
    if (isSwitchOn) {
      setState(() {
        isSwitchOn = false;
      });
    } else {
      setState(() {
        isSwitchOn = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of(context).bloc;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefListItem(
          title: widget.title,
          company: widget.company,
          icon: widget.icon,
          forText: widget.forText,
          importance: widget.importance,
          isVerified: widget.isVerified,
        ),
        Row(
          children: [
            Switch(
              value: isSwitchOn,
              onChanged: (bool value) {
                toggleSwitch(value);
                bloc.updateHiddenAchievement(widget.achievement, value);
              },
              activeColor: Colors.yellow,
              activeTrackColor: Colors.yellow[200],
              inactiveThumbColor: Colors.grey[600],
              inactiveTrackColor: Colors.grey[400],
            ),
            Text("Hidden"),
          ],
        ),
        Divider(
          color: Colors.grey[600],
        ),
      ],
    );
  }
}

class DefListItem extends StatelessWidget {
  final String title;
  final String company;
  final String icon;
  final String forText;
  final String importance;
  final bool isVerified;
  const DefListItem({
    Key key,
    this.title,
    this.company,
    this.icon,
    this.forText,
    this.importance,
    this.isVerified,
  }) : super(key: key);

  Widget verifiedText() {
    if (isVerified) {
      return Text(
        "Verified",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      );
    } else {
      return Text(
        "Verification Pending",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            foregroundImage: NetworkImage(icon),
          ),
          title: Text(title),
          subtitle: Text(company),
        ),
        Row(
          children: [
            Text("For: "),
            Text(
              forText,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(importance),
        Row(
          children: [
            Text("Status: "),
            verifiedText(),
          ],
        ),
      ],
    );
  }
}
