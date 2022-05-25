import 'package:flutter/material.dart';

class AgeL extends StatelessWidget {
  const AgeL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                                    '\n AGE LIMIT AND NO. OF ATTEMPTS',
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                    text:'Any one above 21 years can apply for the UPSC CSE.',
                                  ),
                                  TextSpan(
                                    text: ' However, age relaxation is present as follows:\n',
                                  ),
                                  TextSpan(
                                    text: 'Category- \t \t Upper Relaxation	\t No. Attempts \n General \t \t-	32 \t-	6 \n OBC \t \t-	35 \t-	9 \n SC/ST \t \t-	37 \t-	Unlimited (Up to age limit) \n Disabled DSP \t \t-	35 \t-	9 \n Ex-Servicemen \t \t-	37	\t- 9 \n Persons with Disability – EWS  \t \t- 42 \t- 9'
                                  )
                                ]),
                          ),
                        ])));
          }),
        ));
  }
}
