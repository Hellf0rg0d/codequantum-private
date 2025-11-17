import 'dart:async';
import 'dart:ui';
import 'package:rainbow_edge_lighting/rainbow_edge_lighting.dart';
import 'package:codequantum/getintouch.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

bool isHovering = false;
bool isHoveringOverProject1 = false,
    isHoveringOverProject2 = false,
    isHoveringOverProject3 = false;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CODEQUANTUM.IN',
      scrollBehavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      }),
      theme: ThemeData(fontFamily: "Roboto_Mono"),
      home: Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.transparent,
            backgroundColor: Color(0xFF122536),
            title: Column(
              // crossAxisAlignment:,
              children: [
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: LayoutBuilder(builder: (context, constraints) {
                    if (constraints.maxWidth < 1345) {
                      return Row(
                        children: [
                          Image.asset('assets/CodeQuLog.png',
                              height: 50, width: 200),
                          SizedBox(width: 5),
                          Spacer(),
                          GestureDetector(
                              onTap: () async {
                                final Uri URi = Uri.parse(
                                    'https://github.com/Hellf0rg0d?tab=repositories');
                                await launchUrl(URi);
                              },
                              child: Text('Projects',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white))),
                          SizedBox(width: 5),
                        ],
                      );
                    } else {
                      return Row(
                        children: [
                          Image.asset('assets/CodeQuLog.png', height: 35),
                          SizedBox(width: 30),
                          // Text(
                          //   'CODEQUANTUM.IN',
                          //   style: TextStyle(
                          //       color: const Color.fromARGB(255, 42, 157, 244),
                          //       fontSize: 22,
                          //       fontWeight: FontWeight.w500),
                          // ),
                          Spacer(),
                          GestureDetector(
                              onTap: () async {
                                final Uri URi = Uri.parse(
                                    'https://github.com/Hellf0rg0d?tab=repositories');
                                await launchUrl(URi);
                              },
                              child: Text('Projects',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white))),
                          SizedBox(width: 30),
                        ],
                      );
                    }
                  }),
                ),
                const SizedBox(height: 20),
                const Divider(
                  height: 10,
                  color: Color.fromARGB(60, 224, 224, 224),
                ),
              ],
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 10, 10, 10),
          body: mainpg()),
    );
  }
}

class mainpg extends StatefulWidget {
  mainpg({
    super.key,
  });

  @override
  State<mainpg> createState() => _mainpgState();
}

