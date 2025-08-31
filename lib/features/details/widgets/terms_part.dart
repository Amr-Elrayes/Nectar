import 'package:flutter/material.dart';
import 'package:nacter/core/utils/text_styles.dart';

class termsPart extends StatelessWidget {
  const termsPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "By placing an order you agree to our",
          style: TextStyles.smallstyle(),
        ),
        Row(
          children: [
            Text("Terms ", style: TextStyles.bodystyle(fontSize: 14)),
            Text("And ", style: TextStyles.smallstyle(fontSize: 14)),
            Text(
              "Conditions",
              style: TextStyles.bodystyle(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
