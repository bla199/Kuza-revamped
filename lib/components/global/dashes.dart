import 'package:flutter/material.dart';
export 'dashes.dart';

class Dashes extends StatefulWidget {
  const Dashes({super.key});

  @override
  State<Dashes> createState() => _DashesState();
}

class _DashesState extends State<Dashes> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: LayoutBuilder(
            builder: (
              BuildContext context,
               BoxConstraints constraints)
                { 
                  final dashCount = constraints.hasBoundedWidth ? 
                  (constraints.maxWidth/10).floor()
                  : 0;
                  return Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate( dashCount, (index) => SizedBox(
                    width: 5,
                    height: 1,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.black38
                    )),
                  )),); }, ),
        ),
             SizedBox(height: 20,)
      ],

    );
  }
}