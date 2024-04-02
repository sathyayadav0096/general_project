import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yujdesingssample/Config/app_pages.dart';
import 'package:yujdesingssample/Utils/colors.dart';
import 'package:yujdesingssample/Utils/constant.dart';
import 'package:yujdesingssample/Utils/imagesConstants.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final SignUpController signupController = Get.find();
  bool valuefirst = false;
  bool _showPassword1 = true;
  bool home;
  String dropdownvalue = 'In +91';
  var items = ['In +91'];
  final pwcontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final usernamecontroller = TextEditingController();
  final phoneNoController = TextEditingController();
  final forgotpeconteroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width1 = getWidth(context);

    return Scaffold(
      body: SafeArea(
        child: width1 < 800
            ? SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: getWidth(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: getWidth(context),
                        height: 147,
                        child: Stack(
                          children: [
                            Container(
                              width: getWidth(context),
                              height: getHeight(context),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(localimages.pink_rose),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.toNamed(Routes.homePageView);
                              },
                              child: Container(
                                width: width1 / 5,
                                height: 30,
                                margin: EdgeInsets.only(top: 18, left: 15),
                                alignment: Alignment.centerLeft,
                                child: Image.asset(
                                  localimages.flutterWallpaper,
                                  scale: 5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: getWidth(context),
                        padding: EdgeInsets.only(
                            left: 16, top: 20, right: 16, bottom: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.pop(context);
                            //   },
                            //   child: Container(
                            //     width: 70,
                            //     child: Row(
                            //       mainAxisAlignment: MainAxisAlignment.start,
                            //       crossAxisAlignment: CrossAxisAlignment.center,
                            //       children: [
                            //         Container(
                            //           padding: EdgeInsets.all(2),
                            //           decoration: BoxDecoration(
                            //               shape: BoxShape.circle,
                            //               border: Border.all(
                            //                   color: container_borderBlueColor),
                            //               color: Colors.white),
                            //           child: Center(
                            //             child: Icon(
                            //               Icons.arrow_back,
                            //               size: 12,
                            //               color: Icon_blueColor,
                            //             ),
                            //           ),
                            //         ),
                            //         SizedBox(
                            //           width: 10,
                            //         ),
                            //         Text(
                            //           "Back",
                            //           style: TextStyle(
                            //               fontSize: textSizeSMedium,
                            //               color: text_blueColor),
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 30,
                            // ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: textSizeSMedium,
                                  fontWeight: fontBold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'User name',
                                    style: TextStyle(
                                        fontSize: textSizeSMedium,
                                        fontWeight: fontSemibold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: textSizeSMedium)),
                              ]),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: width1,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(color: Colors.black12),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, top: 15, bottom: 14),
                                child: TextFormField(
                                    controller: usernamecontroller,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(
                                          fontSize: textSizeSmallMedium,
                                          color: hint_text_color),
                                      hintText: "user name",
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'Phone Number',
                                    style: TextStyle(
                                        fontSize: textSizeSMedium,
                                        fontWeight: fontSemibold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: textSizeSMedium)),
                              ]),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: width1,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(color: Colors.black12),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, bottom: 10),
                                    child: DropdownButtonHideUnderline(
                                      child: ButtonTheme(
                                        alignedDropdown: true,
                                        child: DropdownButton(
                                          iconEnabledColor: Colors.white,
                                          value: dropdownvalue,
                                          icon: Center(
                                              child: Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 18,
                                            color: Colors.black12,
                                          )),
                                          items: items.map((String items) {
                                            return DropdownMenuItem(
                                                value: items,
                                                child: Text(
                                                  items,
                                                  style: TextStyle(
                                                      fontSize:
                                                          textSizeSmallMedium,
                                                      fontWeight: fontSemibold),
                                                ));
                                          }).toList(),
                                          onChanged: (newValue) {
                                            setState(() {
                                              dropdownvalue =
                                                  newValue.toString();
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    height: getHeight(context),
                                    color: Colors.black12,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 15, bottom: 14),
                                      child: TextFormField(
                                          controller: phoneNoController,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            fillColor: Colors.white,
                                            hintStyle: TextStyle(
                                                fontSize: textSizeSmallMedium,
                                                color: hint_text_color),
                                            hintText: "Phone Number",
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'Email address',
                                    style: TextStyle(
                                        fontSize: textSizeSMedium,
                                        fontWeight: fontSemibold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: textSizeSMedium)),
                              ]),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: width1,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(color: Colors.black12),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, top: 15, bottom: 14),
                                child: TextFormField(
                                    controller: emailcontroller,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(
                                          fontSize: textSizeSmallMedium,
                                          color: hint_text_color),
                                      hintText: "Email address",
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'Password',
                                    style: TextStyle(
                                        fontSize: textSizeSMedium,
                                        fontWeight: fontSemibold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: textSizeSMedium)),
                              ]),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: width1,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(color: Colors.black12),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, top: 15, bottom: 14),
                                child: TextFormField(
                                    controller: pwcontroller,
                                    obscureText: _showPassword1,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      suffixIcon: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _showPassword1 = !_showPassword1;
                                          });
                                        },
                                        child: Icon(
                                          _showPassword1
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                      ),
                                      border: InputBorder.none,
                                      fillColor: c_White,
                                      hintStyle: TextStyle(
                                          fontSize: textSizeSmallMedium,
                                          color: hint_text_color),
                                      hintText: "password",
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Theme(
                                  data: ThemeData(
                                      unselectedWidgetColor: Colors.black12),
                                  child: Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: button_blueColor,
                                    value: this.valuefirst,
                                    onChanged: (bool value) {
                                      setState(() {
                                        this.valuefirst = value;
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      "By creating an account you agree to the our terms and conditions",
                                      style: TextStyle(
                                          fontSize: textSizeSmallMedium),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            InkWell(
                              onTap: () {
                                if (emailcontroller.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please fill EMail'),
                                  ));
                                } else if (pwcontroller.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please fill password'),
                                  ));
                                } else if (phoneNoController.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please fill phone number'),
                                  ));
                                } else if (usernamecontroller.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please fill user name'),
                                  ));
                                } else if (valuefirst == false) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text(
                                        'Please accept term\'s and condition'),
                                  ));
                                } else if (emailcontroller.text.isNotEmpty &&
                                    pwcontroller.text.isNotEmpty) {
                                  print('call signup API here');
                                  // signupController.callAPI(
                                  //     username: usernamecontroller.text,
                                  //     phoneNum: phoneNoController.text,
                                  //     password: pwcontroller.text,
                                  //     email: emailcontroller.text,
                                  //     totlcast: "0",
                                  //     Type: "option");
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text(
                                        'Please fill details and try again'),
                                  ));
                                }
                                //Get.toNamed(Routes.ThankYouForScreen);
                              },
                              child: Container(
                                width: getWidth(context),
                                height: 45,
                                color: container_borderBlueColor,
                                child: Center(
                                    child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: textSizeSMedium),
                                )),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Already have an account? ",
                                  style: TextStyle(
                                    fontSize: textSizeSMedium,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      Get.toNamed(Routes.login);
                                    },
                                    child: Container(
                                      width: 30,
                                      child: Text(
                                        "Log in",
                                        style: TextStyle(
                                            fontSize: textSizeSMedium,
                                            decoration:
                                                TextDecoration.underline,
                                            color: text_blueColor),
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: getWidth(context),
                              height: 20,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {
                                          print('terms and conditions');
                                        },
                                        child: Text(
                                          "Terms",
                                          style: TextStyle(
                                              fontSize: textSizeSMedium,
                                              fontWeight: fontSemibold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        "|",
                                        style: TextStyle(
                                            fontSize: textSizeSMedium,
                                            fontWeight: fontSemibold,
                                            color: Colors.black12),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: InkWell(
                                      onTap: () {
                                        print('privacyPolicy');
                                      },
                                      child: Text(
                                        "Privacy policy",
                                        style: TextStyle(
                                            fontSize: textSizeSMedium,
                                            fontWeight: fontSemibold),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        "|",
                                        style: TextStyle(
                                            fontSize: textSizeSMedium,
                                            fontWeight: fontSemibold,
                                            color: Colors.black12),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "Support",
                                          style: TextStyle(
                                              fontSize: textSizeSMedium,
                                              fontWeight: fontSemibold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            : Container(
                width: getWidth(context),
                height: getHeight(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Container(
                            width: getWidth(context),
                            height: getHeight(context),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(localimages.pink_flower),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.homePageView);
                            },
                            child: Container(
                              width: width1 / 5,
                              height: 30,
                              margin: EdgeInsets.only(top: 57, left: 30),
                              alignment: Alignment.centerLeft,
                              child: Image.asset(
                                localimages.flutterWallpaper,
                                scale: 5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: getWidth(context),
                        height: getHeight(context),
                        padding: EdgeInsets.only(
                            left: 80, top: 30, right: 155, bottom: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.pop(context);
                            //   },
                            //   child: Container(
                            //     width: 60,
                            //     child: Row(
                            //       mainAxisAlignment: MainAxisAlignment.start,
                            //       crossAxisAlignment: CrossAxisAlignment.center,
                            //       children: [
                            //         Container(
                            //           decoration: BoxDecoration(
                            //               shape: BoxShape.circle,
                            //               border: Border.all(
                            //                   color: container_borderBlueColor),
                            //               color: Colors.white),
                            //           child: Center(
                            //             child: Icon(
                            //               Icons.arrow_back,
                            //               size: 12,
                            //               color: Icon_blueColor,
                            //             ),
                            //           ),
                            //         ),
                            //         SizedBox(
                            //           width: 10,
                            //         ),
                            //         Text(
                            //           "Back",
                            //           style: TextStyle(
                            //               fontSize: textSizeSMedium,
                            //               color: text_blueColor),
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: textSizeXXXLarge,
                                  fontWeight: fontBold),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'User name',
                                    style: TextStyle(
                                        fontSize: textSizeSMedium,
                                        fontWeight: fontSemibold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: textSizeSMedium)),
                              ]),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            Container(
                              width: width1,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(color: Colors.black12),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, top: 15, bottom: 14),
                                child: TextFormField(
                                    controller: usernamecontroller,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(
                                          fontSize: textSizeSmallMedium,
                                          color: hint_text_color),
                                      hintText: "user name",
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'Phone Number',
                                    style: TextStyle(
                                        fontSize: textSizeSMedium,
                                        fontWeight: fontSemibold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: textSizeSMedium)),
                              ]),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            Container(
                              width: width1,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(color: Colors.black12),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, bottom: 10),
                                    child: DropdownButtonHideUnderline(
                                      child: ButtonTheme(
                                        alignedDropdown: true,
                                        child: DropdownButton(
                                          iconEnabledColor: Colors.white,
                                          value: dropdownvalue,
                                          icon: Center(
                                              child: Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 18,
                                            color: Colors.black12,
                                          )),
                                          items: items.map((String items) {
                                            return DropdownMenuItem(
                                                value: items,
                                                child: Text(
                                                  items,
                                                  style: TextStyle(
                                                      fontSize:
                                                          textSizeSmallMedium,
                                                      fontWeight: fontSemibold),
                                                ));
                                          }).toList(),
                                          onChanged: (newValue) {
                                            setState(() {
                                              dropdownvalue =
                                                  newValue.toString();
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, top: 15, bottom: 14),
                                      child: TextFormField(
                                          controller: phoneNoController,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            fillColor: Colors.white,
                                            hintStyle: TextStyle(
                                                fontSize: textSizeSmallMedium,
                                                color: hint_text_color),
                                            hintText: "Phone Number",
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'Email address',
                                    style: TextStyle(
                                        fontSize: textSizeSMedium,
                                        fontWeight: fontSemibold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: textSizeSMedium)),
                              ]),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            Container(
                              width: width1,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(color: Colors.black12),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, top: 15, bottom: 14),
                                child: TextFormField(
                                    controller: emailcontroller,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      hintStyle: TextStyle(
                                          fontSize: textSizeSmallMedium,
                                          color: hint_text_color),
                                      hintText: "Email address",
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: 'Password',
                                    style: TextStyle(
                                        fontSize: textSizeSMedium,
                                        fontWeight: fontSemibold,
                                        color: Colors.black)),
                                TextSpan(
                                    text: '*',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: textSizeSMedium)),
                              ]),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            Container(
                              width: width1,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(color: Colors.black12),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, top: 15, bottom: 14),
                                child: TextFormField(
                                    obscureText: _showPassword1,
                                    controller: pwcontroller,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      suffixIcon: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _showPassword1 = !_showPassword1;
                                          });
                                        },
                                        child: Icon(
                                          _showPassword1
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                      ),
                                      border: InputBorder.none,
                                      fillColor: c_White,
                                      hintStyle: TextStyle(
                                          fontSize: textSizeSmallMedium,
                                          color: hint_text_color),
                                      hintText: "password",
                                      // border: InputBorder.none,
                                      // fillColor: Colors.white,
                                      // hintStyle: TextStyle(
                                      //     fontSize: textSizeSmallMedium,
                                      //     color: hint_text_color),
                                      // hintText: "Password",
                                    )),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Theme(
                                  data: ThemeData(
                                      unselectedWidgetColor: Colors.black12),
                                  child: Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: button_blueColor,
                                    value: this.valuefirst,
                                    onChanged: (bool value) {
                                      setState(() {
                                        this.valuefirst = value;
                                      });
                                    },
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Text(
                                      "By creating an account you agree to the our terms and conditions",
                                      style: TextStyle(
                                          fontSize: textSizeSmallMedium),
                                    ))
                              ],
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                if (emailcontroller.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please fill EMail'),
                                  ));
                                } else if (pwcontroller.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please fill password'),
                                  ));
                                } else if (phoneNoController.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please fill phone number'),
                                  ));
                                } else if (usernamecontroller.text.isEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text('Please fill user name'),
                                  ));
                                } else if (valuefirst == false) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                    content: Text(
                                        'Please accept term\'s and condition'),
                                  ));
                                } else if (emailcontroller.text.isNotEmpty &&
                                    pwcontroller.text.isNotEmpty) {
                                  print('call signup API here');
                                  // signupController.callAPI(
                                  //     username: usernamecontroller.text,
                                  //     phoneNum: phoneNoController.text,
                                  //     password: pwcontroller.text,
                                  //     email: emailcontroller.text,
                                  //     totlcast: "0",
                                  //     Type: "option");
                                }
                              },
                              child: Container(
                                width: getWidth(context),
                                height: 45,
                                color: container_borderBlueColor,
                                child: Center(
                                    child: Text(
                                  "Continue",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: textSizeSMedium),
                                )),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Already have an account? ",
                                  style: TextStyle(
                                    fontSize: textSizeSMedium,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      Get.toNamed(Routes.login);
                                    },
                                    child: Container(
                                      width: 30,
                                      child: Text(
                                        "Log in",
                                        style: TextStyle(
                                            fontSize: textSizeSMedium,
                                            decoration:
                                                TextDecoration.underline,
                                            color: text_blueColor),
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 86,
                              ),
                            ),
                            Container(
                              width: getWidth(context),
                              height: 20,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {
                                          print('terms and conditions');
                                        },
                                        child: Text(
                                          "Terms",
                                          style: TextStyle(
                                              fontSize: textSizeSMedium,
                                              fontWeight: fontSemibold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        "|",
                                        style: TextStyle(
                                            fontSize: textSizeSMedium,
                                            fontWeight: fontSemibold,
                                            color: Colors.black12),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {
                                          print('privacyPolicy');
                                        },
                                        child: Text(
                                          "Privacy policy",
                                          style: TextStyle(
                                              fontSize: textSizeSMedium,
                                              fontWeight: fontSemibold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: Text(
                                        "|",
                                        style: TextStyle(
                                            fontSize: textSizeSMedium,
                                            fontWeight: fontSemibold,
                                            color: Colors.black12),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "Support",
                                          style: TextStyle(
                                              fontSize: textSizeSMedium,
                                              fontWeight: fontSemibold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
        // : Container(
        //     width: getWidth(context),
        //     child: SingleChildScrollView(
        //       scrollDirection: Axis.vertical,
        //
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Expanded(
        //             flex: 1,
        //             child: Stack(
        //               children: [
        //                 Container(
        //                   width: getWidth(context),
        //                   height: 850,
        //                   decoration: BoxDecoration(
        //                     image: DecorationImage(
        //                       image:
        //                           AssetImage('images/login_background.JPG'),
        //                       fit: BoxFit.fill,
        //                     ),
        //                   ),
        //                 ),
        //                 Container(
        //                   width: width1 / 5,
        //                   height: 30,
        //                   margin: EdgeInsets.only(top: 57, left: 30),
        //                   alignment: Alignment.centerLeft,
        //                   child: Image.asset(
        //                     'images/estreeetmart.png',
        //                     scale: 5,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           Expanded(
        //             flex: 1,
        //             child: Container(
        //               padding:
        //                   EdgeInsets.only(left: 80, top: 30, right: 155),
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.start,
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   InkWell(
        //                     onTap: (){},
        //                     child: Container(
        //                       width: 60,
        //                       child: Row(
        //                         mainAxisAlignment: MainAxisAlignment.start,
        //                         crossAxisAlignment: CrossAxisAlignment.center,
        //                         children: [
        //                           Container(
        //                             decoration: BoxDecoration(
        //                                 shape: BoxShape.circle,
        //                                 border: Border.all(
        //                                     color: container_borderBlueColor),
        //                                 color: Colors.white),
        //                             child: Icon(
        //                               Icons.arrow_back,
        //                               size: 12,
        //                               color: Icon_blueColor,
        //                             ),
        //                           ),
        //                           SizedBox(
        //                             width: 10,
        //                           ),
        //                           Text(
        //                             "Back",
        //                             style: TextStyle(
        //                                 fontSize: textSizeSMedium,
        //                                 color: text_blueColor),
        //                           )
        //                         ],
        //                       ),
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 47,
        //                   ),
        //                   Text(
        //                     "Sign up",
        //                     style: TextStyle(
        //                         fontSize: textSizeXXXLarge,
        //                         fontWeight: fontBold),
        //                   ),
        //                   SizedBox(
        //                     height: 30,
        //                   ),
        //                   RichText(
        //                     text: TextSpan(children: [
        //                       TextSpan(
        //                           text: 'User name',
        //                           style: TextStyle(
        //                               fontSize: textSizeSMedium,
        //                               fontWeight: fontSemibold)),
        //                       TextSpan(
        //                           text: '*',
        //                           style: TextStyle(
        //                               color: Colors.red,
        //                               fontSize: textSizeSMedium)),
        //                     ]),
        //                   ),
        //                   SizedBox(
        //                     height: 12,
        //                   ),
        //                   Container(
        //                     width: width1,
        //                     height: 45,
        //                     decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(3),
        //                       border: Border.all(color: Colors.black12),
        //                       color: Colors.white,
        //                     ),
        //                     child: Padding(
        //                       padding: const EdgeInsets.only(
        //                           left: 30, top: 15, bottom: 14),
        //                       child: TextFormField(
        //                           keyboardType: TextInputType.number,
        //                           decoration: InputDecoration(
        //                             border: InputBorder.none,
        //                             fillColor: Colors.white,
        //                             hintStyle: TextStyle(
        //                                 fontSize: textSizeSmallMedium,
        //                                 color: hint_text_color),
        //                             hintText: "Email address",
        //                           )),
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 30,
        //                   ),
        //                   RichText(
        //                     text: TextSpan(children: [
        //                       TextSpan(
        //                           text: 'Phone Number',
        //                           style: TextStyle(
        //                               fontSize: textSizeSMedium,
        //                               fontWeight: fontSemibold)),
        //                       TextSpan(
        //                           text: '*',
        //                           style: TextStyle(
        //                               color: Colors.red,
        //                               fontSize: textSizeSMedium)),
        //                     ]),
        //                   ),
        //                   SizedBox(
        //                     height: 12,
        //                   ),
        //                   Container(
        //                     width: width1,
        //                     height: 45,
        //                     decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(3),
        //                       border: Border.all(color: Colors.black12),
        //                       color: Colors.white,
        //                     ),
        //                     child: Row(
        //                       children: [
        //                         Padding(
        //                           padding: const EdgeInsets.only(
        //                               top: 15, bottom: 14),
        //                           child: DropdownButtonHideUnderline(
        //                             child: ButtonTheme(
        //                               alignedDropdown: true,
        //                               child: DropdownButton(
        //                                 iconEnabledColor: Colors.white,
        //                                 value: dropdownvalue,
        //                                 icon: Center(
        //                                     child: Icon(
        //                                   Icons.keyboard_arrow_down,
        //                                   size: 18,
        //                                   color: Colors.black12,
        //                                 )),
        //                                 items: items.map((String items) {
        //                                   return DropdownMenuItem(
        //                                       value: items,
        //                                       child: Text(
        //                                         items,
        //                                         style: TextStyle(
        //                                             fontSize:
        //                                                 textSizeSmallMedium,
        //                                             fontWeight:
        //                                                 fontSemibold),
        //                                       ));
        //                                 }).toList(),
        //                                 onChanged: (newValue) {
        //                                   setState(() {
        //                                     dropdownvalue =
        //                                         newValue.toString();
        //                                   });
        //                                 },
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                         Expanded(
        //                           flex: 1,
        //                           child: Padding(
        //                             padding: const EdgeInsets.only(
        //                                 left: 30, top: 15, bottom: 14),
        //                             child: TextFormField(
        //                                 keyboardType: TextInputType.number,
        //                                 decoration: InputDecoration(
        //                                   border: InputBorder.none,
        //                                   fillColor: Colors.white,
        //                                   hintStyle: TextStyle(
        //                                       fontSize: textSizeSmallMedium,
        //                                       color: hint_text_color),
        //                                   hintText: "Phone Number",
        //                                 )),
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 30,
        //                   ),
        //                   RichText(
        //                     text: TextSpan(children: [
        //                       TextSpan(
        //                           text: 'Email address',
        //                           style: TextStyle(
        //                               fontSize: textSizeSMedium,
        //                               fontWeight: fontSemibold)),
        //                       TextSpan(
        //                           text: '*',
        //                           style: TextStyle(
        //                               color: Colors.red,
        //                               fontSize: textSizeSMedium)),
        //                     ]),
        //                   ),
        //                   SizedBox(
        //                     height: 12,
        //                   ),
        //                   Container(
        //                     width: width1,
        //                     height: 45,
        //                     decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(3),
        //                       border: Border.all(color: Colors.black12),
        //                       color: Colors.white,
        //                     ),
        //                     child: Padding(
        //                       padding: const EdgeInsets.only(
        //                           left: 30, top: 15, bottom: 14),
        //                       child: TextFormField(
        //                           keyboardType: TextInputType.number,
        //                           decoration: InputDecoration(
        //                             border: InputBorder.none,
        //                             fillColor: Colors.white,
        //                             hintStyle: TextStyle(
        //                                 fontSize: textSizeSmallMedium,
        //                                 color: hint_text_color),
        //                             hintText: "Email address",
        //                           )),
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 30,
        //                   ),
        //                   RichText(
        //                     text: TextSpan(children: [
        //                       TextSpan(
        //                           text: 'Password',
        //                           style: TextStyle(
        //                               fontSize: textSizeSMedium,
        //                               fontWeight: fontSemibold)),
        //                       TextSpan(
        //                           text: '*',
        //                           style: TextStyle(
        //                               color: Colors.red,
        //                               fontSize: textSizeSMedium)),
        //                     ]),
        //                   ),
        //                   SizedBox(
        //                     height: 12,
        //                   ),
        //                   Container(
        //                     width: width1,
        //                     height: 45,
        //                     decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(3),
        //                       border: Border.all(color: Colors.black12),
        //                       color: Colors.white,
        //                     ),
        //                     child: Padding(
        //                       padding: const EdgeInsets.only(
        //                           left: 30, top: 15, bottom: 14),
        //                       child: TextFormField(
        //                           keyboardType: TextInputType.number,
        //                           decoration: InputDecoration(
        //                             border: InputBorder.none,
        //                             fillColor: Colors.white,
        //                             hintStyle: TextStyle(
        //                                 fontSize: textSizeSmallMedium,
        //                                 color: hint_text_color),
        //                             hintText: "Password",
        //                           )),
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 20,
        //                   ),
        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.start,
        //                     crossAxisAlignment: CrossAxisAlignment.center,
        //                     children: [
        //                       Theme(
        //                         data: ThemeData(
        //                             unselectedWidgetColor: Colors.black12),
        //                         child: Checkbox(
        //                           checkColor: Colors.white,
        //                           activeColor: button_blueColor,
        //                           value: this.valuefirst,
        //                           onChanged: (bool value) {
        //                             setState(() {
        //                               this.valuefirst = value;
        //                             });
        //                           },
        //                         ),
        //                       ),
        //                       Expanded(
        //                           flex:1,
        //                           child: Text("By creating an account you agree to the our terms and conditions",style: TextStyle(fontSize: textSizeSmallMedium),))
        //                     ],
        //                   ),
        //                   SizedBox(
        //                     height: 30,
        //                   ),
        //                   InkWell(
        //                     onTap: (){},
        //                     child: Container(
        //                       width: getWidth(context),
        //                       height: 45,
        //                       color: container_borderBlueColor,
        //                       child: Center(
        //                           child: Text(
        //                         "Continue",
        //                         style: TextStyle(
        //                             color: Colors.white,
        //                             fontSize: textSizeSMedium),
        //                       )),
        //                     ),
        //                   ),
        //                   SizedBox(
        //                     height: 30,
        //                   ),
        //                   Row(
        //                     children: [
        //                       Text(
        //                         "Already have an account? ",
        //                         style: TextStyle(
        //                           fontSize: textSizeSMedium,
        //                         ),
        //                       ),
        //                       Expanded(
        //                         flex: 1,
        //                         child: InkWell(
        //                           onTap: (){},
        //                           child: Container(
        //                             width: 30,
        //                             child: Text(
        //                               "Sign in",
        //                               style: TextStyle(
        //                                   fontSize: textSizeSMedium,
        //                                   decoration: TextDecoration.underline,
        //                                   color: text_blueColor),
        //                               maxLines: 1,
        //                             ),
        //                           ),
        //                         ),
        //                       )
        //                     ],
        //                   ),
        //                   SizedBox(
        //                     height: 86,
        //                   ),
        //                   Container(
        //                     width: getWidth(context),
        //                     height: 20,
        //                     child: Row(
        //                       children: [
        //                         Expanded(
        //                           flex: 1,
        //                           child: Center(
        //                             child: InkWell(
        //                               onTap: (){},
        //                               child: Text(
        //                                 "Terms",
        //                                 style: TextStyle(
        //                                     fontSize: textSizeSMedium,
        //                                     fontWeight: fontSemibold),
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                         Expanded(
        //                           flex: 1,
        //                           child: Center(
        //                             child: Text(
        //                               "|",
        //                               style: TextStyle(
        //                                   fontSize: textSizeSMedium,
        //                                   fontWeight: fontSemibold,
        //                                   color: Colors.black12),
        //                             ),
        //                           ),
        //                         ),
        //                         Expanded(
        //                           flex: 1,
        //                           child: Center(
        //                             child: InkWell(
        //                               onTap: (){},
        //                               child: Text(
        //                                 "Privacy policy",
        //                                 style: TextStyle(
        //                                     fontSize: textSizeSMedium,
        //                                     fontWeight: fontSemibold),
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                         Expanded(
        //                           flex: 1,
        //                           child: Center(
        //                             child: Text(
        //                               "|",
        //                               style: TextStyle(
        //                                   fontSize: textSizeSMedium,
        //                                   fontWeight: fontSemibold,
        //                                   color: Colors.black12),
        //                             ),
        //                           ),
        //                         ),
        //                         Expanded(
        //                           flex: 1,
        //                           child: Center(
        //                             child: InkWell(
        //                               onTap: (){},
        //                               child: Text(
        //                                 "Support",
        //                                 style: TextStyle(
        //                                     fontSize: textSizeSMedium,
        //                                     fontWeight: fontSemibold),
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //
        //                 ],
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
      ),
    );
  }
}