class _mainpgState extends State<mainpg> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      //mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 50),
        LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 1345) {
            return Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "Building Tomorrow's \nTechnology,\nToday.\n",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto_Mono",
                                color: Color.fromARGB(130, 224, 224, 224),
                                fontSize: 24),
                          )
                        ])),
                    Spacer(),
                  ],
                ),
                Row(children: [
                  Spacer(),
                  SizedBox(
                    height: 100,
                    width: 250,
                    child: Center(child: codequantumflip(fontsize: 25)),
                  ),
                  Spacer()
                ]),
              ],
            );
          } else {
            return Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: "Building Tomorrow's Technology, Today.\n",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto_Mono",
                                color: Color.fromARGB(130, 224, 224, 224),
                                fontSize: 24),
                          ),
                        ])),
                    Spacer(),
                  ],
                ),
                Row(children: [
                  Spacer(),
                  SizedBox(
                    height: 100,
                    width: 500,
                    child: Center(child: codequantumflip(fontsize: 32)),
                  ),
                  Spacer()
                ]),
              ],
            );
          }
        }),
        // SizedBox(height: 10),

        SizedBox(height: 50),
        Row(
          children: [
            Spacer(),
            RainbowEdgeLighting(
                radius: 12,
                thickness: 1.2,
                glowEnabled: true,
                enabled: isHovering,
                speed: 0.4,
                colors: <Color>[
                  Color(0xFF2998EC),
                  Color(0xFF2794E2),
                  Color(0xFF2690DD),
                  Color(0xFF248CCB),
                  Color(0xFF2281C3),
                  Color(0xFF2079BB),
                  Color(0xFF217DBD),
                  Color(0xFF1F76B5),
                  Color(0xFF1E72AB),
                  Color(0xFF1D6FA3),
                  Color(0xFF217CBC),
                ],
                child: ElevatedButton(
                  onHover: (bool) {
                    setState(() {
                      isHovering = !isHovering;
                    });
                  },
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const getintouch()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: <Color>[
                        Color(0xFF2998EC),
                        Color(0xFF2794E2),
                        Color(0xFF2690DD),
                        Color(0xFF248CCB),
                        Color(0xFF2281C3),
                        Color(0xFF2079BB),
                        Color(0xFF217DBD),
                        Color(0xFF1F76B5),
                        Color(0xFF1E72AB),
                        Color(0xFF1D6FA3),
                        Color(0xFF217CBC),
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 88.0,
                            minHeight: 36.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 15),
                          child: const Text(
                            'Get in touch',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                        )),
                  ),
                )),
            Spacer()
          ],
        ),
        SizedBox(height: 70),
        Row(
          children: [
            Spacer(),
            Text('Featured Projects',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800)),
            Spacer(),
          ],
        ),
        SizedBox(height: 50),
        LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 1345) {
            return Column(
              children: [
                project1(
                  width: (((MediaQuery.sizeOf(context).width) - 32)),
                ),
                SizedBox(height: 50),
                project2(
                  width: (((MediaQuery.sizeOf(context).width) - 32)),
                ),
                SizedBox(height: 50),
                project3(
                  width: (((MediaQuery.sizeOf(context).width) - 32)),
                ),
              ],
            );
          } else {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                project1(
                  width: (((MediaQuery.sizeOf(context).width) - 200) / 3),
                ),
                SizedBox(width: 50),
                project2(
                  width: (((MediaQuery.sizeOf(context).width) - 200) / 3),
                ),
                SizedBox(width: 50),
                project3(
                  width: (((MediaQuery.sizeOf(context).width) - 200) / 3),
                ),
                Spacer()
              ],
            );
          }
        }),
        SizedBox(height: 100),
        Container(
            color: Color(0xFF122536),
            child: Padding(
                padding: EdgeInsetsGeometry.all(15),
                child: Column(children: [
                  // const Divider(height: 10, color: Color.fromARGB(60, 224, 224, 224)),
                  Text(
                    'CODEQUANTUM (OPC) PRIVATE LIMITED',
                    style: TextStyle(
                        color: Color.fromARGB(130, 224, 224, 224),
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'CIN: U62011KA2025OPC210724\n Regd. Office : C/o, N.H. M Gurubasavarajaiah, Hubli Udyamnagar, Hubli, Dharwad- 580030, Karnataka, India\n Admin Office : Plot No.9 "Nammamane" 9th Cross, Shreyanagar,  Udyamnagar, Gokul Road, Hubballi - 580030 KA \nCall : +91 94495 67617  | codequantumpvtltd@gmail.com  |  https://codequantum.in\n',
                    style: TextStyle(
                        color: Color.fromARGB(130, 224, 224, 224),
                        fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  // SizedBox(height: 30),
                  const Divider(
                    height: 10,
                    color: Color.fromARGB(51, 42, 157, 244),
                  ),
                  // color: Color.fromARGB(31, 42, 157, 244)),
                  Text(
                    '\n© 2025 CodeQuantum. All rights reserved.',
                    style: TextStyle(
                        color: Color.fromARGB(130, 224, 224, 224),
                        fontSize: 17),
                  ),
                  // SizedBox(height: 100),
                ])))
      ],
    ));
  }
}

class codequantumflip extends StatefulWidget {
  double fontsize;
  codequantumflip({super.key, required this.fontsize});

  @override
  State<codequantumflip> createState() => _codequantumflipState();
}

