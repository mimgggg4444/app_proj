import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mins_booktickets/utils/app_layout.dart';
import 'package:mins_booktickets/utils/app_styles.dart';

import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
      final size = AppLayout.getSize(context);


      return SizedBox(
        width: size.width*0.85,
        height: 200,
        child: Container(

          margin: const EdgeInsets.only(left: 16),

          child: Column(
            children: [

              /*
              블루 카드 표기
               */
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xff526799),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                  topRight: Radius.circular(21))
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('NYC', style: Styles.headLineStyle3.copyWith(color: Colors.white),),

                        Expanded(child: Container()),
                        const ThickContainer(),
                        Expanded(child: Stack(
                          children: [
                            SizedBox(

                              height: 24,
                              child: LayoutBuilder(
                                builder:(BuildContext context, BoxConstraints constraints){
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate((constraints.constrainWidth()/6).floor(), (index) => const SizedBox(
                                      width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                        color: Colors.white
                                    ),),
                                    )
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white,),)),
                          ],
                        )),


                        const ThickContainer(),
                        Expanded(child: Container()),
                        Text('London', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                      SizedBox(
                        width: 100,child: Text('New-York', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),

                      Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),

                      SizedBox(
                        width: 100,child: Text('LDN', textAlign: TextAlign.end ,style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                    ),
                  ],
                ),
              ),
              /*
              오렌지 카드 표기
               */
              Container(
                color: Styles.orangeColor,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )
                        ),
                      ),
                    ),

                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                              width: 5,height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white
                                ),
                              ),
                            )),
                          );
                        },

                      ),
                    ),),


                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )
                        ),
                      ),
                    ),
                  ],
                ),

              ),

            /*
            오렌지바 밑에 설정
             */
              Container(
                decoration: BoxDecoration(
                    color: Styles.orangeColor,
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21))
                ),
                padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('12월 1일', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                             const Gap(5),
                             Text('출발 일정', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                           ],
                         ),


                         Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Text('오전 08:00', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                             const Gap(5),
                             Text('도착 시간', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                           ],
                         ),


                         Column(
                           crossAxisAlignment: CrossAxisAlignment.end,
                           children: [
                             Text('17일', style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                             const Gap(5),
                             Text('돌아오는 일정', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                           ],
                         ),
                       ],
                    )
                  ],
                ),
              )


            ],
          ),
        ),
      );
  }
}
