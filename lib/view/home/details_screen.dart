import 'package:flutter/material.dart';

import 'package:sho/res/colors/app_color.dart';
import 'package:sho/models/sho.dart';
import 'package:sho/view/widgets/home_body.dart';

class DetailsScreen extends StatelessWidget {
  final Sho sho;

  const DetailsScreen({required Key key, required this.sho}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      //body: DetailsBody(
        //product: product,
      //),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(right: kDefaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
