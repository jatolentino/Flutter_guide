# Flutter comprenssive guide

### 1 Create a project & open VS code in that folder
	```bash
	flutter create flutter_guide
	```
	
### 2 Copy the pubspec.yml file and run in the terminal
	```bash
	flutter packages get
	```
	
### 3 Add the zoom level in VS
- Create the folder .vscode and the file inside: settings.json
	```json
	{
		"window.zoomLevel": 3
	}
	```
	
### 4 Edit /lib/main.dart
- Create the Homepage widget
    ```dart
    import 'package:flutter/material.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
        ),
        home: Homepage(),
        );
        }
    }
    ```
    Go to VS control menu, tab on Debug > Run without debugging

### 5 Add the folder json
- Create in this folder a info.json and a videoinfo.json file, edit the videoinfo.json
    ```json
    [
    {
        "title": "Squat and Walk",
        "time": "45 seconds",
        "thumbnail": "embed/squat1.jpg",
        "videoUrl": "http://db.bslmeiyu.com/uploads/uploads/video/2021/08/21/1-%20Introduction.mp4"
    },
    {
        "title": "Plie Squat and Heel Raises",
        "time": "55 seconds",
        "thumbnail": "embed/squat2.jpg",
        "videoUrl": "https://img.bslmeiyu.com/uploads/20170706/The%20Bananas%20Song%20%20Counting%20Bananas%20%20Super%20Simple%20Songs.mp4"
    },
    {
        "title": "Squat Kickback",
        "time": "60 seconds",
        "thumbnail": "embed/squat3.jpg",
        "videoUrl": "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"
    },
    {
        "title": "Squat with Side Leg Lift",
        "time": "120 seconds",
        "thumbnail": "embed/squat4.jpg",
        "videoUrl": "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"
    }

    ]
    ```

### 6 Create a home_page.dart file in lib
- Edit the lib/home_page.dart
    ```dart
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    class HomePage extends StatefulWidget {
    const HomePage({Key? key}): super(key: key);

    @override
    _HomePageState createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
        return Container();
    }
    }
    ```
### 7 Create a colors.dart in lib
- Edit the file with
    ```dart
    import 'dart:ui';

    class AppColor{
        static Color homePageBackground=const Color(0xFFfbfcff);
        static Color gradientFirst=const Color(0xff0f17ad);
        static Color gradientSecond=const Color(0xFF6985e8);
        static Color homePageTitle=const Color(0xFF302f51);
        static Color homePageSubtitle=const Color(0xFF414160);
        static Color homePageDetail=const Color(0xFF6588f4);
        static Color homePageIcons=const Color(0xFF3b3c5c);
        static Color homePageContainerTextSmall=const Color(0xFFf4f5fd);
        static Color homePageContainerTextBig=const Color(0xFFffffff);
        static Color homePagePlanColor=const Color(0xFFa2a2b1);
        static Color secondPageTopIconColor=const Color(0xFFb7bce8);
        static Color secondPageTitleColor=const Color(0xFFfefeff);
        static Color secondPageContainerGradient1stColor=const Color(0xFF5564d8);
        static Color secondPageContainerGradient2ndColor=const Color(0xFF6279dc);
        static Color secondPageIconColor=const Color(0xFFfafafe);
        static Color loopColor=const Color(0xFF6d8dea);
        static Color setsColor=const Color(0xFF9999a9);
        static Color circuitsColor=const Color(0xFF2f2f51);
    }
    ```
### 8 Import the colors and add a colum and rows
- In lib/home_page.dart, create the column and add text of the first row
    ```dart
    import 'colors.dart' as color;

    class _HomePageState extends State<HomePage> {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                backgroundColors: color.AppColor.homePageBackground,
                body: Container(
                    padding: const EdgeInsets.only(top:70, left:30, right:30),
                    child: Column(
                        children: [
                            Row(
                                children: [
                                    Text(
                                        "Training",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color:color.AppColor.homePageTitle,
                                            fontWeight: FontWeight.w700
                                        ),
                                    ),
                                    Expanded(child: Container()),
                                    Icon(Icons.arrow_back_ios,
                                    size: 20,
                                    color:color.AppColor.homePageIcons),
                                    SizedBox(width: 10,),
                                    Icon(Icons.calendar_today_outlined,
                                    size: 20,
                                    color:color.AppColor.homePageIcons,),
                                    SizedBox(width: 15,),
                                    Icon(Icons.arrow_forward_ios,
                                        size:20,
                                        color:color.AppColor.homePageIcons)
                                ],
                            )
                        ],
                    ),
                ),
            );
        }
    }
    ```
