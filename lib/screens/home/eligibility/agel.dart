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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text:  const TextSpan(
                              text: '\n AGE LIMIT AND NO. OF ATTEMPTS\n\n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold, decoration: TextDecoration.underline, decorationThickness: 2.5),
                            ),
                          ),
                          Table(
                            border: TableBorder.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 2),
                            children: [
                              TableRow(children: [
                                Column(
                                  children: const [
                                    Text(
                                      'Category',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Upper Relaxation',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'No. Attempts',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ]),
                              TableRow(children: [
                                Column(
                                  children: [Text('General')],
                                ),
                                Column(
                                  children: [Text('32')],
                                ),
                                Column(
                                  children: [Text('6')],
                                ),
                              ]),
                              TableRow(children: [
                                Column(
                                  children: [Text('OBC')],
                                ),
                                Column(
                                  children: [Text('35')],
                                ),
                                Column(
                                  children: [Text('9')],
                                )
                              ]),
                              TableRow(children: [
                                Column(
                                  children: [Text('SC/ST')],
                                ),
                                Column(
                                  children: [Text('37')],
                                ),
                                Column(
                                  children: [Text('Unlimited')],
                                )
                              ]),
                              TableRow(children: [
                                Column(
                                  children: [Text('DDSP')],
                                ),
                                Column(
                                  children: [Text('35')],
                                ),
                                Column(
                                  children: [Text('6')],
                                )
                              ]),
                              TableRow(children: [
                                Column(
                                  children: [Text('Ex-Servicemen')],
                                ),
                                Column(
                                  children: [Text('37')],
                                ),
                                Column(
                                  children: [Text('9')],
                                )
                              ]),
                              TableRow(children: [
                                Column(
                                  children: [Text('PH - EWS')],
                                ),
                                Column(
                                  children: [Text('47')],
                                ),
                                Column(
                                  children: [Text('9')],
                                )
                              ])
                            ],
                          ),
                          RichText(text: TextSpan())
                        ])));
          }),
        ));
  }
}
