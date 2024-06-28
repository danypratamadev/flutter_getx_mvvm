import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/shared/theme/dimens.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_corner/smooth_corner.dart';

class AppShimmer extends StatelessWidget {

  final double? width;
  final double? height;
  final double? radius;

  const AppShimmer({
    super.key, 
    this.width, 
    this.height, 
    this.radius
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color(0x0D000000),
      highlightColor: const Color(0x1A000000),
      child: SmoothContainer(
        width: width ?? AppDimens.size100,
        height: height ?? AppDimens.size18,
        borderRadius: BorderRadius.circular(radius ?? AppDimens.secondaryRoundedCardSize),
        smoothness: AppDimens.smoothnessCorner,
        color: Colors.white,
      )
    );
  }
}