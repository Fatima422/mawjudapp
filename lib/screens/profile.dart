import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Backend.dart';
import '../widgets/bottomColorContainer.dart';
import '../widgets/bottom_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users").doc().get().then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xFFFAFAFA),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Text(
                'الملف الشخصي',
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(35, 10, 35, 0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: Image.network(
                          loggedInUser!.photo_url!,
                          width: MediaQuery.of(context).size.width * 0.53,
                          height: 198,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),],),
             Padding(
              padding: EdgeInsetsDirectional.fromSTEB(35, 15, 35, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 337.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(57),
                ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Text(
                            loggedInUser!.UsersName!,
                            textAlign: TextAlign.justify,
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                  fontFamily: 'Tajawal',
                                  color: const Color(0xFFB38E44),
                                  fontSize: 19,
                                ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 11, 0, 0),
                          child: Text(
                            loggedInUser!.UsersID!.toString(),
                            textAlign: TextAlign.justify,
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                  fontFamily: 'Tajawal',
                                  color: const Color(0xFFB38E44),
                                  fontSize: 19,
                                ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 22, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, MediaQuery.of(context).size.height * 0.02, 10, 0),
                                child: Text(
                                  loggedInUser!.Collage!,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, MediaQuery.of(context).size.height * 0.02, 0, 0),
                                child: Text(
                                  'الكلية :',
                                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontFamily: 'Tajawal',
                                    color: const Color(0xFF004146),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 22, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, MediaQuery.of(context).size.height * 0.02, 10, 0),
                                child: Text(
                                  loggedInUser!.Major!,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, MediaQuery.of(context).size.height * 0.02, 0, 0),
                                child: Text(
                                  'القسم :',
                                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontFamily: 'Tajawal',
                                    color: const Color(0xFF004146),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 22, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, MediaQuery.of(context).size.height * 0.02, 10, 0),
                                child: Text(
                                  loggedInUser!.Level!,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, MediaQuery.of(context).size.height * 0.02, 0, 0),
                                child: Text(
                                  'المرحلة :',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.copyWith(
                                        fontFamily: 'Tajawal',
                                        color: const Color(0xFF004146),
                                        fontSize: 18,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 22, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, MediaQuery.of(context).size.height * 0.02, 10, 0),
                                child: Text(
                                  loggedInUser!.Nationality!,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, MediaQuery.of(context).size.height * 0.02, 0, 0),
                                child: Text(
                                  'الجنسية :',
                                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontFamily: 'Tajawal',
                                    color: const Color(0xFF004146),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 22, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, MediaQuery.of(context).size.height * 0.02, 10, 0),
                                child: Text(
                                  loggedInUser!.NationalityID.toString()!,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, MediaQuery.of(context).size.height * 0.02, 0, 0),
                                child: Text(
                                  'رقم الهوية :',
                                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontFamily: 'Tajawal',
                                    color: const Color(0xFF004146),
                                    fontSize: 18,
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
        ),);
    }
  }
