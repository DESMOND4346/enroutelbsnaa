import 'package:flutter/material.dart';

class Interview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Interview'),
          backgroundColor: Color(0xFF688ED8),
        ),
        body: DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyText2!,
            child: LayoutBuilder(builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                  child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            RichText(
                                text: const TextSpan(
                                    text:
                                        'Just like prelims and mains, understanding the requirements as prescribed by the UPSC should be the first step. Though aspirants keenly follow the Preliminary and Main exam syllabus, the requirements of UPSC with regarding interview test is missed by even serious aspirants.',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                    children: <TextSpan>[
                                  TextSpan(
                                    text: 'Interview.',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.underline),
                                  ),
                                  TextSpan(
                                    text: '\n\nSYLLABUS',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text:
                                        '\n\nHere are the 6 main points which can bring wonders for you in the IAS interview. This is the most authentic explanation regarding  IAS Interview or Personality test, based on UPSC notification for Civil Service Exam.',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextSpan(
                                      text:
                                          '\n1. Questions will be on matters of general interest',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  TextSpan(
                                    text:
                                        '• The candidate will be interviewed by a Board who will have before them a record of his/her career. He/she will be asked questions on matters of general interest.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextSpan(
                                    text:
                                        '2. The objective of the questions: to judge the mental calibre of a candidate.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text:
                                        '• The objective of the interview is to assess the personal suitability of the candidate for a career in public service by a Board of competent and unbiased observers. The test is intended to judge the mental calibre of a candidate.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextSpan(
                                    text:
                                        '3. These are the qualities which are judged',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text:
                                        '• In broad terms, this is really an assessment of not only his/her intellectual qualities but also social traits and his/her interest in current affairs.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextSpan(
                                    text:
                                        '\n\t• mental alertness,\n\t• critical powers of assimilation,\n\t• clear and logical exposition,\n\t• the balance of judgment,\n\t• variety and depth of interest,\n\t• the ability for social cohesion and leadership,\n\t• intellectual and moral integrity.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextSpan(
                                    text:
                                        '4. What is the technique used in the UPSC CSE interview?',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text:
                                        '• The technique of the interview is not that of a strict cross-examination but of a natural, though directed and purposive conversation which is intended to reveal the mental qualities of the candidate.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextSpan(
                                    text:
                                        '5. Not a test of specialized knowledge; not a test of general knowledge either!',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text:
                                        '• The interview test is not intended to be a test either of the specialized or general knowledge of the candidates which has been already tested through their written papers.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextSpan(
                                    text:
                                        '6. UPSC is looking for ‘well-educated youth’!',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text:
                                        '• Candidates are expected to have taken an intelligent interest not only in their special subjects of academic study but also in the events which are happening around them both within and outside their own state or country as well as in modern currents of thought and in new discoveries which should arouse the curiosity of well-educated youth.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  )
                                ]))
                          ])));
            })));
  }
}
