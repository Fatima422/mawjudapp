import 'package:arb/screens/absencesd.dart';
import 'package:arb/screens/profile.dart';
import 'package:arb/screens/schedule.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../screens/dashboard.dart';
import '../screens/login.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(35, 30, 35, 30),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 52,
        decoration: BoxDecoration(
          color: Colors.white,
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
              blurRadius: 6,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(49),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(28, 0, 0, 0),
              child: Container(
                width: 37,
                height: 37,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF3D9CA3), Color(0xFF004146)],
                    stops: [0, 1],
                    begin: AlignmentDirectional(0, -1),
                    end: AlignmentDirectional(0, 1),
                  ),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.home_outlined,
                    color: Color(0xFFFAFAFA),
                    size: 20,
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashbordScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.person_outline,
                color: Color(0xFF004146),
                size: 25,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.rule,
                color: Color(0xFF004146),
                size: 25,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AbsencesdScreen(),
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.calendar_today,
                color: Color(0xFF004146),
                size: 25,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScheduleeScreen(),
                  ),
                );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.logout,
                color: Color(0xFF004146),
                size: 25,
              ),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
