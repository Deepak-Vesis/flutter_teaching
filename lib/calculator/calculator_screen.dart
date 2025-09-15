import 'package:calculator/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart'; // Add this package to your pubspec.yaml

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({super.key});

  var expressionController = TextEditingController();

  List<String> buttons = [
    'C',
    '⌫',
    '±',
    '%',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            margin: const EdgeInsets.only(bottom: 20),
            color: Colors.white.withValues(alpha: .2),
            alignment: Alignment.centerRight,
            child: TextFormField(
              controller: expressionController,
              cursorHeight: 0,
              style: getEBFStyle(fontSize: 48, color: Colors.white),
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '0',
                hintStyle: getEBFStyle(fontSize: 48, color: Colors.grey),
              ),
              // readOnly: true,
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: buttons.length,
              itemBuilder: (context, index) {
                //0,1,2...
                var label = buttons[index];
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: getColor(label),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    onChangeExp(label,context);
                  },
                  child: Text(
                    label,
                    style: getEBFStyle(fontSize: 32, color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  resultCalculation(String expression, BuildContext context) {
    try {
      // Replace 'x' with '*' for multiplication
      expression = expression.replaceAll('x', '*');

      // Evaluate the expression using the Dart eval package or a custom parser
      // Here we use a simple eval function, but you can use a more robust solution
      Parser parser = Parser();
      Expression exp = parser.parse(expression);
      ContextModel contextModel = ContextModel();

      double result = exp.evaluate(EvaluationType.REAL, contextModel);
      expressionController.text = result.toString();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Container(
            padding: EdgeInsets.all(20),
            child: Text('Invalid Expression'),
          ),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  Color? getColor(String button) {
    switch (button) {
      case 'C':
        return Colors.grey;
      case '⌫':
        return Colors.grey;
      case '±':
        return Colors.grey;
      case '%':
        return Colors.orange;
      case '/':
        return Colors.orange;
      case 'x':
        return Colors.orange;
      case '-':
        return Colors.orange;
      case '+':
        return Colors.orange;
      case '=':
        return Colors.green;
      default:
        return Colors.grey[800]; // Default color for other buttons
    }
  }

  bool isOperator(String label) {
    return label == '/' || label == 'x' || label == '-' || label == '+';
  }

  bool isNumber(String label) {
    return label == '0' ||
        label == '1' ||
        label == '2' ||
        label == '3' ||
        label == '4' ||
        label == '5' ||
        label == '6' ||
        label == '7' ||
        label == '8' ||
        label == '9' ||
        label == '.';
  }

  bool isSpecial(String label) {
    return label == 'C' ||
        label == '⌫' ||
        label == '±' ||
        label == '%' ||
        label == '=';
    // label == '.';
  }

  onChangeExp(String label,BuildContext context) {
    var exp = expressionController.text;
    if (isNumber(label)) {
      expressionController.text += label;
    } else if (isOperator(label)) {
      bool isExpHasOperatedAtLast = isOperator(
        exp[exp.length - 1],
      ); //st.charAt()
      if (isExpHasOperatedAtLast) {
        expressionController.text = exp.substring(0, exp.length - 1) + label;
        return;
      } else {
        expressionController.text += label;
      }
    } else if (isSpecial(label)) {
      if (label == 'C') {
        expressionController.clear();
      } else if (label == '⌫') {
        expressionController.text = exp.substring(0, exp.length - 1);
      }else if (label == '=') {
        expressionController.text = resultCalculation(exp, context);
      }
    }
  }
}
