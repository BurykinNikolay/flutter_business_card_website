
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_business_card_website/presentation/base/base_bloc.dart';

class AboutBloc extends BaseBloc {
  @override
  void init() {
    super.init();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void openLink(String link) {
    _launchURL(link);
  }

  void _launchURL(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }
}
