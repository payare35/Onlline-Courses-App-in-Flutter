import 'package:courses_app_ui/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF5F4EF),
            image: DecorationImage(
              image: AssetImage("assets/images/ux_big.png"),
              alignment: Alignment.topRight,
            )),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child:
                              SvgPicture.asset("assets/icons/arrow-left.svg")),
                      SvgPicture.asset("assets/icons/more-vertical.svg"),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ClipPath(
                    clipper: BestSellerClipper(),
                    child: Container(
                      color: kBestSellerColor,
                      padding: EdgeInsets.only(
                          left: 10.0, top: 5, right: 20.0, bottom: 5),
                      child: Text(
                        "BESTSELLER",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "Design Thinking",
                    style: kHeadingextStyle,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/icons/person.svg"),
                      SizedBox(width: 5.0),
                      Text("500B"),
                      SizedBox(width: 20.0),
                      SvgPicture.asset("assets/icons/star.svg"),
                      SizedBox(width: 5.0),
                      Text("4.9")
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "\$50 ",
                      style: kHeadingextStyle.copyWith(fontSize: 32.0),
                    ),
                    TextSpan(
                        text: "\$70",
                        style: TextStyle(
                            color: kTextColor.withOpacity(0.5),
                            decoration: TextDecoration.lineThrough))
                  ])),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Course Content",
                              style: kTitleTextStyle,
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            CourseContent(
                              courseTitle: "Welcome to Course",
                              courseNo: "01",
                              duration: 5.35,
                              isDone: true,
                            ),
                            CourseContent(
                              courseTitle: "How to plan designs?",
                              courseNo: "02",
                              duration: 10,
                              isDone: false,
                            ),
                            CourseContent(
                              courseTitle: "How to choose Colors?",
                              courseNo: "03",
                              duration: 5.25,
                              isDone: false,
                            ),
                            CourseContent(
                              courseTitle: "Planning the applications",
                              courseNo: "04",
                              duration: 18.35,
                              isDone: false,
                            ),
                            CourseContent(
                              courseTitle: "Study the design tools",
                              courseNo: "05",
                              duration: 15.35,
                              isDone: false,
                            ),
                            SizedBox(
                              height: 70.0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          height: 100.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 4),
                                    blurRadius: 50.0,
                                    color: kTextColor.withOpacity(0.1))
                              ]),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(14),
                                height: 56.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFEDEE),
                                    borderRadius: BorderRadius.circular(40.0)),
                                child: SvgPicture.asset(
                                    "assets/icons/shopping-bag.svg"),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Expanded(
                                  child: Container(
                                height: 56,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40.0),
                                  color: kBlueColor,
                                ),
                                child: Text(
                                  "Buy Now",
                                  style: kSubtitleTextSyule.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))
                            ],
                          ),
                        ))
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

class CourseContent extends StatelessWidget {
  final String courseNo;
  final double duration;
  final String courseTitle;
  final bool isDone;

  const CourseContent({
    Key key,
    this.courseNo,
    this.duration,
    this.courseTitle,
    this.isDone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        children: <Widget>[
          Text(
            courseNo,
            style: kHeadingextStyle.copyWith(
                color: kTextColor.withOpacity(0.15), fontSize: 32.0),
          ),
          SizedBox(width: 20.0),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "$duration mins\n",
                  style: TextStyle(
                      color: kTextColor.withOpacity(0.5), fontSize: 18.0)),
              TextSpan(
                  text: courseTitle,
                  style: kSubtitleTextSyule.copyWith(
                      fontWeight: FontWeight.w600, height: 1.5)),
            ]),
          ),
          Spacer(),
          Container(
            width: 40.0,
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kGreenColor.withOpacity(isDone ? 1 : 0.5)),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20.0, 0.0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
