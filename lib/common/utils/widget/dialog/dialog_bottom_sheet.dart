import 'package:flutter/material.dart';
import 'package:playstation_games_app/common/common.dart';

dialogBottomSheet(
    {required BuildContext contextDialog,
    required bool isDismissible,
    required bool enableDrag,
    required Widget dialogWidget}) {
  showModalBottomSheet<void>(
    useRootNavigator: true,
    backgroundColor: white1.withOpacity(0),
    elevation: 0,
    isScrollControlled: true,
    enableDrag: enableDrag,
    context: contextDialog,
    isDismissible: isDismissible,
    builder: (context) {
      return Padding(padding: MediaQuery.of(context).viewInsets, child: dialogWidget);
    },
  );
  return Container();
}