- Add the second row
    ```dart
    :
    Row(
    children: [
        Text(
            "Training",
            style: TextStyle(
            fontSize: 20,
            color:color.AppColor.homePageSubtitle,
            fontWeight: FontWeight.w700
            ),
        ),
        Expanded(child: Container()),
        Text(
            "Details",
            style: TextStyle(
                fontSize: 20,
                color:color.AppColor.homePageDetail,
            ),
        ),
        SizedBox(width: 5,),
        Icon(Icons.arrow_forward,
        size:20,
        color:color.AppColor.homePageIcons)
    ],
    ),
    SizedBox(height: 20,),
    Container(
    width: MediaQuery.of(context).size.width,
    height: 220,
    //color:Colors.red, 
    decoration: BoxDecoration(
    gradient: LinearGradient(
        colors: [
        color.AppColor.gradientFirst.withOpacity(0.8),
        color.AppColor.gradientSecond.withOpacity(0.9),
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.centerRight
    ),
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
        topRight: Radius.circular(80)
        ),
        boxShadow: [
        BoxShadow(
            offset: Offset(5,10),
            blurRadius: 20,
            color:color.AppColor.gradientSecond.withOpacity(0.2)
        )
        ]
    ),
    child: Container( //adde to a container so we can have padding
        padding: const EdgeInsets.only(left: 20, top:25,),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
            "Next workout",
            style: TextStyle(
                fontSize: 16,
                color:color.AppColor.homePageContainerTextSmall
            ),
            ),
            SizedBox(height:5,),
            Text(
            "Legs Toning",
            style: TextStyle(
                fontSize: 25,
                color:color.AppColor.homePageContainerTextSmall
            ),
            ),
            SizedBox(height:5,),
            Text(
            "and Brain Workout",
            style: TextStyle(
                fontSize: 25,
                color:color.AppColor.homePageContainerTextSmall
            ),
            ),
            SizedBox(height: 25,),
            Row(
            crossAxisAlignment: CrossAxisAlignment.end, //Align to bottom: play button TIME 35:58
            children: [
                Row(
                children: [
                    Icon(Icons.timer, size: 20,color:color.AppColor.homePageContainerTextSmall),
                    SizedBox(width: 10,),
                    Text(
                    "60min",
                    style: TextStyle(
                        fontSize: 14,
                        color:color.AppColor.homePageContainerTextSmall
                    ),
                    ),
                ],
                ),
                Expanded(child: Container()),
                Icon(
                Icons.play_circle_fill,
                color:Colors.white, size: 60,
                )
            ]
            )
        ],
        ),
    )
    )
    ```
