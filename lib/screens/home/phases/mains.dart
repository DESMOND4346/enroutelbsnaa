import 'package:enroutelbsnaa/screens/home/phases/interview.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Mains extends StatelessWidget {
  const Mains({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TapGestureRecognizer interviewRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Interview()));
      };

    return Scaffold(
        appBar: AppBar(
          title: const Text('MAINS'),
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
                                    '\nMains Examination is the second step in the three-phased UPSC Civil Service Eamination which filters out candidates for the third-phase ie., ',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Interview.',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.underline),
                                    recognizer: interviewRecognizer,
                                  ),
                                  const TextSpan(
                                    text: '\n\nSYLLABUS',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n The IAS mains exam comprises nine theory papers and marks in seven of those papers are taken into consideration for preparing the final merit list. The other two papers, English and Indian Language, are qualifying in nature (candidates have to score 25% or above to be eligible for selection).\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                      text:
                                          '\n\n• Compulsory Indian language	 \n• English	\n• Essay \n• General Studies I – Indian Heritage & Culture, History & Geography of the World & Society \n• General Studies II – Governance, Constitution, Welfare Initiatives, Social Justice & International Relations \n• General Studies III – Technology, Economic Development, Agriculture, Biodiversity, Security & Disaster Management \n• General Studies IV – Ethics, Integrity & Aptitude \n• Optional Subject – Paper I \n• Optional Subject – Paper II \n\n',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500)),
                                  const TextSpan(
                                    text:
                                        '\n• Language Papers (Indian language and English)\n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n Although both these papers are only qualifying in nature, candidates should not be complacent as if they fail to score below 25% in either of them, their remaining answer sheets won’t even be evaluated. Both the papers follow a similar pattern of questions as given below.\n',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n• One essay question for 100 marks – candidates have to select one out of a few given topics\n• Reading comprehension and related five-six questions for a total of 60 marks\n• Precis writing for 60 marks – the answer sheet will have a separate grid structure where this has to be written\n• Translation from English to chosen language for 20 marks\n• Translation from chosen language to English for 20 marks\n• Grammar and basic language usage such as synonyms, sentence correction etc. for a total of 40 marks',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text: '\n\n Essay',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n The UPSC mains syllabus does not have any prescribed syllabus for the essay paper as such. As per the UPSC, “Candidates are expected to keep closely to the subject of the essay to arrange their ideas in an orderly fashion, and to write concisely. Credit will be given for effective and exact expression.”\nCandidates are required to write two essays from a list of given topics for a combined total of 250 marks.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text: '\n\n GS Paper 1',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n• Indian Culture – Salient aspects of Art Forms, Literature and Architecture from ancient to modern times.\n• Modern Indian History\n\t\t\t\t• Significant events, issues, personalities during the middle of the eighteenth century (1750s) until the present\n\t\t• Different stages and important contributors and contributions from various parts of the country in ‘The Freedom Struggle’.\n\t• Post-independence consolidation and reorganisation within the country.\n• History of the world\n• Events, forms and effect on society since the 18th century (world wars, industrial revolution, colonisation, redrawal of national boundaries, decolonisation, political philosophies like communism, capitalism, socialism, etc.)\n• Society\n\t Indian society and diversity – Salient aspects.\n\t• Role of women and women’s organisations, population and associated issues, poverty and developmental issues, urbanisation, their problems and remedies.\n\t• Social empowerment, communalism, regionalism & secularism.\n\t• Effects of globalisation on Indian society.\n• Geography\n\t• Distribution of key natural resources across the world including South Asia and the Indian sub-continent; factors responsible for the location of primary, secondary, and tertiary sector industries in various parts of the world including India.\n\t• Important Geophysical phenomena such as earthquakes, Tsunami, Volcanic activity, cyclone etc.\n\t• Geographical features and their location, changes in critical geographical features (including water-bodies and polar ice caps) and, in flora and fauna and the effects of such changes.\n\t•Salient features of world’s physical geography.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text: '\n\n GS Paper II',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n• const TextSpan\n\t• historical underpinnings,\n\t• evolution, features\n\t• amendments, significant provision\n\t• basic structure doctrine\n\t• Comparison of the Indian constitutional scheme with that of other countries\n• Functions and responsibilities of the Union and the States, issues and challenges pertaining to the federal structure, devolution of powers and finances up to local levels and challenges therein.\n• Separation of powers between various organs, dispute redressal mechanisms and institutions\n• Structure, organisation and functioning of the Executive and the Judiciary\n• Parliament and State Legislatures\n\t• structure, functioning\n\t• conduct of business\n\t• powers & privileges and issues arising out of these\n• Ministries and Departments of the Government; pressure groups and formal/informal associations and their role in the Polity.\nSalient features of the Representation of People’s Act\n• Appointment to various Constitutional posts, powers, functions and responsibilities of various Constitutional Bodies.\n• Statutory, regulatory and various quasi-judicial bodies.\n• Government policies and interventions aimed at development in various sectors and issues arising out of their design and implementation.\n• Development processes and the development industry – the role of NGOs, Self Help Groups, various groups and associations, institutional and other stakeholders.\n• Welfare schemes for vulnerable sections of the population by the Centre and the States and the performance of these schemes; mechanisms, laws, institutions and Bodies constituted for the protection and betterment of these vulnerable sections.\n• Issues relating to development and management of Social Sector/Services relating to Health, Education, Human Resources\n• Issues relating to poverty and hunger\n• Important aspects of governance, transparency and accountability, e-governance- applications, models, successes, limitations, and potential; citizens charters, transparency & accountability and institutional and other measures\n• Role of civil services in a democracy\n• International Relations\n\t• India and its neighbourhood – International relations\n\t• Bilateral, regional and global groupings and agreements involving India and/or affecting the Indian interests\n\t• Effect of policies and politics of developed and developing countries on India’s interests, Indian diaspora.\n\t• Important International institutions, agencies, their structure and mandates',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text: '\n\n GS Paper III',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const TextSpan(
                                    text: '\n\n Economy',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n Indian Economy and issues relating to planning, mobilisation of resources, growth, development and employment.\nGovernment Budgeting.\nInclusive growth and associated issues/challenges\nEffects of liberalisation on the economy (post 1991 changes), changes in industrial policy and their effects on industrial growth.\nInfrastructure – Energy, Ports, Roads, Airports, Railways etc.\nInvestment models (PPP etc)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text: '\n Agriculture',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\t Major cropping patterns in various parts of the country, different types of irrigation and irrigation systems storage, transport and marketing of agricultural produce and issues and related constraints; e-technology in the aid of farmers\n\tEconomics of animal rearing.\n\tFood processing and related industries in India – scope and significance, location, upstream and downstream requirements, supply chain management.\n\tIssues related to direct and indirect farm subsidies and minimum support prices; Public Distribution System objectives, functioning, limitations, revamping; issues of buffer stocks and food security; Technology missions\n\tLand reforms in India.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text: '\n\n Science and Technology',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n Recent developments and their applications and effects in everyday life\n\tAchievements of Indians in science & technology.\n\tIndigenisation of technology and developing new technology.\n\tGeneral awareness in the fields of IT, Space, Computers, Robotics, Nanotechnology, bio-technology\n\t Issues relating to intellectual property rights',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text: '\n\t• Conservation,\n\t• Environmental pollution and degradation\n\t• Environmental impact assessment\n• Disaster Management (Laws, Acts etc.)',
                                    style: TextStyle(fontWeight: FontWeight.normal),
                                  ),
                                    const TextSpan(
                                      text: '\n• Security',
                                      style: TextStyle(fontWeight: FontWeight.normal),
                                    ),
                                  const TextSpan(
                                    text: '\n\t• Challenges to internal security (external state and non-state actors)\n\t• Linkages between development and spread of extremism\n\t• Challenges to internal security through communication networks, role of media and social networking sites in internal security challenges, \n\t• Basics of cyber security; money-laundering and its prevention\n\t• Security challenges and their management in border areas; linkages of organised crime with terrorism\n\t• Various Security forces and agencies and their mandates',
                                    style: TextStyle(fontWeight: FontWeight.normal),
                                  ),
                            const TextSpan(
                                    text: '\n\n GS Paper IV',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n This Ethics paper in the UPSC mains syllabus includes questions to check the candidates’ attitude and approach to issues relating to integrity and probity in public life and his/her problem-solving approach to various societal issues. Questions may utilise the case study approach to determine these aspects and the exam covers area as mentioned in the syllabus given below\nEthics and Human Interface\n\t• Essence of Ethics, Determinants and Consequences of Ethics in Human Interaction\n\t• Dimensions of Ethics\n\t• Ethics in private and public relationships\n\t• Human Values – lessons from the lives and teachings of great leaders, reformers and administrators\n\t• Role of family, society and educational institutions in inculcating moral and ethical values\n• Attitude\n\t• Content, structure and function of attitude\n\t• Influence of attitude in thought and behaviour\n\t• Relation of attitude to thought and behaviour\n\t• Moral and Political attitudes\n\t• Social influence and persuasion\n• Aptitude\nAptitude and foundational values of Civil Service\n\t• Integrity\n\t• Impartiality and non-partisanship\n\t• Objectivity\n\t• Dedication to public service\n\t• Empathy, tolerance and compassion towards the weaker sections of the society\nEmotional Intelligence\n\t• Concepts of emotional intelligence\n\t• Utility and application of emotional intelligence in administration and governance\n• Contributions of Thinkers and Philosophers\n\t• Contributions of moral thinkers and philosophers from India and the world to the concepts of morality\n• Public/Civil Service Values and Ethics in Public Administration\n\t• Status and associated problems\n\t• Ethical concerns and dilemmas in government and private institutions\n\t• Laws, rules, regulations and conscience as sources of ethical guidance\n\t• Accountability and ethical governance\n\t• Strengthening of ethical and moral values in governance\n\t• Ethical Issues in international relations and funding\n\t• Corporate governance\n• Probity in Governance\n\t• Concept of public service\n\t• The philosophical basis of governance and probity\n\t• Information sharing and transparency in government\n\t• Right to Information\n\t• Codes of ethics\n\t• Codes of Conduct\n\t• Citizen’s Charters\n\t• Work culture\n\t• Quality of service delivery\n\t• Utilization of public funds\n\t• Challenges of corruption',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text: '\n\n Optional Subject (Two Papers)',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n A candidate has to choose one optional subject (out of a total of 48 options). There will be two papers for a combined total of 500 marks. Selecting the best optional subject for UPSC mains should be a careful and considered decision. Refer to the link given above to understand which optional subject will be the best for you.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const TextSpan(
                                    text: '\n\nConclusion',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  const TextSpan(
                                    text:
                                        '\n\n The IAS mains syllabus is comprehensive and the questions asked in the CSE require not only a certain depth of understanding but also the ability to present the answers in a coherent manner. The syllabus of UPSC mains comprises both static and dynamic aspects. Hence, it is essential for the IAS aspirants to track and sort the current affairs under appropriate papers/headings as per the UPSC mains syllabus.\nThe Mains exam is for a total of 1750 marks (7 papers * 250 marks) and, the aspirants who clear the stage reach the interview (UPSC Personality Test). The candidates’ score in the interview (out of 275 marks) is added to their marks in UPSC mains and this makes the final merit list of recommended candidates.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  )
                                ]),
                          ),
                        ])));
          }),
        ));
  }
}
