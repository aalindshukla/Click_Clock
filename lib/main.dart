import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hourscalculator/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


   TimeOfDay ? monstartTime;
   TimeOfDay ?monendTime;
   int ?monhoursBetween;

   TimeOfDay ? tuestartTime;
   TimeOfDay ?tueendTime;
   int ?tuehoursBetween;

   TimeOfDay ? wedstartTime;
   TimeOfDay ?wedendTime;
   int ?wedhoursBetween;

   TimeOfDay ? thustartTime;
   TimeOfDay ?thuendTime;
   int ?thuhoursBetween;

   TimeOfDay ? fristartTime;
   TimeOfDay ?friendTime;
   int ?frihoursBetween;

   TimeOfDay ? satstartTime;
   TimeOfDay ?satendTime;
   int ?sathoursBetween;

   TimeOfDay ? sunstartTime;
   TimeOfDay ?sunendTime;
   int ?sunhoursBetween;

   int ?total;
 //  var result ="";



   void _showTimePickerMon(BuildContext context, String type) async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      if (type == 'start') {
        monstartTime = selectedTime!;
      } else {
        monendTime = selectedTime!;
      }
      if (monstartTime != null && monendTime != null) {
        monhoursBetween = _calculateHoursBetween(monstartTime!, monendTime!);
      }
    });
  }
   void _showTimePickerTue(BuildContext context, String type) async {
     TimeOfDay? selectedTime = await showTimePicker(
       context: context,
       initialTime: TimeOfDay.now(),
     );
     setState(() {
       if (type == 'start') {
         tuestartTime = selectedTime!;
       } else {
         tueendTime = selectedTime!;
       }
       if (tuestartTime != null && tueendTime != null) {
         tuehoursBetween = _calculateHoursBetween(tuestartTime!, tueendTime!);
       }
     });
   }
   void _showTimePickerWed(BuildContext context, String type) async {
     TimeOfDay? selectedTime = await showTimePicker(
       context: context,
       initialTime: TimeOfDay.now(),
     );
     setState(() {
       if (type == 'start') {
         wedstartTime = selectedTime!;
       } else {
         wedendTime = selectedTime!;
       }
       if (wedstartTime != null && wedendTime != null) {
         wedhoursBetween = _calculateHoursBetween(wedstartTime!, wedendTime!);
       }
     });
   }
   void _showTimePickerThu(BuildContext context, String type) async {
     TimeOfDay? selectedTime = await showTimePicker(
       context: context,
       initialTime: TimeOfDay.now(),
     );
     setState(() {
       if (type == 'start') {
         thustartTime = selectedTime!;
       } else {
         thuendTime = selectedTime!;
       }
       if (thustartTime != null && thuendTime != null) {
         thuhoursBetween = _calculateHoursBetween(thustartTime!, thuendTime!);
       }
     });
   }
   void _showTimePickerFri(BuildContext context, String type) async {
     TimeOfDay? selectedTime = await showTimePicker(
       context: context,
       initialTime: TimeOfDay.now(),
     );
     setState(() {
       if (type == 'start') {
         fristartTime = selectedTime!;
       } else {
         friendTime = selectedTime!;
       }
       if (fristartTime != null && friendTime != null) {
         frihoursBetween = _calculateHoursBetween(fristartTime!, friendTime!);
       }
     });
   }
   void _showTimePickerSat(BuildContext context, String type) async {
     TimeOfDay? selectedTime = await showTimePicker(
       context: context,
       initialTime: TimeOfDay.now(),
     );
     setState(() {
       if (type == 'start') {
         satstartTime = selectedTime!;
       } else {
         satendTime = selectedTime!;
       }
       if (satstartTime != null && satendTime != null) {
         sathoursBetween = _calculateHoursBetween(satstartTime!, satendTime!);
       }
     });
   }
   void _showTimePickerSun(BuildContext context, String type) async {
     TimeOfDay? selectedTime = await showTimePicker(
       context: context,
       initialTime: TimeOfDay.now(),
     );
     setState(() {
       if (type == 'start') {
         sunstartTime = selectedTime!;
       } else {
         sunendTime = selectedTime!;
       }
       if (sunstartTime != null && sunendTime != null) {
         sunhoursBetween = _calculateHoursBetween(sunstartTime!, sunendTime!);
       }
     });
   }







  int _calculateHoursBetween(TimeOfDay startTime, TimeOfDay endTime) {
    // Convert selected times to minutes
    int startMinutes = startTime.hour * 60 + startTime.minute;
    int endMinutes = endTime.hour * 60 + endTime.minute;

    // Calculate the difference in minutes
    int differenceMinutes = endMinutes - startMinutes;

    // Convert difference to hours
    double differenceHours = differenceMinutes / 60;

    // Round to nearest integer
    int roundedDifferenceHours = differenceHours.round();
    int minutes = differenceMinutes % 60;
    print('$minutes');
    if( roundedDifferenceHours < 0){
      return 24-((-1)*roundedDifferenceHours);
    }else{
      return roundedDifferenceHours;
    }
   // return roundedDifferenceHours;

  }


   bool _isVisiblemon = false;

   void showToastmon() {
     setState(() {
       _isVisiblemon = !_isVisiblemon;
     });
   }

   bool _isVisibletue = false;

   void showToasttue() {
     setState(() {
       _isVisibletue = !_isVisibletue;
     });
   }

   bool _isVisiblewed = false;

   void showToastwed() {
     setState(() {
       _isVisiblewed = !_isVisiblewed;
     });
   }


   bool _isVisiblethu = false;

   void showToastthu() {
     setState(() {
       _isVisiblethu = !_isVisiblethu;
     });
   }


   bool _isVisiblefri = false;

   void showToastfri() {
     setState(() {
       _isVisiblefri = !_isVisiblefri;
     });
   }


   bool _isVisiblesat = false;

   void showToastsat() {
     setState(() {
       _isVisiblesat = !_isVisiblesat;
     });
   }

   bool _isVisiblesun = false;

   void showToastsun() {
     setState(() {
       _isVisiblesun = !_isVisiblesun;
     });
   }


   bool _isVisibletotal = false;

   void showToasttotal() {
     setState(() {
       _isVisibletotal = !_isVisibletotal;
     });
   }

 //  var nameController = TextEditingController();


  @override
  Widget build(BuildContext context) {





    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(

          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    // Colors.orange,
                    // Colors.purpleAccent,
                    Color(0xffa18cd1),
                    Color(0xfffbc2eb),
                    Color(0xff8BBCCC),
                    //Color(0xffff9b7e),
                  ],
                  // begin: FractionalOffset(1.0,0.5),              // where to start and where to end
                  // end: FractionalOffset(0.0,0.5),
                //  stops: [0.0,0.4,1.0]                     // From where to where (stopping of color: used in multiple colors)

              )
          ),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 38,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(child: Text('CLICK CLOCK 🕙 ',style: TextStyle(fontFamily: 'Alkatra',fontSize: 25),)),
                  ),
                ),
                SizedBox(height: 30.0),
                Center(
                  child: Container(
                   // color: Colors.purple.shade50,
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,top: 5.0),
                              child: Container(
                               // color: Colors.red,
                                width: 50,
                                  height: 50,
                                  child: Center(child:
                                  Text('MON',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Alkatra'),))
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 50.0,right: 25.0),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Colors.black45,width: 2)
                                ),
                                child: Text(monstartTime != null
                                    ? '${monstartTime?.format(context)}'
                                    : 'IN',
                                  style: TextStyle(color: Colors.green.shade600,fontWeight: FontWeight.bold),),
                                    onPressed:(){
                                  _showTimePickerMon(context, 'start');
                                    },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0,right: 15.0),
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    side: BorderSide(color: Colors.black45,width: 2)
                                ),
                                child: Text(monendTime != null
                                    ? '${monendTime?.format(context)}'
                                    : 'OUT',
                                  style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700),),
                                onPressed: (){
                                  _showTimePickerMon(context, 'end');
                                  showToastmon();
                                },
                              ),
                            ),
                          ],
                        ),
                        Visibility(
                          visible : _isVisiblemon
                        , child: Center(child: Text("Hours: $monhoursBetween",style: TextStyle(fontFamily: 'Alkatra'),)),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
         //         color: Colors.purple.shade50,
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 5.0),
                            child: Container(
                              // color: Colors.red,
                                width: 50,
                                height: 50,
                                child: Center(child:
                                Text('TUE',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Alkatra'),))
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 50.0,right: 25.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(tuestartTime != null
                                  ? '${tuestartTime?.format(context)}'
                                  : 'IN',
                                style: TextStyle(color: Colors.green.shade600,fontWeight: FontWeight.bold),),
                              onPressed:(){
                                _showTimePickerTue(context, 'start');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 15.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(tueendTime != null
                                  ? '${tueendTime?.format(context)}'
                                  : 'OUT',
                                style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700),),
                              onPressed: (){
                                _showTimePickerTue(context, 'end');
                                showToasttue();
                              },
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible : _isVisibletue
                        , child: Text("Hours: $tuehoursBetween",style: TextStyle(fontFamily: 'Alkatra'),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
             //     color: Colors.purple.shade50,
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 5.0),
                            child: Container(
                              // color: Colors.red,
                                width: 50,
                                height: 50,
                                child: Center(child:
                                Text('WED',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Alkatra'),))
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 50.0,right: 25.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(wedstartTime != null
                                  ? '${wedstartTime?.format(context)}'
                                  : 'IN',
                                style: TextStyle(color: Colors.green.shade600,fontWeight: FontWeight.bold),),
                              onPressed:(){
                                _showTimePickerWed(context, 'start');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 15.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(wedendTime != null
                                  ? '${wedendTime?.format(context)}'
                                  : 'OUT',
                                style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700),),
                              onPressed: (){
                                _showTimePickerWed(context, 'end');
                                showToastwed();
                              },
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible : _isVisiblewed
                        , child: Text("Hours: $wedhoursBetween",style: TextStyle(fontFamily: 'Alkatra'),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
            //      color: Colors.purple.shade50,
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 5.0),
                            child: Container(
                              // color: Colors.red,
                                width: 50,
                                height: 50,
                                child: Center(child:
                                Text('THU',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Alkatra'),))
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 50.0,right: 25.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(thustartTime != null
                                  ? '${thustartTime?.format(context)}'
                                  : 'IN',
                                style: TextStyle(color: Colors.green.shade600,fontWeight: FontWeight.bold),),
                              onPressed:(){
                                _showTimePickerThu(context, 'start');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 15.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(thuendTime != null
                                  ? '${thuendTime?.format(context)}'
                                  : 'OUT',
                                style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700),),
                              onPressed: (){
                                _showTimePickerThu(context, 'end');
                                showToastthu();
                              },
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible : _isVisiblethu
                        , child: Text("Hours: $thuhoursBetween",style: TextStyle(fontFamily: 'Alkatra'),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
             //     color: Colors.purple.shade50,
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 5.0),
                            child: Container(
                              // color: Colors.red,
                                width: 50,
                                height: 50,
                                child: Center(child:
                                Text('FRI',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Alkatra'),))
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 50.0,right: 25.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(fristartTime != null
                                  ? '${fristartTime?.format(context)}'
                                  : 'IN',
                                style: TextStyle(color: Colors.green.shade600,fontWeight: FontWeight.bold),),
                              onPressed:(){
                                _showTimePickerFri(context, 'start');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 15.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(friendTime != null
                                  ? '${friendTime?.format(context)}'
                                  : 'OUT',
                                style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700),),
                              onPressed: (){
                                _showTimePickerFri(context, 'end');
                                showToastfri();
                              },
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible : _isVisiblefri
                        , child: Text("Hours: $frihoursBetween",style: TextStyle(fontFamily: 'Alkatra'),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
            //      color: Colors.purple.shade50,
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 5.0),
                            child: Container(
                              // color: Colors.red,
                                width: 50,
                                height: 50,
                                child: Center(child:
                                Text('SAT',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Alkatra'),))
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 50.0,right: 25.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(satstartTime != null
                                  ? '${satstartTime?.format(context)}'
                                  : 'IN',
                                style: TextStyle(color: Colors.green.shade600,fontWeight: FontWeight.bold),),
                              onPressed:(){
                                _showTimePickerSat(context, 'start');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 15.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(satendTime != null
                                  ? '${satendTime?.format(context)}'
                                  : 'OUT',
                                style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700),),
                              onPressed: (){
                                _showTimePickerSat(context, 'end');
                                showToastsat();
                              },
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible : _isVisiblesat
                        , child: Text("Hours: $sathoursBetween",style: TextStyle(fontFamily: 'Alkatra'),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
            //      color: Colors.purple.shade50,
                  child:
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,top: 5.0),
                            child: Container(
                              // color: Colors.red,
                                width: 50,
                                height: 50,
                                child: Center(child:
                                Text('SUN',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,fontFamily: 'Alkatra'),))
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 50.0,right: 25.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(sunstartTime != null
                                  ? '${sunstartTime?.format(context)}'
                                  : 'IN',
                                style: TextStyle(color: Colors.green.shade600,fontWeight: FontWeight.bold),),
                              onPressed:(){
                                _showTimePickerSun(context, 'start');
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0,right: 15.0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black45,width: 2)
                              ),
                              child: Text(sunendTime != null
                                  ? '${sunendTime?.format(context)}'
                                  : 'OUT',
                                style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.w700),),
                              onPressed: (){
                                _showTimePickerSun(context, 'end');
                                showToastsun();
                              },
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible : _isVisiblesun
                        , child: Text("Hours : $sunhoursBetween",style: TextStyle(fontFamily: 'Alkatra'),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 8
                  ),
                    onPressed: (){

                   setState(() {

                       total = monhoursBetween! + tuehoursBetween! +
                           wedhoursBetween! + thuhoursBetween! +
                           frihoursBetween! + sathoursBetween! + sunhoursBetween!;
                       if (total!=0) {
                         total = total!;
                     }
                     else {
                       total = 0;
                     }
                     showToasttotal();
                   });
                }, child: Text('Total Hours')),

                Visibility(
                  visible: _isVisibletotal,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Weekly Hrs: $total',style: TextStyle(fontSize: 30,fontFamily: 'Alkatra'),),
                  ),
                ),


                SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Made with ❤️ by Aalind',textStyle: TextStyle(fontSize: 18),curve: Curves.easeIn,speed: Duration(milliseconds: 80)),
                  ],
                ),
              ),
            ),
              ],
            ),

            ),
        ),
      ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}
