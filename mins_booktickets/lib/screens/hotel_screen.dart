import 'package:flutter/cupertino.dart';
import 'package:mins_booktickets/utils/app_layout.dart';
import 'package:mins_booktickets/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage("assets/images/one.png"))
            ),
          )
        ],
      ),
    );



  }
}
