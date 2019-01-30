import 'dart:collection';

import 'package:InstiApp/src/blocs/drawer_bloc.dart';
import 'package:InstiApp/src/blocs/ia_bloc.dart';
import 'package:InstiApp/src/routes/userpage.dart';
import 'package:InstiApp/src/utils/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:InstiApp/src/api/model/user.dart';
import 'package:InstiApp/src/bloc_provider.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:InstiApp/src/api/model/notification.dart' as ntf;

// A Navigation Drawer
class NavDrawer extends StatefulWidget {
  static void setPageIndex(InstiAppBloc bloc, int pageIndex) {
    bloc.drawerState.setPageIndex(pageIndex);
  }

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  void changeSelection(int idx, DrawerBloc bloc) {
    bloc.setPageIndex(idx);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of(context).bloc;
    var drawerState = bloc.drawerState;

    return Drawer(
      child: SafeArea(
        child: StreamBuilder<Session>(
          stream: bloc.session,
          builder: (BuildContext context, AsyncSnapshot<Session> snapshot) {
            var theme = Theme.of(context);
            if (snapshot.hasData && snapshot.data != null) {
              bloc.updateNotifications();
            }
            return StreamBuilder<int>(
                stream: drawerState.highlightPageIndex,
                initialData: 0,
                builder:
                    (BuildContext context, AsyncSnapshot<int> indexSnapshot) {
                  Map<int, NavListTile> navMap = {
                    0: NavListTile(
                      icon: OMIcons.dashboard,
                      title: "Feed",
                      onTap: () {
                        changeSelection(0, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/feed');
                      },
                    ),
                    1: NavListTile(
                      icon: OMIcons.rssFeed,
                      title: "News",
                      onTap: () {
                        changeSelection(1, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/news');
                      },
                    ),
                    2: NavListTile(
                      icon: OMIcons.search,
                      title: "Explore",
                      onTap: () {
                        changeSelection(2, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/explore');
                      },
                    ),
                    3: NavListTile(
                      icon: OMIcons.restaurant,
                      title: "Mess Menu",
                      onTap: () {
                        changeSelection(3, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/mess');
                      },
                    ),
                    4: NavListTile(
                      icon: OMIcons.workOutline,
                      title: "Placement Blog",
                      onTap: () {
                        changeSelection(4, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/placeblog');
                      },
                    ),
                    5: NavListTile(
                      icon: OMIcons.workOutline,
                      title: "Internship Blog",
                      onTap: () {
                        changeSelection(5, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/trainblog');
                      },
                    ),
                    6: NavListTile(
                      icon: OMIcons.dateRange,
                      title: "Calendar",
                      onTap: () {
                        changeSelection(6, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/calendar');
                      },
                    ),
                    7: NavListTile(
                      icon: OMIcons.map,
                      title: "Map",
                      onTap: () {
                        changeSelection(7, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/map');
                      },
                    ),
                    8: NavListTile(
                      icon: OMIcons.feedback,
                      title: "Complaints/Suggestions",
                      onTap: () {
                        changeSelection(8, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/complaints');
                      },
                    ),
                    9: NavListTile(
                      icon: OMIcons.link,
                      title: "Quick Links",
                      onTap: () {
                        changeSelection(9, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/quicklinks');
                      },
                    ),
                    10: NavListTile(
                      icon: OMIcons.settings,
                      title: "Settings",
                      onTap: () {
                        changeSelection(10, drawerState);
                        var navi = Navigator.of(context);
                        navi.pop();
                        navi.pushNamed('/settings');
                      },
                    ),
                  };

                  List<Widget> navList;
                  navList = <Widget>[
                    SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: ListTile(
                            leading: NullableCircleAvatar(
                              snapshot.data?.profile?.userProfilePictureUrl,
                              OMIcons.personOutline,
                            ),
                            title: Text(
                              snapshot?.data?.profile?.userName ??
                                  'Not Logged in',
                              style: theme.textTheme.body1
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            subtitle: snapshot.data != null
                                ? Text(snapshot.data?.profile?.userRollNumber,
                                    style: theme.textTheme.body1)
                                : RaisedButton(
                                    child: Text(
                                      "Log in",
                                    ),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed('/');
                                    },
                                  ),
                            onTap: snapshot.data != null
                                ? () {
                                    UserPage.navigateWith(context, bloc,
                                        bloc.currSession.profile);
                                  }
                                : null,
                          ),
                        ),
                      ]..addAll(snapshot.data != null
                          ? [
                              StreamBuilder(
                                stream: bloc.notifications,
                                builder: (BuildContext context,
                                    AsyncSnapshot<
                                            UnmodifiableListView<
                                                ntf.Notification>>
                                        snapshot) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(
                                      children: <Widget>[
                                        IconButton(
                                          tooltip: "Notifications",
                                          icon: Icon((snapshot.hasData &&
                                                      snapshot
                                                          .data.isNotEmpty) ||
                                                  (!snapshot.hasData)
                                              ? OMIcons.notificationsActive
                                              : OMIcons.notificationsNone),
                                          onPressed: () {
                                            changeSelection(-1, drawerState);
                                            var navi = Navigator.of(context);
                                            navi.pop();
                                            navi.pushNamed('/notifications');
                                          },
                                        ),
                                      ]..addAll((snapshot.hasData &&
                                                  snapshot.data.isNotEmpty) ||
                                              (!snapshot.hasData)
                                          ? [
                                              Positioned(
                                                bottom: 0,
                                                right: 0,
                                                child: snapshot.hasData
                                                    ? Container(
                                                        padding:
                                                            EdgeInsets.all(3.0),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              theme.accentColor,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "${snapshot.data.length}",
                                                            style: theme
                                                                .accentTextTheme
                                                                .overline,
                                                          ),
                                                        ),
                                                      )
                                                    : CircularProgressIndicatorExtended(
                                                        size: 12,
                                                      ),
                                              )
                                            ]
                                          : []),
                                    ),
                                  );
                                },
                              )
                            ]
                          : []),
                    ),
                    Divider(),
                  ];
                  navList.addAll(navMap.values);
                  if (snapshot.data?.sessionid != null) {
                    navList.add(NavListTile(
                      icon: OMIcons.exitToApp,
                      title: "Logout",
                      onTap: () {
                        bloc.logout();
                      },
                    ));
                  }

                  // Selecting which NavListTile to highlight
                  if (indexSnapshot.data == -1) {
                    // TODO: highlight notifications button
                  } else {
                    navMap[indexSnapshot.data].setHighlighted(true);
                  }

                  return ListTileTheme(
                    selectedColor: theme.primaryColor,
                    // iconColor: theme.primaryColorDark,
                    style: ListTileStyle.drawer,
                    child: ListView(
                      children: navList,
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}

class NavListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final GestureTapCallback onTap;
  bool selected;
  bool highlight;

  void setHighlighted(bool selection) {
    highlight = selection;
    selected = selection;
  }

  NavListTile(
      {this.icon,
      this.title,
      this.onTap,
      this.selected = false,
      this.highlight = false});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var listTileTheme = ListTileTheme.of(context);
    return Container(
      decoration: !highlight
          ? null
          : BoxDecoration(
              color: listTileTheme.selectedColor.withAlpha(100),
              borderRadius: BorderRadius.only(
                  bottomRight: const Radius.circular(48.0),
                  topRight: const Radius.circular(48.0))),
      child: ListTile(
        selected: selected,
        enabled: true,
        leading: Icon(this.icon),
        dense: true,
        title: Text(
          this.title,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: _iconAndTextColor(theme, listTileTheme)),
        ),
        onTap: this.onTap,
      ),
    );
  }

  Color _iconAndTextColor(ThemeData theme, ListTileTheme tileTheme) {
    if (selected && tileTheme?.selectedColor != null)
      return tileTheme.selectedColor;

    if (!selected && tileTheme?.iconColor != null) return tileTheme.iconColor;

    switch (theme.brightness) {
      case Brightness.light:
        return selected ? theme.primaryColor : Colors.black54;
      case Brightness.dark:
        return selected
            ? theme.accentColor
            : null; // null - use current icon theme color
    }
    assert(theme.brightness != null);
    return null;
  }
}

class MNavigatorObserver extends NavigatorObserver {
  InstiAppBloc bloc;

  MNavigatorObserver(this.bloc);

  static Map<String, int> routeToNavPos = {
    "/mess": 3,
    "/placeblog": 4,
    "/trainblog": 5,
    "/feed": 0,
    "/quicklinks": 9,
    "/news": 1,
    "/explore": 2,
    "/calendar": 6,
    "/complaints": 8,
    "/newcomplaint": 8,
    "/putentity/event": 0,
    "/map": 7,
    "/settings": 10,
    "/notifications": -1,
  };

  @override
  void didPush(Route route, Route previousRoute) {
    int pageIndex = routeToNavPos[route.settings.name];
    if (pageIndex == null) {
      return;
    }

    NavDrawer.setPageIndex(bloc, pageIndex ?? -1);
  }

  @override
  void didPop(Route route, Route previousRoute) {
    int pageIndex = routeToNavPos[previousRoute.settings.name];
    if (pageIndex == null) {
      return;
    }

    NavDrawer.setPageIndex(bloc, pageIndex ?? -1);
  }

  @override
  void didReplace({Route newRoute, Route oldRoute}) {
    int pageIndex = routeToNavPos[newRoute.settings.name];
    if (pageIndex == null) {
      return;
    }

    NavDrawer.setPageIndex(bloc, pageIndex ?? -1);
  }
}
