import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'mains.dart';

class Prelims extends StatelessWidget {
  const Prelims({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    final TapGestureRecognizer mainsRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Mains()));
      };

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('PRELIMS'),
          backgroundColor: const Color(0xFF688EDB),
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
                            text: TextSpan(
                                text:
                                    '\nPreliminary Examination is the first step in the three-phased UPSC Civil Service Eamination which filters out candidates for the second-phase ie., ',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Mains.',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.underline),
                                    recognizer: mainsRecognizer,
                                  ),
                                  const TextSpan(
                                    text: '\n\nSYLLABUS',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\nThe UPSC Prelims syllabus can be divided into two  parts:\n\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                      text:
                                          '• General Studies Paper I\n• CSAT or General Studies Paper-II\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  const TextSpan(
                                      text: '\nGeneral Studies Paper I\n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  const TextSpan(
                                    text:
                                        '• Current events of national and international importance. \n• History of India and Indian National Movement.\n• Indian and World Geography-Physical, Social, Economic Geography of India and the World. \n• Indian Polity and Governance – Constitution, Political System, Panchayati Raj, Public Policy, Rights Issues, etc. \n• Economic and Social Development – Sustainable Development, Poverty, Inclusion, Demographics, Social Sector initiatives, etc. \n• General issues on Environmental Ecology, Biodiversity   and Climate Change – that do not require subject specialisation \n• General Science\n\n',
                                  ),
                                  const TextSpan(
                                    text: 'CSAT/ General Studies Paper-II\n\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const TextSpan(
                                    text:
                                        '• Comprehension.\n• Interpersonal skills including communication skills.\n• Logical reasoning and analytical ability,\n• Decision-making and problem solving,\n• General mental ability,\n• Basic numeracy (numbers and their relations, orders of magnitude, etc.) – Class X level),\n• Data interpretation (charts, graphs, tables, data sufficiency etc. – Class X level',
                                  )
                                ]),
                          ),
                        ])));
          }) ,
        ));
  }
}
