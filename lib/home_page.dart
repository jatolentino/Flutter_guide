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