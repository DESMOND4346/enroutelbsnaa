import 'package:flutter/material.dart';

class EducationQ extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('RELIMSP'),
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
                            text: const TextSpan(
                                text:
                                '\n EDUCATIONAL QUALIFICATIONS',
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  const TextSpan(
                                    text:'The various academic requirements as per the IAS Eligibility Criteria are given below:',
                                  ),
                                  const TextSpan(
                                    text: '• Minimum qualification for UPSC exam: The candidate must hold a degree from Government recognised Universities or possess an equivalent qualification.\n • Candidates who are in their final year or awaiting results are also eligible to appear for UPSC preliminary Examination. All such candidates who are likely to appear for IAS exams must produce proof of having passed the said examination along with the application for the main IAS examination.\n • Candidates having professional and technical qualifications recognised by the Government as equivalent to professional and technical degrees.\n • Medical students who have passed the final year of MBBS, but are yet to complete their internship also have eligibility for IAS. Although, along with the Main Examination application, a certificate of course completion (including internship) from the concerned authority of the University/Institution has to be submitted.',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
                                  )
                                ]),
                          ),
                        ])));
          }),
        )



    );
  }
}