import '/flutter_flow/flutter_flow_util.dart';
import 'view_profile_page_other_widget.dart' show ViewProfilePageOtherWidget;
import 'package:flutter/material.dart';

class ViewProfilePageOtherModel
    extends FlutterFlowModel<ViewProfilePageOtherWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
