import 'package:flutter/material.dart';

import '../widgets/bottomColorContainer.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/courseDialog.dart';

class ScheduleeScreen extends StatefulWidget {
  const ScheduleeScreen({Key? key}) : super(key: key);

  @override
  _ScheduleeScreenState createState() => _ScheduleeScreenState();
}

class _ScheduleeScreenState extends State<ScheduleeScreen> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Text(
              'الجدول الدراسي',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontFamily: 'Tajawal',
                    color: const Color(0xFF004146),
                    fontSize: 20,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: true,
          toolbarHeight: 70,
          elevation: 5,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: const Color(0xFF004146),
                          labelStyle:
                              Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontFamily: 'Tajawal',
                                    fontSize: 18,
                                  ),
                          indicatorColor: const Color(0xFF004146),
                          tabs: const [
                            Tab(
                              text: 'الأسبوع',
                            ),
                            Tab(
                              text: 'المواد',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(18, 0, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: const [
                                            CourseTitleContainer(
                                                title: 'الخميس'),
                                            CourseTitleContainer(
                                                title: 'الأربعاء'),
                                            CourseTitleContainer(
                                                title: 'الثلاثاء'),
                                            CourseTitleContainer(
                                                title: 'الأثنين'),
                                            CourseTitleContainer(
                                                title: 'الأحد'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              25, 20, 25, 0),
                                      child: GridView(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 5,
                                          crossAxisSpacing: 6,
                                          mainAxisSpacing: 10,
                                          childAspectRatio: 1,
                                        ),
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          InkWell(
                                            onTap: () async {
                                               await Navigator.push(
                                                context,
                                                 MaterialPageRoute(
                                                   builder: (context) =>
                                                       CourseDialog(),
                                                 ),
                                               );
                                            },
                                            child: Container(
                                              width: 60,
                                              height: 117,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: const [
                                                  BoxShadow(
                                                    blurRadius: 6,
                                                    color: Color(0x33000000),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(17),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(20, 20, 0, 0),
                                                child: Text(
                                                  'جدول',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            0, 50, 0, 0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.14,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 6,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(28),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  CourseDialog(),
                                            ),
                                          );
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(90, 10, 90, 0),
                                              child: Text(
                                                'مشروع التخرج',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    ?.copyWith(
                                                      fontFamily: 'Tajawal',
                                                      color: const Color(
                                                          0xFFB38E44),
                                                      fontSize: 14,
                                                    ),
                                              ),
                                            ),
                                            Text(
                                              'مشروع',
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  ?.copyWith(
                                                    fontFamily: 'Tajawal',
                                                    color:
                                                        const Color(0xFF004146),
                                                    fontSize: 12,
                                                  ),
                                            ),
                                            Text(
                                              'كلية الحاسب الآلي- قنفذة - طالبات',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  ?.copyWith(
                                                    fontFamily: 'Tajawal',
                                                    color:
                                                        const Color(0xFF004146),
                                                    fontSize: 12,
                                                  ),
                                            ),
                                            Text(
                                              'معاذ مصطفى احمد نجيب',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1
                                                  ?.copyWith(
                                                    fontFamily: 'Tajawal',
                                                    color:
                                                        const Color(0xFF004146),
                                                    fontSize: 12,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    const BottomBar(),
                    BottomColorContainer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CourseTitleContainer extends StatelessWidget {
  final String title;
  const CourseTitleContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12, 15, 0, 0),
      child: Container(
        width: 60,
        height: 54,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 6,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(17),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8, 15, 0, 0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontFamily: 'Tajawal',
                  color: const Color(0xFFB38E44),
                  fontSize: 12,
                ),
          ),
        ),
      ),
    );
  }
}
