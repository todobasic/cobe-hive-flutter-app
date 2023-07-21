import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CobeLogo extends StatelessWidget {
  const CobeLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
      ),
      child: Center(
        child: SvgPicture.asset('assets/icons/cobe_logo.svg'),
      ),
    );
  }
}
