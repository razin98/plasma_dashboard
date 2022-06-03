import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/widgets/custom_text_field.dart';

class donorprofileDesign extends StatelessWidget {
  const donorprofileDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Container(
      child: Column(
        children: [
        Icon(
          Icons.account_circle,
          size: 140,
          color: Colors.amber,
        ),
        Text(
          'DonorName',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        SizedBox(
          height: height * .1,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                width: 400 ,
                  child: CustomTextField(
                    hint: 'Phone Number',
                    icon: Icon(Icons.phone_android_outlined),
                    isEditable: true,
                    readOnly: true,
                  ),
                ),
                SizedBox(
              width: width * .1,
            ),
              Container(
                width:400 ,
                child: CustomTextField(
                hint: 'Mail',
                icon: Icon(Icons.email_outlined),
                isEditable: true,
                readOnly: true,
            ),
              ),
              ],
            ),
            SizedBox(
              height: height * .1,
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  child: CustomTextField(
                    hint: 'NationalID',
                    icon: Icon(Icons.perm_identity),
                    isEditable: true,
                    readOnly: true,
                  ),
                ),
                SizedBox(
              width: width * .1,
            ),
              Container(
                width: 400,
                child: CustomTextField(
                hint: 'blood type',
                icon: Icon(Icons.water_drop),
                isEditable: true,
                readOnly: true,
            ),
              ),
              ],
            ),
            SizedBox(
              height: height * .1,
            ),
            Row(
                            mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  width: 400,
                  child: CustomTextField(
                    hint: 'password',
                    icon: Icon(Icons.password),
                    isEditable: true,
                    readOnly: true,
                  ),
                ),
                SizedBox(
              width: width * .1,
            ),
              Container(
                width: 400,
                child: CustomTextField(
                hint: 'Mail',
                icon: Icon(Icons.email_outlined),
                isEditable: true,
                readOnly: true,
            ),
              ),
              ],
            ),
            SizedBox(
              height: height * .1,
            ),
          ],
        ),
      ]
      ),
    );
  }
}
