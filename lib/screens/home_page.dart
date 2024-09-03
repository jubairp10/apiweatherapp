import 'package:apiweatherapp/services/loction_provider_dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utilts/apptext.dart';
import '../utilts/custum_devider.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    Provider.of<LocationProvider>(context,listen: false).determinePosition();
  }
  bool _clicked=false;
  List<String>background=[
    'assets/img/cloudy.jpg',
    'assets/img/2995006_snow_forecast_snowflake_weather_cold_icon.png'
  ];

  List<String>icon=[
    'assets/img/118961_few_weather_clouds_icon.png',
    'assets/img/1530363_weather_clouds_night_storm_icon.png',
    'assets/img/1530369_weather_cloud_clouds_cloudy_icon.png',
    'assets/img/2682812_cloud_coudy_day_fog_mist_icon.png',
  'assets/img/2682848_day_forecast_sun_sunny_weather_icon.png',
    'assets/img/2995006_snow_forecast_snowflake_weather_cold_icon.png',
    'assets/img/5719164_cloud_drizzle_rain_weather_icon.png'
  ];

  @override
  Widget build(BuildContext context) {

    Size size =MediaQuery.of(context).size;

    return Scaffold(

      body: Container(height: size.height,
        width: size.width,
        padding: EdgeInsets.only(top: 65,right: 20,left: 20,bottom: 20),
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,
            image: AssetImage(background[0]),
          )
        ),
        child: Stack(
          children: [
            _clicked== true? Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Container(
                // color: Colors.red,
                height: 45,
                child:TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      ),
                    ),
                    focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white
                        ),),
                  )
                ),
              ),
            ):
            SizedBox.shrink(),
            Container(
              height:50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.location_pin,color:Colors.red ,),
                        SizedBox(width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           AppText(data: 'Dubai',color: Colors.white,fw: FontWeight.w700,size: 18,),

                            AppText(data: 'GoodMorning',color: Colors.white,fw: FontWeight.w700,size: 14,)
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      _clicked=!_clicked;
                    });
                  }, icon: Icon(Icons.search,size: 32,))
                ],
              ),
            ),
            Align(
              alignment: Alignment(0.0,-0.6),
                child: Image.asset(icon[4],height: 100,)),
            Align(
              alignment: Alignment(0,-0.1),
              child: Container(
                height: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(data: '21 C',color: Colors.white,fw: FontWeight.bold,size: 20,),
                  AppText(data: 'Snow',color: Colors.white,fw: FontWeight.w600,size: 26,),
                  AppText(data: DateTime.now().toString(),color: Colors.white,)

                ],
              )),
            ),
            Align(
              alignment: Alignment(0.0,0.75),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(.5)
                ),
                height: 180,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/icon/2682809_cold_freezing_low_temperature_termometer_icon.png',height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(data: 'TempMax',color: Colors.white,size: 14,fw: FontWeight.w600,),
                                AppText(data: '21 c',color: Colors.white,size: 14,fw: FontWeight.w600,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 20,),
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icon/3859149_forecast_high_season_temperatue_weather_icon.png',height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(data: 'TempMin',color: Colors.white,size: 14,fw: FontWeight.w600,),
                                AppText(data: '21 c',color: Colors.white,size: 14,fw: FontWeight.w600,)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),


                    CustomDivider(
                      startIndent: 20,
                      endIndent: 20,
                      color: Colors.white,
                      thicknes: 2,
                    ),
                    // Row(
                    //
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Image.asset('assets/icon/2682809_cold_freezing_low_temperature_termometer_icon.png',height: 55,),
                    //         Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             AppText(data: 'TempMax',color: Colors.white,size: 14,fw: FontWeight.w600,),
                    //             AppText(data: '21 c',color: Colors.white,size: 14,fw: FontWeight.w600,)
                    //           ],
                    //         )
                    //       ],
                    //     ),
                    //     SizedBox(width: 20,),
                    //     Row( mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Image.asset('assets/icon/3859149_forecast_high_season_temperatue_weather_icon.png',height: 55,),
                    //         Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             AppText(data: 'TempMin',color: Colors.white,size: 14,fw: FontWeight.w600,),
                    //             AppText(data: '21 c',color: Colors.white,size: 14,fw: FontWeight.w600,)
                    //           ],
                    //         )
                    //       ], 
                    //     ),
                    //   ],
                    // ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/icon/1530392_weather_sun_sunny_temperature_icon.png',height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(data: 'sunlight',color: Colors.white,size: 14,fw: FontWeight.w600,),
                                AppText(data: '21 c',color: Colors.white,size: 14,fw: FontWeight.w600,)
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 40,),
                        Row(
                          children: [
                            Image.asset('assets/icon/5729385_moon_night_weather_climate_crescent_icon.png',height: 55,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(data: 'night',color: Colors.white,size: 14,fw: FontWeight.w600,),
                                AppText(data: '21 c',color: Colors.white,size: 14,fw: FontWeight.w600,)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
// class AppText extends StatelessWidget {
//   String? data;
//   double? size;
//   Color? color;
//   FontWeight? fw;
//   TextAlign? align;
//   AppText ({Key? key,required this.data, this.size, this.color,this.fw, this.align}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       data.toString(),
//       textAlign: align,
//       style: TextStyle(fontSize: size,color: color,fontWeight: fw,),
//     );
//   }
// }