class _codequantumflipState extends State<codequantumflip> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            RotateAnimatedText(
              'At CodeQuantum...',
              textStyle: TextStyle(
                  color: Color.fromARGB(255, 42, 157, 244),
                  fontSize: widget.fontsize,
                  fontFamily: "Roboto_Mono"),
            ),
            RotateAnimatedText('At Here...',
                textStyle: TextStyle(
                    color: Color.fromARGB(255, 42, 157, 244),
                    fontSize: widget.fontsize,
                    fontFamily: "Roboto_Mono")),
          ],
        ),
      ],
    );
  }
}

class project1 extends StatefulWidget {
  double width;

  project1({
    super.key,
    required this.width,
  });

  @override
  State<project1> createState() => _project1State();
}

class _project1State extends State<project1> {
  double endpoint = 0.1;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (PointerEnterEvent) {
          setState(() {
            isHoveringOverProject1 = true;

            endpoint = isHoveringOverProject1 ? 1 : 0.1;
          });
        },
        onExit: (PointerExitEvent) {
          setState(() {
            isHoveringOverProject1 = false;

            endpoint = isHoveringOverProject1 ? 1 : 0.1;
          });
        },
        child: RainbowEdgeLighting(
            glowEnabled: true,
            enabled: isHoveringOverProject1,
            radius: 10,
            speed: 0.4,
            thickness: 0.8,
            colors: <Color>[
              Color(0xFF2A2A2A), // Dark gray
              Color(0xFF1C1C1C),
            ],
            child: GestureDetector(
              child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0.0, end: endpoint),
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOutCubic,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: 1,
                      child: Transform.translate(
                        offset: Offset(0, 20 * (1 - value)),
                        child: child,
                      ),
                    );
                  },
                  child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInSine,
                      constraints: BoxConstraints(
                        maxWidth: widget.width,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(
                              color: Color.fromARGB(25, 255, 255, 255)),
                          color: const Color.fromARGB(15, 224, 224, 224)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UNVELIT.IN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "A Active Form-based WebApp, blend of reddit and 4chan made for university students.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 11),
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(25, 42, 157, 244),
                                        borderRadius: BorderRadius.circular(9)),
                                    child: Text(
                                      'Java-SpringBoot',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 42, 157, 244)),
                                    )),
                                SizedBox(width: 10),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 11),
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(25, 42, 157, 244),
                                        borderRadius: BorderRadius.circular(9)),
                                    child: Text(
                                      'MySQL',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 42, 157, 244)),
                                    )),
                                SizedBox(width: 10),
                              ],
                            )
                          ],
                        ),
                      ))),
              onTap: () async {
                final Uri URi = Uri.parse('https://unvelit.in');
                await launchUrl(URi);
              },
            )));
  }
}

class project2 extends StatefulWidget {
  double width;

  project2({super.key, required this.width});

  @override
  State<project2> createState() => _project2State();
}

class _project2State extends State<project2> {
  double endpoint = 0.1;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (PointerEnterEvent) {
          setState(() {
            isHoveringOverProject2 = true;

            endpoint = isHoveringOverProject2 ? 1 : 0.1;
          });
        },
        onExit: (PointerExitEvent) {
          setState(() {
            isHoveringOverProject2 = false;

            endpoint = isHoveringOverProject2 ? 1 : 0.1;
          });
        },
        child: RainbowEdgeLighting(
            glowEnabled: true,
            enabled: isHoveringOverProject2,
            radius: 10,
            speed: 0.4,
            thickness: 0.8,
            colors: <Color>[
              Color(0xFF2A2A2A), // Dark gray
              Color(0xFF1C1C1C),
            ],
            child: GestureDetector(
              child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0.0, end: endpoint),
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOutCubic,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: 1,
                      child: Transform.translate(
                        offset: Offset(0, 20 * (1 - value)),
                        child: child,
                      ),
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInSine,
                    constraints: BoxConstraints(
                      maxWidth: widget.width,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                            color: Color.fromARGB(25, 255, 255, 255)),
                        color: const Color.fromARGB(15, 224, 224, 224)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ToDo-App',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'A simple task management application designed to help users organize and track their tasks efficiently.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 11),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(25, 42, 157, 244),
                                      borderRadius: BorderRadius.circular(9)),
                                  child: Text(
                                    'Flutter',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 42, 157, 244)),
                                  )),
                              SizedBox(width: 10),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 11),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(25, 42, 157, 244),
                                      borderRadius: BorderRadius.circular(9)),
                                  child: Text(
                                    'MySQL',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 42, 157, 244)),
                                  )),
                              SizedBox(width: 10),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              onTap: () async {
                final Uri URi =
                    Uri.parse('https://github.com/Hellf0rg0d/ToDo-App');
                await launchUrl(URi);
              },
            )));
  }
}

