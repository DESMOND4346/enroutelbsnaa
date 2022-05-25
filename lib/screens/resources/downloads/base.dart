import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'AI/ancientindia.dart';
import 'Art & Culture/hclctoi.dart';
import 'Art & Culture/indianart.dart';
import 'CA/civilssdaily.dart';
import 'CA/thehindu.dart';
import 'Economy/ied.dart';
import 'Economy/indianeconomy.dart';
import 'Economy/macroeconomics.dart';
import 'Env/shankarias.dart';
import 'GS/gs10ncert.dart';
import 'GS/gs9ncert.dart';
import 'MI/medievalindia.dart';
import 'ModInd/bcncert.dart';
import 'ModInd/isfi.dart';
import 'ModInd/modernindia.dart';
import 'Economy/mrunalarticles.dart';
import 'Polity/indian_polity.dart';
//import 'Economy/';
import 'geo/gcleong.dart';
import 'geo/geo11.dart';
import 'geo/geo12.dart';
import 'geo/ipae.dart';
import 'geo/phyenv.dart';
import 'geo/pmfias.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TapGestureRecognizer polityRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PolityLaxmikanth()));
      };
    final TapGestureRecognizer indianeconomyRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => IndianEconomy()));
      };
    final TapGestureRecognizer mrunalRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MrunalArticles()));
      };
    final TapGestureRecognizer macroeconomicsRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Macroeconomics()));
      };
    final TapGestureRecognizer iedRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => IED()));
      }; //Indian Economic Development NCERT XI
    final TapGestureRecognizer ancientindiaRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AncientIndia()));
      };
    final TapGestureRecognizer medievalindiaRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MedievalIndia()));
      };
    final TapGestureRecognizer modernindiaRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ModernIndia()));
      };
    final TapGestureRecognizer isfiRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ISFI()));
      }; //India's Struggle for Inedependance
    final TapGestureRecognizer ncertbipanchandraRecognizer =
        TapGestureRecognizer()
          ..onTap = () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BCNCERT()));
          };
    final TapGestureRecognizer indianartRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => IndianArt()));
      }; //NCERT XI Indian Art
    final TapGestureRecognizer heritagecraftRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HCLCTOI()));
      }; //Heritage Crafts: Living Craft Traditions of India - NCERT
    final TapGestureRecognizer shankariasbookRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ShankarIASBook()));
      };
    final TapGestureRecognizer gs9ncertRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GS9NCERT()));
      };
    final TapGestureRecognizer gs10ncertRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GS10NCERT()));
      };
    final TapGestureRecognizer geo11Recognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GEO11()));
      };
    final TapGestureRecognizer physicalenvironmentRecognizer =
        TapGestureRecognizer()
          ..onTap = () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PhyEnv()));
          }; //India: Physical Environment NCERT XI
    final TapGestureRecognizer geo12Recognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GEO12()));
      };
    final TapGestureRecognizer ipaeRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => IPAE()));
      }; //India: People and Economy NCERT 12
    final TapGestureRecognizer gcleongRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GCLEONG()));
      };
    final TapGestureRecognizer pmfiasRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PMFIAS()));
      };
    final TapGestureRecognizer thehinduRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => THEHINDU()));
      };
    final TapGestureRecognizer civilsdailyRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CD()));
      };

    return Scaffold(
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
                                text: '\n\n Booklist for Prelims',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                              const TextSpan(
                                text: '\n\n POLITY',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: '\n\n\t Indian Polity by Laxmikanth',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300),
                                recognizer: polityRecognizer,
                              ),
                              const TextSpan(
                                  text: '\n\n ECONOMY',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text: '\n\n\t Indian Economy by Ramesh Singh',
                                  style: TextStyle(fontWeight: FontWeight.w300),
                              recognizer: indianeconomyRecognizer,
                              ),
                               TextSpan(
                                  text: '\n\t Mrunal sir articles',
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                  recognizer: mrunalRecognizer),
                              TextSpan(
                                text: '\n\t Macroeconomics',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: macroeconomicsRecognizer,
                              ),
                              TextSpan(
                                text: '\n\t Indian Economic Development',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: iedRecognizer,
                              ),
                              TextSpan(
                                text: '\n\n Ancient History of India',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              TextSpan(
                                text: '\n\n\t Old Ncert by R.S Sharma',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: ancientindiaRecognizer,
                              ),
                              TextSpan(
                                  text: '\n\n Medieval History of India',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                text: '\n\n\t Old NCERT by Satish Chandra',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: medievalindiaRecognizer,
                              ),
                              TextSpan(
                                  text: '\n\n Modern History',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline)),
                              TextSpan(
                                text:
                                    '\n\n\t A Brief history of Modern India- Spectrum Publications',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: modernindiaRecognizer,
                              ),
                              TextSpan(
                                text:
                                    '\n\t India’s Struggle for Independence – Bipan Chandra',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: isfiRecognizer,
                              ),
                              TextSpan(
                                text:
                                    '\n\t NCERT by Bipan Chandra (For the period 1700s to 1857)',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: ncertbipanchandraRecognizer,
                              ),
                              TextSpan(
                                  text: '\n\n Indian Art and Culture',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                text:
                                    '\n\n\t An Introduction to Indian Art – Class XI NCERT',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: indianartRecognizer,
                              ),
                              TextSpan(
                                text:
                                    '\n\t Heritage Crafts: Living Craft Traditions of India -NCERT',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: heritagecraftRecognizer,
                              ),
                              TextSpan(
                                  text: '\n\n Environment and Biodiversity',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                text: '\n\n\t Shankar IAS book',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: shankariasbookRecognizer,
                              ),
                              TextSpan(
                                  text: '\n\n General Science',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                text: '\n\n\t IX NCERT',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: gs9ncertRecognizer,
                              ),
                              TextSpan(
                                text: '\n\t X NCERT',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: gs10ncertRecognizer,
                              ),
                              TextSpan(
                                  text: '\n\n Geography',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                  recognizer: geo11Recognizer,
                                  text:
                                      '\n\n\t Fundamentals of Physical Geography XI NCERT'),
                              TextSpan(
                                text:
                                    '\n\t India: Physical Environment XI NCERT',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: physicalenvironmentRecognizer,
                              ),
                              TextSpan(
                                text:
                                    '\n\t Fundamentals of Human Geography XII NCERT',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: geo12Recognizer,
                              ),
                              TextSpan(
                                text:
                                    '\n\t India: People and Economy XII NCERT',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: ipaeRecognizer,
                              ),
                              TextSpan(
                                text:
                                    '\n\t Certificate Physical and Human Geography: GC Leong',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: gcleongRecognizer,
                              ),
                              TextSpan(
                                text: '\n\t PMFIAS',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: pmfiasRecognizer,
                              ),
                              TextSpan(
                                  text: '\n\n Govt. Schemes',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text: '\n\n Current Affairs',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(
                                text: '\n\n\t The Hindu',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: thehinduRecognizer,
                              ),
                              TextSpan(
                                text: '\n\t Civils Daily',
                                style: TextStyle(fontWeight: FontWeight.w300),
                                recognizer: civilsdailyRecognizer,
                              ),
                            ])),
                      ])));
        }),
      ),
    );
  }
}
