import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:go_coach/models/home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = HomePageModel();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white, // Replace with your background color
        appBar: AppBar(
          backgroundColor: Color(0xFF429783),
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
              child: Text(
                'Home',
                style: TextStyle( // Replace with your text style
                  fontFamily: 'Faustina',
                  color: Colors.white,
                  fontSize: 32,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Wrap(
                    spacing: 0,
                    runSpacing: 0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, -1),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 30, 0, 30),
                          child: Text(
                            'Workout Exercises',
                            style: TextStyle( // Replace with your text style
                              fontFamily: 'Faustina',
                              fontSize: 24,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 180,
                        child: CarouselSlider(
                          items: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://picsum.photos/seed/570/600',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://picsum.photos/seed/174/600',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://picsum.photos/seed/207/600',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                'https://picsum.photos/seed/7/600',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                          carouselController: _model.carouselController,
                          options: CarouselOptions(
                            initialPage: 1,
                            viewportFraction: 0.5,
                            disableCenter: true,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.25,
                            enableInfiniteScroll: true,
                            scrollDirection: Axis.horizontal,
                            autoPlay: false,
                            onPageChanged: (index, _) =>
                                setState(() => _model.carouselCurrentIndex = index),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 30, 0, 30),
                        child: Text(
                          'Training Plan',
                          style: TextStyle( // Replace with your text style
                            fontFamily: 'Faustina',
                            fontSize: 24,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200], // Replace with your color
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-1, -1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Icon(
                                          Icons.settings_outlined,
                                          color: Colors.grey, // Replace with your color
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'Shoulder Press',
                                        style: TextStyle( // Replace with your text style
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            25, 0, 0, 20),
                                        child: Text(
                                          'Walking is simple, yet powerful exercise for your body',
                                          style: TextStyle( // Replace with your text style
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200], // Replace with your color
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-1, -1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Icon(
                                          Icons.settings_outlined,
                                          color: Colors.grey, // Replace with your color
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'Shoulder Press',
                                        style: TextStyle( // Replace with your text style
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            25, 0, 0, 20),
                                        child: Text(
                                          'Walking is simple, yet powerful exercise for your body',
                                          style: TextStyle( // Replace with your text style
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200], // Replace with your color
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-1, -1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Icon(
                                          Icons.settings_outlined,
                                          color: Colors.grey, // Replace with your color
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'Shoulder Press',
                                        style: TextStyle( // Replace with your text style
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            25, 0, 0, 20),
                                        child: Text(
                                          'Walking is simple, yet powerful exercise for your body',
                                          style: TextStyle( // Replace with your text style
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200], // Replace with your color
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-1, -1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Icon(
                                          Icons.settings_outlined,
                                          color: Colors.grey, // Replace with your color
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'Shoulder Press',
                                        style: TextStyle( // Replace with your text style
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 1),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            25, 0, 0, 20),
                                        child: Text(
                                          'Walking is simple, yet powerful exercise for your body',
                                          style: TextStyle( // Replace with your text style
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0,
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
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
