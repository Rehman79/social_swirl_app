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
                  padding: const EdgeInsets.all(20.0),
                  child: CustomText(
                    content: widget.faqItems[index].answer,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