- Run on IOS and Androind devices
	Click the Run and Dibug icon, then choose the option to Add Configuration, a file launch.json is created, delete the launch profile and add this (take in consideration that the devices should be stay opened and add the device ID to the json file).
	```json
	{
	    "version": "0.2.0",
	    "configurations": [
		{
		    "name": "flutter_guide",
		    "request": "launch",
		    "type": "dart"
		},
		{
		    "name": "Android",
		    "request": "launch",
		    "type": "dart",
		    "deviceId": "emulator-5554"
		},
		{
		    "name": "iPhone12",
		    "request": "launch",
		    "type": "dart",
		    "deviceId": "E0E30918-9823-4DD7-823F-BE99C99B1412"
		},
		{
		    "name": "flutter_guide (release mode)",
		    "request": "launch",
		    "type": "dart",
		    "flutterMode": "release"
		}
	    ],
	    "compounds": [
		{
		    "name": "All Devices",
		    "configurations": ["Android","iPhone12"]
		}
	    ]
	}
	```
    To run, just select the Run and Dibug icon an pic the recently json option created with the name `All Devices` <br>
    Test 8.1 Compliled @ the branch of [`ver-1.0`](https://github.com/jatolentino/Flutter_guide/tree/ver1.0)
    <p align="center">
    	<img src="https://github.com/jatolentino/Flutter_guide/blob/master/img/step8-test-1.png" width="350">
    </p>

### 9 Import images and add assets folder
- Edit pubspec.yam, add the assests folder that contains the images
    ```yml
    assets:
        - img/
        - assets/
    ```
- Add the rows for the images and configure the text in lib/home_page.dart
    ```dart
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';
    import 'colors.dart' as color;

    class HomePage extends StatefulWidget {
    const HomePage({Key? key}): super(key: key);

    @override
    _HomePageState createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                backgroundColor: color.AppColor.homePageBackground,
                body: Container(
                    padding: const EdgeInsets.only(top:40, left:30, right:30),
                    child: Column(
                        children: [
                            Row(
                                children: [
                                    Text(
                                        "Training",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color:color.AppColor.homePageTitle,
                                            fontWeight: FontWeight.w700
                                        ),
                                    ),
                                    Expanded(child: Container()),
                                    Icon(Icons.arrow_back_ios,
                                    size: 20,
                                    color:color.AppColor.homePageIcons),
                                    SizedBox(width: 10,),
                                    Icon(Icons.calendar_today_outlined,
                                    size: 20,
                                    color:color.AppColor.homePageIcons,),
                                    SizedBox(width: 15,),
                                    Icon(Icons.arrow_forward_ios,
                                        size:20,
                                        color:color.AppColor.homePageIcons)
                                ],
                            ),
                SizedBox(height: 30,),
                Row(
                children: [
                    Text(
                                        "Training",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color:color.AppColor.homePageSubtitle,
                                            fontWeight: FontWeight.w700
                                        ),
                                    ),
                    Expanded(child: Container()),
                    Text(
                                        "Details",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color:color.AppColor.homePageDetail,
                                        ),
                                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_forward,
                    size:20,
                    color:color.AppColor.homePageIcons)
                ],
                ),
                SizedBox(height: 20,),
                Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                //color:Colors.red, 
                decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight
                ),
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80)
                    ),
                    boxShadow: [
                    BoxShadow(
                        offset: Offset(5,10),
                        blurRadius: 20,
                        color:color.AppColor.gradientSecond.withOpacity(0.2)
                    )
                    ]
                ),
                child: Container( //added to a container so we can have padding
                    padding: const EdgeInsets.only(left: 20, top:25,right:20),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                        "Next workout",
                        style: TextStyle(
                            fontSize: 16,
                            color:color.AppColor.homePageContainerTextSmall
                        ),
                        ),
                        SizedBox(height:5,),
                        Text(
                        "Legs Toning",
                        style: TextStyle(
                            fontSize: 25,
                            color:color.AppColor.homePageContainerTextSmall
                        ),
                        ),
                        SizedBox(height:5,),
                        Text(
                        "and Brain Workout",
                        style: TextStyle(
                            fontSize: 25,
                            color:color.AppColor.homePageContainerTextSmall
                        ),
                        ),
                        SizedBox(height: 25,),
                        Row(
                        crossAxisAlignment: CrossAxisAlignment.end, //Align to bottom: play button TIME 35:58
                        children: [
                            Row(
                            children: [
                                Icon(Icons.timer, size: 20,color:color.AppColor.homePageContainerTextSmall),
                                SizedBox(width: 10,),
                                Text(
                                "60min",
                                style: TextStyle(
                                    fontSize: 14,
                                    color:color.AppColor.homePageContainerTextSmall
                                ),
                                ),
                            ],
                            ),
                            Expanded(child: Container()),
                            Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                BoxShadow(
                                    color: color.AppColor.gradientFirst,
                                    blurRadius: 10,
                                    offset: Offset(4, 8)
                                )
                                ]
                            ),
                            child: Icon(
                                Icons.play_circle_fill,
                                color:Colors.white, size: 60,
                            )
                            )
                        ]
                        )
                    ],
                    ),
                )
                ),
                SizedBox(height: 5,),
                Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                    children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(top:30),
                        height: 120,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image:AssetImage(
                            "assets/card.jpg"
                            ),
                            fit:BoxFit.fill
                        ),
                        boxShadow: [
                            BoxShadow(
                            blurRadius: 40,
                            offset:Offset(8,10),
                            color: color.AppColor.gradientSecond.withOpacity(0.3)
                            ),
                            BoxShadow(
                            blurRadius: 40,
                            offset:Offset(-1,-5),
                            color: color.AppColor.gradientSecond.withOpacity(0.3)
                            ),
                        ]
                        ),
                    ),
                    Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        //width: 320, //changes red box containing figure.png
                        margin: const EdgeInsets.only(right: 200, bottom: 30), //also reduce red box by adding margin
                        decoration: BoxDecoration(
                        //color:Colors.redAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image:AssetImage(
                            "assets/figure.png"
                            ),
                            fit:BoxFit.fill
                        ),
                        //boxShadow: 
                        ),
                    ),
                    Container(
                        width: double.maxFinite,
                        height: 100,
                        //color:Colors.redAccent.withOpacity(0.3),
                        margin: const EdgeInsets.only(left:150,top:50),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                            "Your are doing great",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color:color.AppColor.homePageDetail
                            ),
                            ),
                            SizedBox(height: 10,),
                            RichText(text: TextSpan(
                            text:"Keep it up\n",
                            style: TextStyle(
                                color:color.AppColor.homePagePlanColor,
                                fontSize: 16,
                            ),
                            children: [
                                TextSpan(
                                text:"stick to your plan"
                                )
                            ]
                            ))
                        ]
                        )
                    ),
                    ],
                ),
                ),
                Row(
                children: [
                    Text(
                    "Area of focus",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color:color.AppColor.homePageTitle
                    ),
                    )
                ],
                ),
                Expanded(child: ListView.builder(
                itemCount: 4,
                itemBuilder: (_, i){
                    return Row(
                    children: [
                        Container(
                        width: 200,
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                            image: AssetImage(
                                "assets/ex1.png"
                            )
                            )
                        ),
                        )
                    ]
                    );
                })
                )
            ],
                    ),
                ),
            );
        }
    }
    ```
    
    Test 9.1 Compliled @ the branch of [`ver-1.1`](https://github.com/jatolentino/Flutter_guide/tree/ver1.1)
    <p align="center">
    	<img src="https://github.com/jatolentino/Flutter_guide/blob/master/img/step1-test-1.png" width="200">
    </p>