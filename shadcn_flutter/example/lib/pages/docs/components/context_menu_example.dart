import 'package:example/pages/docs/component_page.dart';
import 'package:example/pages/docs/components/context_menu/context_menu_example_1.dart';
import 'package:example/pages/widget_usage_example.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ContextMenuExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ComponentPage(
      name: 'context_menu',
      description:
          'A context menu is a menu in a graphical user interface that appears upon user interaction, such as a right-click mouse operation.',
      displayName: 'Context Menu',
      children: [
        WidgetUsageExample(
          title: 'Example',
          child: ContextMenuExample1(),
          path:
              'lib/pages/docs/components/context_menu/context_menu_example_1.dart',
        ),
      ],
    );
  }
}