class project3 extends StatefulWidget {
  double width;

  project3({
    super.key,
    required this.width,
  });

  @override
  State<project3> createState() => _project3State();
}

class _project3State extends State<project3> {
  double endpoint = 0.1;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (PointerEnterEvent) {
          setState(() {
            isHoveringOverProject3 = true;

            endpoint = isHoveringOverProject3 ? 1 : 0.1;
          });
        },
        onExit: (PointerExitEvent) {
          setState(() {
            isHoveringOverProject3 = false;

            endpoint = isHoveringOverProject3 ? 1 : 0.1;
          });
        },
        child: RainbowEdgeLighting(
            glowEnabled: true,
            enabled: isHoveringOverProject3,
            radius: 10,
            thickness: 0.8,
            speed: 0.4,
            colors: <Color>[
              Color(0xFF2A2A2A), // Dark gray
              Color(0xFF1C1C1C),
            ],
            child: GestureDetector(
              child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0.0, end: endpoint),
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOutCubic,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: 1,
                      child: Transform.translate(
                        offset: Offset(0, 20 * (1 - value)),
                        child: child,
                      ),
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInSine,
                    constraints: BoxConstraints(
                      maxWidth: widget.width,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                            color: Color.fromARGB(25, 255, 255, 255)),
                        color: const Color.fromARGB(15, 224, 224, 224)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CODEQUANTUM.IN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'The home page for codequantum.in',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          LayoutBuilder(builder: (context, constraints) {
                            if (constraints.maxWidth < 1345) {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 11),
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  25, 42, 157, 244),
                                              borderRadius:
                                                  BorderRadius.circular(9)),
                                          child: Text(
                                            'Flutter',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 42, 157, 244)),
                                          )),
                                      SizedBox(width: 10),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 11),
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  25, 42, 157, 244),
                                              borderRadius:
                                                  BorderRadius.circular(9)),
                                          child: Text(
                                            'Java-SpringBoot',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 42, 157, 244)),
                                          )),
                                      SizedBox(width: 10),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 11),
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  25, 42, 157, 244),
                                              borderRadius:
                                                  BorderRadius.circular(9)),
                                          child: Text(
                                            'MySQL',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 42, 157, 244)),
                                          )),
                                    ],
                                  ),
                                ],
                              );
                            } else {
                              return Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 11),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(25, 42, 157, 244),
                                          borderRadius:
                                              BorderRadius.circular(9)),
                                      child: Text(
                                        'Flutter',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 42, 157, 244)),
                                      )),
                                  SizedBox(width: 10),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 11),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(25, 42, 157, 244),
                                          borderRadius:
                                              BorderRadius.circular(9)),
                                      child: Text(
                                        'Java-SpringBoot',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 42, 157, 244)),
                                      )),
                                  SizedBox(width: 10),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 11),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(25, 42, 157, 244),
                                          borderRadius:
                                              BorderRadius.circular(9)),
                                      child: Text(
                                        'MySQL',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 42, 157, 244)),
                                      )),
                                ],
                              );
                            }
                          })
                        ],
                      ),
                    ),
                  )),
              onTap: () async {
                final Uri URi =
                    Uri.parse('https://github.com/Hellf0rg0d/codequantum');
                await launchUrl(URi);
              },
            )));
  }
}
