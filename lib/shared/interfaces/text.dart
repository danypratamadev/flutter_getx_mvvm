import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm/shared/theme/utility.dart';
import 'package:google_fonts/google_fonts.dart';

class ExtraLargeHeadlineText extends StatelessWidget {

  final String label;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? heightSpaceing;
  final double? letterSpaceing;
  final TextAlign? textAlign;
  final int? maxLines;

  const ExtraLargeHeadlineText({
    super.key,
    required this.label,
    this.fontWeight,
    this.textColor,
    this.heightSpaceing,
    this.letterSpaceing,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);

    return Text(
      label,
      style: GoogleFonts.poppins(
        textStyle: themeApp.textTheme.displaySmall,
        color: textColor ?? themeApp.textTheme.displaySmall?.color,
        fontWeight: fontWeight ?? AppUtility.fontSemiBold,
        height: heightSpaceing,
        letterSpacing: letterSpaceing,
      ),
      textAlign: textAlign ?? AppUtility.startText,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

class LargeHeadlineText extends StatelessWidget {

  final String label;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? heightSpaceing;
  final double? letterSpaceing;
  final TextAlign? textAlign;
  final int? maxLines;

  const LargeHeadlineText({
    super.key,
    required this.label,
    this.fontWeight,
    this.textColor,
    this.heightSpaceing,
    this.letterSpaceing,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);

    return Text(
      label,
      style: GoogleFonts.poppins(
        textStyle: themeApp.textTheme.headlineMedium,
        color: textColor ?? themeApp.textTheme.headlineMedium?.color,
        fontWeight: fontWeight ?? AppUtility.fontSemiBold,
        height: heightSpaceing,
        letterSpacing: letterSpaceing,
      ),
      textAlign: textAlign ?? AppUtility.startText,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

class Headline1Text extends StatelessWidget {

  final String label;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? heightSpaceing;
  final double? letterSpaceing;
  final TextAlign? textAlign;
  final int? maxLines;

  const Headline1Text({
    super.key,
    required this.label,
    this.fontWeight,
    this.textColor,
    this.heightSpaceing,
    this.letterSpaceing,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);
    final fontSize = themeApp.textTheme.headlineSmall?.fontSize!;

    return Text(
      label,
      style: GoogleFonts.poppins(
        textStyle: themeApp.textTheme.headlineSmall,
        color: textColor ?? themeApp.textTheme.headlineSmall?.color,
        fontWeight: fontWeight ?? AppUtility.fontSemiBold,
        fontSize: (fontSize! + 2.0),
        height: heightSpaceing,
        letterSpacing: letterSpaceing,
      ),
      textAlign: textAlign ?? AppUtility.startText,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

class Headline2Text extends StatelessWidget {

  final String label;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? heightSpaceing;
  final double? letterSpaceing;
  final TextAlign? textAlign;
  final int? maxLines;

  const Headline2Text({
    super.key,
    required this.label,
    this.fontWeight,
    this.textColor,
    this.heightSpaceing,
    this.letterSpaceing,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);

    return Text(
      label,
      style: GoogleFonts.poppins(
        textStyle: themeApp.textTheme.titleLarge,
        color: textColor ?? themeApp.textTheme.titleLarge?.color,
        fontWeight: fontWeight ?? AppUtility.fontSemiBold,
        height: heightSpaceing,
        letterSpacing: letterSpaceing,
      ),
      textAlign: textAlign ?? AppUtility.startText,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

class Headline3Text extends StatelessWidget {

  final String label;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? heightSpaceing;
  final double? letterSpaceing;
  final TextAlign? textAlign;
  final int? maxLines;

  const Headline3Text({
    super.key,
    required this.label,
    this.fontWeight,
    this.textColor,
    this.heightSpaceing,
    this.letterSpaceing,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);
    final fontSize = themeApp.textTheme.titleLarge?.fontSize!;

    return Text(
      label,
      style: GoogleFonts.poppins(
        textStyle: themeApp.textTheme.titleLarge,
        color: textColor ?? themeApp.textTheme.titleLarge?.color,
        fontWeight: fontWeight ?? AppUtility.fontSemiBold,
        fontSize: (fontSize! - 2.0),
        height: heightSpaceing,
        letterSpacing: letterSpaceing,
      ),
      textAlign: textAlign ?? AppUtility.startText,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

class TitleText extends StatelessWidget {

  final String label;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? heightSpaceing;
  final double? letterSpaceing;
  final TextAlign? textAlign;
  final int? maxLines;

  const TitleText({
    super.key,
    required this.label,
    this.fontWeight,
    this.textColor,
    this.heightSpaceing,
    this.letterSpaceing,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);

    return Text(
      label,
      style: GoogleFonts.poppins(
        textStyle: themeApp.textTheme.titleMedium,
        color: textColor ?? themeApp.textTheme.titleMedium?.color,
        fontWeight: fontWeight ?? AppUtility.fontSemiBold,
        height: heightSpaceing,
        letterSpacing: letterSpaceing,
      ),
      textAlign: textAlign ?? AppUtility.startText,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

class SubtitleText extends StatelessWidget {

  final String label;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? heightSpaceing;
  final double? letterSpaceing;
  final TextAlign? textAlign;
  final int? maxLines;

  const SubtitleText({
    super.key,
    required this.label,
    this.fontWeight,
    this.textColor,
    this.heightSpaceing,
    this.letterSpaceing,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);

    return Text(
      label,
      style: GoogleFonts.poppins(
        textStyle: themeApp.textTheme.titleSmall,
        color: textColor ?? themeApp.textTheme.titleSmall?.color,
        fontWeight: fontWeight ?? AppUtility.fontMedium,
        height: heightSpaceing,
        letterSpacing: letterSpaceing,
      ),
      textAlign: textAlign ?? AppUtility.startText,
      maxLines: maxLines ?? 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

class BodyText extends StatelessWidget {

  final String label;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? heightSpaceing;
  final double? letterSpaceing;
  final TextAlign? textAlign;
  final int? maxLines;

  const BodyText({
    super.key,
    required this.label,
    this.fontWeight,
    this.textColor,
    this.heightSpaceing,
    this.letterSpaceing,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);

    return Text(
      label,
      style: GoogleFonts.poppins(
        textStyle: themeApp.textTheme.bodyMedium,
        color: textColor ?? themeApp.textTheme.bodyMedium?.color,
        fontWeight: fontWeight ?? AppUtility.fontRegular,
        height: heightSpaceing,
        letterSpacing: letterSpaceing,
      ),
      textAlign: textAlign ?? AppUtility.startText,
      maxLines: maxLines ?? 5,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

class CaptionText extends StatelessWidget {

  final String label;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? heightSpaceing;
  final double? letterSpaceing;
  final TextAlign? textAlign;
  final int? maxLines;

  const CaptionText({
    super.key,
    required this.label,
    this.fontWeight,
    this.textColor,
    this.heightSpaceing,
    this.letterSpaceing,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);

    return Text(
      label,
      style: GoogleFonts.poppins(
        textStyle: themeApp.textTheme.bodySmall,
        color: textColor ?? themeApp.textTheme.bodySmall?.color,
        fontWeight: fontWeight ?? AppUtility.fontRegular,
        height: heightSpaceing,
        letterSpacing: letterSpaceing,
      ),
      textAlign: textAlign ?? AppUtility.startText,
      maxLines: maxLines ?? 5,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

class OverlineText extends StatelessWidget {

  final String label;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? heightSpaceing;
  final double? letterSpaceing;
  final TextAlign? textAlign;
  final int? maxLines;

  const OverlineText({
    super.key,
    required this.label,
    this.fontWeight,
    this.textColor,
    this.heightSpaceing,
    this.letterSpaceing,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    
    final themeApp = Theme.of(context);

    return Text(
      label,
      style: GoogleFonts.poppins(
        textStyle: themeApp.textTheme.labelSmall,
        color: textColor ?? themeApp.textTheme.labelSmall?.color,
        fontWeight: fontWeight ?? AppUtility.fontLight,
        height: heightSpaceing,
        letterSpacing: letterSpaceing,
      ),
      textAlign: textAlign ?? AppUtility.startText,
      maxLines: maxLines ?? 5,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}