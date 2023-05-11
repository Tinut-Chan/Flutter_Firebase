import 'package:flutter/material.dart';

customBottomSheet(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  return showBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: height / 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey.withOpacity(0.10),
        ),
        child: Column(
          children: [
            Container(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey.withOpacity(0.10),
              ),
              child: const Text('Cancel'),
            )
          ],
        ),
      );
    },
  );
}
