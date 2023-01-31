import 'package:flutter/material.dart';

class CourseDialog extends StatelessWidget {
  const CourseDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      contentPadding: EdgeInsets.all(0),
      content: Container(
        height: MediaQuery.of(context).size.height * 0.55,
        width: MediaQuery.of(context).size.width * 0.8,
        child: // Generated code for this Column Widget...
            Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'مشروع التخرج 2',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontFamily: 'Poppins',
                      color: Color(0xFFB38E44),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                child: Container(
                  width: double.infinity,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Color(0xFF7D6F6F),
                  ),
                ),
              ),
              dialogcontentRow(context, '60014903-4', 'رمز المقرر'),
              dialogcontentRow(context, '60014903-4', 'رمز المقرر'),
              dialogcontentRow(context, '60014903-4', 'رمز المقرر'),
              dialogcontentRow(context, '60014903-4', 'رمز المقرر'),
              dialogcontentRow(context, '60014903-4', 'رمز المقرر'),
              SizedBox(height: 20),
              Text(
                'معاذ مصطفى احمد نجيب',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontFamily: 'Poppins',
                      color: Color(0xFFB38E44),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding dialogcontentRow(BuildContext context, String title, String info) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontFamily: 'Poppins',
                  color: Color(0xFF004146),
                ),
          ),
          SizedBox(width: 15),
          Text(
            info,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontFamily: 'Poppins',
                  color: Color(0xFF004146),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
