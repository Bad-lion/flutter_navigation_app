import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './round_icons.dart';
import './round_num.dart';
import './constatnts.dart';
import 'package:math_expressions/math_expressions.dart';

class BodyMain extends StatefulWidget {
  static const routName = '/calculator';
  @override
  _BodyMainState createState() => _BodyMainState();
}

class _BodyMainState extends State<BodyMain> {
  String mainString = '';
  String answer = '';
  void equalPressed() {
    String finaluserinput = mainString;
    String finaluserinput2 = mainString;
    String preAnswer;
    finaluserinput = mainString.replaceAll('x', '*');
    finaluserinput2 = finaluserinput.replaceAll(',', '.');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput2);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    if (eval == eval.toInt()) {
      preAnswer = eval.toString();
      if (preAnswer != null && preAnswer.length > 2) {
        preAnswer = preAnswer.substring(0, preAnswer.length - 2);
        answer = preAnswer;
      }
    } else if (eval != eval.toInt()) {
      answer = eval.toString().replaceAll('.', ',');
    }
    // answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        mainString,
                        textAlign: TextAlign.end,
                        style: kResultTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.white70,
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: RoundIconButton(
                              icon: FontAwesomeIcons.cuttlefish,
                              onPress: () {
                                setState(() {
                                  mainString = '';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundIconButton(
                              icon: Icons.backspace_outlined,
                              onPress: () {
                                setState(() {
                                  if (mainString != null &&
                                      mainString.length > 0) {
                                    mainString = mainString.substring(
                                        0, mainString.length - 1);
                                  }
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundNumberButton(
                              number: '(',
                              color: 0xFFFB8C00,
                              onPress: () {
                                setState(() {
                                  mainString += '(';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundNumberButton(
                              number: ')',
                              color: 0xFFFB8C00,
                              onPress: () {
                                setState(() {
                                  mainString += ')';
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: RoundNumberButton(
                              number: '7',
                              onPress: () {
                                setState(() {
                                  mainString += '7';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundNumberButton(
                              number: '8',
                              onPress: () {
                                setState(() {
                                  mainString += '8';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundNumberButton(
                              number: '9',
                              onPress: () {
                                setState(() {
                                  mainString += '9';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundIconButton(
                              icon: FontAwesomeIcons.divide,
                              onPress: () {
                                setState(
                                  () {
                                    mainString += '/';
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: RoundNumberButton(
                              number: '4',
                              onPress: () {
                                setState(() {
                                  mainString += '4';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundNumberButton(
                              number: '5',
                              onPress: () {
                                setState(() {
                                  mainString += '5';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundNumberButton(
                              number: '6',
                              onPress: () {
                                setState(() {
                                  mainString += '6';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundIconButton(
                              icon: FontAwesomeIcons.times,
                              onPress: () {
                                setState(
                                  () {
                                    mainString += 'x';
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: RoundNumberButton(
                              number: '1',
                              onPress: () {
                                setState(() {
                                  mainString += '1';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundNumberButton(
                              number: '2',
                              onPress: () {
                                setState(() {
                                  mainString += '2';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundNumberButton(
                              number: '3',
                              onPress: () {
                                setState(() {
                                  mainString += '3';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(
                                  () {
                                    mainString += '-';
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: RoundIconButton(
                              icon: FontAwesomeIcons.equals,
                              onPress: () {
                                setState(() {
                                  equalPressed();
                                  mainString = answer;
                                });
                              },
                              color: 0xFFF57C00,
                              iconColor: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: RoundNumberButton(
                              number: '0',
                              onPress: () {
                                setState(() {
                                  mainString += '0';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundNumberButton(
                              number: ',',
                              onPress: () {
                                setState(() {
                                  mainString += ',';
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(
                                  () {
                                    mainString += '+';
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
