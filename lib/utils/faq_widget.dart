import 'package:flutter/material.dart';
import 'custom_text.dart';

class FAQWidget extends StatefulWidget {
  final List<FAQItem> faqItems;

  const FAQWidget({Key? key, required this.faqItems}) : super(key: key);

  @override
  _FAQWidgetState createState() => _FAQWidgetState();
}

class _FAQWidgetState extends State<FAQWidget> {
  List<bool> _expandedStates = [];

  @override
  void initState() {
    super.initState();
    _expandedStates = List<bool>.filled(widget.faqItems.length, false);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.faqItems.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ExpansionTile(
              title: CustomText(
                content: widget.faqItems[index].question,
                is_bold: true,
                fontsize: screenWidth * 0.05,
              ),
              trailing: Icon(
                _expandedStates[index]
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
              onExpansionChanged: (bool expanded) {
                setState(() {
                  _expandedStates[index] = expanded;
                });
              },
              initiallyExpanded: _expandedStates[index],
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: screenWidth * 0.04,
                    horizontal: screenWidth * 0.05,
                  ),
                  child: CustomText(
                    content: widget.faqItems[index].answer,
                    fontsize: screenWidth * 0.045,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
              ),
              child: Divider(),
            ),
          ],
        );
      },
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}
