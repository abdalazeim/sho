import 'package:flutter/material.dart';
import 'package:sho/res/colors/app_color.dart';
import 'package:sho/models/sho.dart';
import 'package:sho/models/sho.dart';
import 'package:sho/view/widgets/sho_cart.dart';
import 'package:sho/view/widgets/sho_cart.dart';
import 'package:sho/view/home/details_screen.dart';

//import 'package:shoa/screens/details_screen.dart';
//import 'package:shoa/widgets/home/product_cart.dart';
import 'package:sho/view/widgets/home_body.dart';



class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: shos.length,
                  itemBuilder: (context, index) => ShoCard(
                    itemIndex: index,
                    sho: shos[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                         builder: (context ) => DetailsScreen1(
                          sho: shos[index], 
                         //sho: shos[index],
                          ),
                       ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

DetailsScreen1({required Sho sho}) {
  final Sho sho;




}

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
