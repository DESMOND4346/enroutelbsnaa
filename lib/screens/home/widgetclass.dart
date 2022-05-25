import 'package:enroutelbsnaa/components/botnavbar.dart';
import 'package:enroutelbsnaa/screens/home/phases/prelims.dart';
import 'package:enroutelbsnaa/screens/home/phases/mains.dart';
import 'package:enroutelbsnaa/screens/home/phases/interview.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'eligibility/agel.dart';
import 'eligibility/educations.dart';
import 'eligibility/nationality.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TapGestureRecognizer gestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Prelims()));
      };

    final TapGestureRecognizer mainsRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Mains()));
      };

    final TapGestureRecognizer interviewRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Interview()));
      };

    final TapGestureRecognizer ageRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AgeL()));
      };

    final TapGestureRecognizer educationRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EducationQ()));
      };

    final TapGestureRecognizer nationalityRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Nationality()));
      };

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                    text: '\nWhat is UPSC CSE?',
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      const TextSpan(
                          text:
                              '\n\nUPSC is the Union Public Service Commission which recruits candidates to various All India Services. CSE is the Civil Services Examination which filters the candidates for the Civil Services like IAS, IPS etc',
                          style: TextStyle(
                              color: Color(0xFF5E5454),
                              fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: '\n\nCivil Service Examination',
                          style: TextStyle(
                              color: Color(0xFF1D1C1A),
                              fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text:
                              '\n\nThere are 3 phases in the CSE namely: \n\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                      TextSpan(
                        text: '➊ Prelims\n',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                            decoration: TextDecoration.underline),
                        recognizer: gestureRecognizer,
                      ),
                      TextSpan(
                        text: '➋ Mains\n',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline),
                        recognizer: mainsRecognizer,
                      ),
                      TextSpan(
                        text: '➌ Interview\n',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline),
                        recognizer: interviewRecognizer,
                      ),
                      TextSpan(
                          text: '\n\nELIGIBILITY',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: '\n\nAGE LIMIT AND NO.OF ATTEMPTS',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                        recognizer: ageRecognizer,
                      ),
                      TextSpan(
                        text: '\nEDUCATIONAL QUALIFICATIONS',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                        recognizer: educationRecognizer,
                      ),
                      TextSpan(
                        text: '\nNATIONALITY',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                        recognizer: nationalityRecognizer,
                      ),
                      TextSpan(
                          text: '\n\n\nBUY ME A COFFEE?',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '\n\nPhonepe',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800)),
                      TextSpan(
                          text: '\nGpay',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800)),
                      TextSpan(
                          text: '\nPaytm',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w800))
                    ]),
              ),
            ),
          ],
        ));
  }
}
