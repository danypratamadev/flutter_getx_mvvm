import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {

  final double? width;
  final double? height;
  final String src;
  final BoxFit fit;
  final FilterQuality quality;

  const ImageAsset({
    super.key, 
    this.width, 
    this.height,
    required this.src, 
    this.fit = BoxFit.cover,
    this.quality =  FilterQuality.medium,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      src,
      width: width,
      height: height,
      fit: fit,
      filterQuality: quality,
    );
  }
  
}

class ImageNetwork extends StatelessWidget {

  final double? width;
  final double? height;
  final String src;
  final BoxFit fit;
  final FilterQuality quality;

  const ImageNetwork({
    super.key, 
    this.width, 
    this.height,
    required this.src, 
    this.fit = BoxFit.cover,
    this.quality =  FilterQuality.medium,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);

    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: src,
      fit: fit,
      filterQuality: quality,
      placeholder: (context, url) => Material(
        color: themeApp.dividerColor,
        child: const Center(
          child: CupertinoActivityIndicator(),
        ),
      ),
      errorWidget: (context, url, error) => Material(
        color: themeApp.dividerColor,
        child: Icon(
          Icons.image_not_supported_rounded,
          color: themeApp.disabledColor,
        ),
      ),
    );
  }
  
}