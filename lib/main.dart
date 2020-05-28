import 'package:courses_app_ui/constants/constants.dart';
import 'package:courses_app_ui/models/category.dart';
import 'package:courses_app_ui/views/detailedScreen.dart';
import 'package:courses_app_ui/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Courses Ui',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset("assets/icons/menu.svg"),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfileViewer(),
                    ));
                  },
                  child: Hero(
                    tag: "profilePic",
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/my_profile_pic.jpg"),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Hey Prathamesh,",
              style: kHeadingextStyle,
            ),
            Text(
              "Find a course you want to learn",
              style: kSubheadingextStyle,
            ),
            SizedBox(height: 30.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              height: 60.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Color(0xFFF5F5F7)),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/icons/search.svg"),
                  SizedBox(width: 20.0),
                  Text(
                    "Search for Anything",
                    style: TextStyle(
                        fontSize: 18.0, color: Colors.grey.withOpacity(0.7)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Category",
                  style: kTitleTextStyle,
                ),
                Text(
                  "See All",
                  style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Expanded(
                child: StaggeredGridView.countBuilder(
                    padding: EdgeInsets.all(0.0),
                    crossAxisCount: 2,
                    itemCount: categories.length,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CourseDetail()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(20.0),
                            height: index.isEven ? 200 : 240,
                            decoration: BoxDecoration(
                                color: kBlueColor,
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: AssetImage(categories[index].image),
                                    fit: BoxFit.fill)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  categories[index].name,
                                  style: kTitleTextStyle,
                                ),
                                Text(
                                  "${categories[index].numOfCourses} Courses",
                                  style: TextStyle(
                                      color: kTextColor.withOpacity(0.5)),
                                )
                              ],
                            ),
                          ),
                        ),
                    staggeredTileBuilder: (index) => StaggeredTile.fit(1)))
          ],
        ),
      ),
    );
  }
}
