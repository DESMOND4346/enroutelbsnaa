import 'package:flutter/material.dart';

class Nationality extends StatelessWidget{
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: const TextSpan(
                                text:
                                '\n NATIONALITY',
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  const TextSpan(
                                    text: 'For IAS and IPS:',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                   TextSpan(
                                    text:'• Candidate must be a citizen of India',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
                                  ),
                                   TextSpan(
                                    text: 'All other Services:',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text: '• Candidate must be either:-\n'
                                      '➊\t A citizen of India, or\n'
                                      '➋\t A subject of Nepal, or\n'
                                      '➌\t A subject of Bhutan, or\n'
                                      '➍\t A Tibetan refugee who came to India before 1st January 1962 intending to settle in India permanently, or'
                                      '➍\t A person of Indian origin (PIO) who has migrated from Pakistan, Burma, Sri Lanka, East African countries of Kenya, Uganda, the United Republic of Tanzania, Zambia, Malawi, Ethiopia, Zaire and Vietnam intending to settle in India permanently.\n'
                                      '• The candidates belonging to categories (2), (3), (4) and (5) should furnish a certificate of eligibility issued by the Government of India. Such candidates may take the exam before getting the said certificate of eligibility, but he/she would get the offer of appointment only after the Government of India has issued the certificate.'
                                      '• Point to Note: A person belonging to categories (2), (3) and (4) are not eligible for appointment to the Indian Foreign Service (IFS)',
                                    style: TextStyle(fontWeight: FontWeight.normal),
                                  )
                                ]),
                          ),
                        ])));
          }),
        )

    );
  }
}