import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_business_card_website/other/buisness_card_icons.dart';
import 'package:flutter_business_card_website/other/links.dart';

import 'about_bloc.dart';
import 'about_bloc_injector.dart';

class AboutView extends StatefulWidget {
  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  AboutBloc get bloc => AboutBlocInjector.of(context).bloc;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 64,
            backgroundImage: Image.asset(Links.avatar).image,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Nikolay Burykin',
            textScaleFactor: 3,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Flutter, iOS and MacOS\nHockey, Drift and Music',
            textScaleFactor: 2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: SizedBox(
                  width: 20,
                  height: 20,
                  child: Icon(BuisnessCardIcons.github_circled),
                ),
                label: Text('Github'),
                onPressed: () => bloc.openLink(Links.github),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                icon: SizedBox(
                  width: 20,
                  height: 20,
                  child: Icon(BuisnessCardIcons.instagram),
                ),
                label: Text('Instagram'),
                onPressed: () => bloc.openLink(Links.instagramm),
              ),
              FlatButton.icon(
                icon: SizedBox(
                  width: 20,
                  height: 20,
                  child: Icon(BuisnessCardIcons.linkedin_squared),
                ),
                label: Text('LinkedIn'),
                onPressed: () => bloc.openLink(Links.linkedin),
              )
            ],
          )
        ],
      ),
    );
  }
}
