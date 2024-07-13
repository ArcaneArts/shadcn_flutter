import 'package:example/pages/docs/components/carousel/carousel_example_1.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

import '../../widget_usage_example.dart';
import '../component_page.dart';
import 'carousel/carousel_example_2.dart';

class CarouselExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ComponentPage(
      name: 'carousel',
      description:
          'A carousel slider widget, support infinite scroll and custom child widget.',
      displayName: 'Carousel',
      children: [
        WidgetUsageExample(
          title: 'Horizontal Carousel Example',
          child: CarouselExample1(),
          path: 'lib/pages/docs/components/carousel/carousel_example_1.dart',
        ),
        WidgetUsageExample(
          title: 'Vertical Carousel Example',
          child: CarouselExample2(),
          path: 'lib/pages/docs/components/carousel/carousel_example_2.dart',
        ),
      ],
    );
  }
}

class NumberedContainer extends StatelessWidget {
  final int index;
  final double? width;
  final double? height;
  const NumberedContainer({
    Key? key,
    required this.index,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.primaries[index % Colors.primaries.length],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          index.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
