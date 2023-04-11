import 'package:flutter/material.dart';

import 'package:sho/res/colors/app_color.dart';
import 'package:sho/view/widgets/home_body.dart';
import 'package:sho/view/widgets/sho_cart.dart';
import 'package:sho/models/sho.dart';



class ShoCard extends StatelessWidget {
  const ShoCard({Key? key, required this.itemIndex, required this.sho, required this.press}) : super(key: key);
  final int itemIndex;
  final Sho sho;
  final Function press;



  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.symmetric(
      horizontal: kDefaultPadding,
      vertical: kDefaultPadding / 2,
    ),
      height: 190.0,

      child: InkWell(
        //onTap: press,
        child: Stack(



          alignment: Alignment.bottomCenter,
          children: [
            Container(

              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                  sho.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136.0,
                // Because oure image is 200 width, then: width - 200
                //width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        sho.title,
                        style: Theme.of(context).textTheme.bodyText1,

                      ),
                    ),

                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        sho.subTitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5, // 30 px padding
                          vertical: kDefaultPadding / 5, // 5 px padding
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child:
                        Text('عدد أبيات المُعلّقة: ${sho.price}'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );

  }
}





