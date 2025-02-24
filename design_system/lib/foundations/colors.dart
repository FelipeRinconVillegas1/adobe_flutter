//  ..................................................
//  .██████╗.██████╗.██╗......██████╗.██████╗.███████╗
//  ██╔════╝██╔═══██╗██║.....██╔═══██╗██╔══██╗██╔════╝
//  ██║.....██║...██║██║.....██║...██║██████╔╝███████╗
//  ██║.....██║...██║██║.....██║...██║██╔══██╗╚════██║
//  ╚██████╗╚██████╔╝███████╗╚██████╔╝██║..██║███████║
//  .╚═════╝.╚═════╝.╚══════╝.╚═════╝.╚═╝..╚═╝╚══════╝
//  ..................................................

import 'package:flutter/material.dart';

/// Convention name color is [BASE COLOR] + [HEX CODE] +_[OPACITY (ONLY IF IS DIFFERENT FROM FF)]:
/// EX: FF1335 = redFF1335
/// EX: FF1335_03 = redFF1335_03 (opacity 0.3)
abstract class ColorsOmni {
  //// --- Deprecated Colors
  static const Color colorPrimary = Color(0xFFcd202e);
  static const Color colorPrimaryDark = Color(0xFFcd202e);
  static const Color colorAccent = Color(0xFFD81B60);
  static const Color whiteTwo = Color(0xFFe9e9e9);
  static const Color black = Color(0xFF212121);
  static const Color transparent = Colors.transparent;
  static const Color paleGrey = Color(0xFFf9f9fd);
  static const Color paleGreyLight = Color(0xFFAAADCB);
  static const Color black6_20 = Color(0x33000000);
  static const Color grapefruit = Color(0xFFff5e57);
  static const Color sunYellow = Color(0xFFffd32a);
  static const Color paleGreyTwo = Color(0xFFe5e5ee);
  static const Color darkMintGreen = Color(0xFF20be79);
  static const Color lipstick = Color(0xFFcd202e);
  static const Color lipstickDark = Color(0xFFAF1622);
  static const Color lightNavyBlue = Color(0xFF2A317D);
  static const Color lightNavyBluePressed = Color(0xFF212764);
  static const Color ice = Color(0xFFd2ffeb);
  static const Color red = Color(0xFFd8172d);
  static const Color black60 = Color(0x99212121);
  static const Color paleGreyThree = Color(0xFFf6f8fb);
  static const Color whiteSix = Color(0xFFd9d9d9);
  static const Color whiteSeven = Color(0xFFeeeeee);
  static const Color simpletooltipBackground = Color(0xFF2a317d);
  static const Color simpletooltipText = Color(0xFFd8d8d8);
  static const Color simpletooltipArrow = Color(0xFF2a317d);
  static const Color errorColor = Color(0xFFFF7246);
  static const Color squash = Color(0xFFed990e);
  static const Color green = Color(0xFF2ECC71);
  static const Color blueText = Color(0xFF223bc1);
  static const Color btnDisabled = Color(0xFFEFEFEF);
  static const Color lessImportantTextColorGrey = Color(0xFF949091);
  static const Color lighBlue = Color(0xFFE7F3F9);
  static const Color lightPurple = Color(0xFFF5F5FF);

  // Primary
  static const Color denimBlueLight = Color(0xFF687AD6);
  static const Color primaryRed = Color(0xFFFF001D);

  static const Color redEF1019 = Color(0xFFEF1019);
  static const Color denimBlueDark = Color(0xFF00158f);

  // Secondary
  static const Color secondaryBlack = Color(0xFF000000);
  static const Color secondaryDarkRed = Color(0xFFA00E1A);
  static const Color alphaFiftySecondaryRed = Color(0xFFE78F96);

  // Text
  static const Color ceruleanBlue = Color(0xFF295CBE);
  static const Color slateGrey = Color(0xFF5B636C);
  static const Color steelGreyText = Color(0xFF3F4349);
  static const Color dustyGray = Color(0xFF949091);
  static const Color darkGrayishBlue = Color(0xFF939EAB);
  static const Color osloGray = Color(0xFF888B90);
  static const Color ratingGrey = Color(0xFFB2B2B2);
  static const Color silverGrey = Color(0xFFBCBCBC);
  static const Color white = Color(0xFFFFFFFF);
  static const Color greyReminder = Color(0xFF818386);
  static const Color whiteSmoke = Color(0xFFEFEFEF);
  static const Color veryLightShadeGray = Color(0xFFe3e3e3);
  static const Color lightGray = Color(0xFFF8F8F8);
  static const Color blueBlue5 = Color(0x0c223bc1);
  static const Color gray = Color(0xFFD5D5D5);
  static const Color ratingsYellow = Color(0xFFF2AB14);

  static const Color lightYellow = Color(0xFFffc048);
  static const Color lightYellowWithLessOpacity = Color(0x14ffc048);
  static const Color darkBlue = Color(0xFF313759);
  static const Color neonBlue = Color(0xFFB7C3FF);
  static const Color lavender = Color(0xFFE8EBF8);
  static const Color blackReminder = Color(0xFF5E606A);
  static const Color blackDark = Color(0xFF292a2c);

  // Denotative
  static const Color denotativePositiveGreen = Color(0xFF20BE79);
  static const Color fluorescentPositiveGreen = Color(0xFF00FF00);
  static const Color bannerGreen = Color(0xFF4FE94F);
  static const Color denotativeNegativeRed = Color(0xFFF63159);
  static const Color lightBlue = Color(0xFFD3D8F3);
  static const Color veryLightBlue = Color(0xFFe6f4ff);
  static const Color veryLightBlue2 = Color(0xFFe8ebf9);
  static const Color lightPink = Color(0xFFFAE8EA);
  static const Color greyImageBackground = Color(0xFFECECEC);
  static const Color spaceLine = Color(0xFFf2f3f5);
  static const Color darkGrey = Color(0xFF7f848c);
  static const Color primaryRedWith30PercentOpacity = Color.fromRGBO(255, 0, 29, 0.3);
  static const Color whiteWith90PercentOpacity = Color(0xE6FFFFFF);
  static const Color darkShadow = Color(0xFF000029);

  // Colors status messages snackbars
  static const Color greenLightSnackBar = Color(0xFFADEBA6);
  static const Color greenSnackBar = Color(0xFF3DC32C);
  static const Color redLightSnackBar = Color(0xFFFF9C9C);
  static const Color redSnackBar = Color(0xFFFF4625);
  static const Color yellowSnackBar = Color(0xFFFFD908);
  static const Color yellowLightSnackBar = Color(0xFFFFF0D9);


  // Category colors
  static const Color categoryColor1 = Color(0xFFFF6666);
  static const Color categoryColor2 = Color(0xFFFFF0B1);
  static const Color categoryColor3 = Color(0xFFD5FFD0);
  static const Color categoryColor4 = Color(0xFFDBFFF3);
  static const Color categoryColor5 = Color(0xFFFFD971);
  static const Color categoryColor6 = Color(0xFF9599FE);
  static const Color categoryColor7 = Color(0xFFFF2948);
  static const Color categoryColor8 = Color(0xFFFDC1F6);
  static const Color categoryColor9 = Color(0xFFFFF8AA);
  static const Color categoryColor10 = Color(0xFFFFF7DE);
  static const Color categoryColor11 = Color(0xFFEBE7FA);
  static const Color categoryColor12 = Color(0xFFD9FFD6);
  static const Color categoryColor13 = Color(0xFFDEFF95);
  static const Color categoryColor14 = Color(0xFFFF2F2F);
  static const Color categoryColor15 = Color(0xFFB1E7FF);
  static const Color categoryColor16 = Color(0xFFA7B8FF);
  static const Color categoryColor17 = Color(0xFFEFEFEF);
  static const Color categoryColor18 = Color(0xFFFFD971);
  static const Color categoryColor19 = Color(0xFFFFC593);
  static const Color categoryColor20 = Color(0xFFDCADFF);
  static const Color categoryColor21 = Color(0xFFB6ECFC);
  static const Color categoryColor22 = Color(0xFFD1FFD7);
  static const Color categoryColor23 = Color(0xFFFEE5AD);
  static const Color categoryColor24 = Color(0xFFC6FFF6);
  static const Color categoryColor25 = Color(0xFFFFE8EA);
  static const Color categoryColor26 = Color(0xFFFFF8AA);
  static const Color categoryColor27 = Color(0xFFFFB4A8);
  static const Color categoryColor28 = Color(0xFFEAD8BD);
  static const Color categoryColor29 = Color(0xFFEBE7FA);

  /////----------------------

  static const Color colorIconMenu = paleGreyLight;
  static const Color black70 = Color(0xFF707070);
  static const Color rosyPink = Color.fromRGBO(255, 0, 29, 0.2);
  static const Color primaryRedWith50PercentOpacity = Color.fromRGBO(255, 0, 29, 0.5);

  //// --- Deprecated Colors

  /// Colors for the new design system
  static const Color grey707070 = Color(0xFF707070);
  static const Color greyF0F0F0 = Color(0xFFF0F0F0);
  static const Color greyFF2F2 = Color(0xFFF2F2F2);
  static const Color grey9A9B9E = Color(0xFF9A9B9E);
  static const Color grey9f9f9f = Color(0xFF9f9f9f);
  static const Color blue00158f = Color(0xFF00158f);
  static const Color greyB7B7B7 = Color(0xFFB7B7B7);
  static const Color greyE3E3E4 = Color(0xFFE3E3E4);
  static const Color greyBDBDBD = Color(0xFFBDBDBD);
  static const Color greyE4E4E4 = Color(0xFFE4E4E4);
  static const Color orangeFB8500 = Color(0xFFFB8500);
  static  Color orangeFB8500_03 = const Color(0xFFFB8500).withOpacity(0.3);
  static const Color orangeF47100 = Color(0xFFF47100);
  static const Color orangeFFF9E8 = Color(0xFFFFF9E8);
  static const Color violet9599FE = Color(0xFF9599FE);
  static const Color grey7E7E7E = Color(0xFF7E7E7E);
  static Color greyADADAD_01 = const Color(0xFFADADAD).withOpacity(0.1);
  static const Color redFF001D = Color(0xFFFF001D);
  static const Color redF45668 = Color(0xFFF45668);
  static const Color redFF181D = Color(0xFFFF181D);
  static Color redFF001D7A = const Color(0xFFFF001D).withOpacity(0.5);
  static const Color redFF1335 = Color(0xFFFF1335);
  static const Color redCD202E = Color(0xFFCD202E);
  static const Color redFF1835 = Color(0xFFFF1835);
  static const Color redFF4848 = Color(0xFFFF4848);
  static const Color grayF5F5F5 = Color(0xFFF5F5F5);
  static const Color orangeFF9913 = Color(0xFFFF9913);
  static const Color orangeFFF0D9 = Color(0xFFFFF0D9);
  static const Color orangeFFE5BB = Color(0xFFFFE5BB);
  static const Color yellowFEB43B = Color(0xFFFEB43B);


  static const Color green00D285 = Color(0xFF00D285);
  static const Color green22A011 = Color(0xFF22A011);
  static const Color green33d285 = Color(0xFF33d285);
  static const Color green3DC32C = Color(0xFF3DC32C);
  static const Color green00C714 = Color(0xFF00C714);
  static const Color green08C943 = Color(0xFF08C943);
  static const Color yellowFF9900 = Color(0xFFFF9900);
  static const Color yellowFFD908 = Color(0xFFFFD908);
  static const Color yellowFFF0D9 = Color(0xFFFFF0D9);
  static const Color black454545 = Color(0xFF454545);
  static const Color black464749 = Color(0xFF464749);
  static const Color black161615 = Color(0xFF161615);
  static const Color redCD1214 = Color(0xFFCD1214);
  static const Color redFFCCD1 = Color(0xFFFFCCD1);
  static const Color grey585C69 = Color(0xFF585C69);
  static const Color blue1D43FF = Color(0xFF1D43FF);
  static const Color whiteFEFFE2 = Color(0xFFFEFFE2);

  static const Color redF2ABB2 = Color(0xFFF2ABB2);
  static const Color blackRGBO696969_53 = Color.fromRGBO(69, 69, 69, 53);
  static const Color black292929 = Color(0xFF292929);
  static const Color white29000000 = Color(0x29000000);
  static const Color pinkFFF9ED = Color(0xFFFFF9ED);
  static const Color pinkFFF0D9 = Color(0xFFFFF0D9);
  static const Color whiteRGBO000_016 = Color.fromRGBO(0, 0, 0, 0.16);
  static const Color yellowFFB400 = Color.fromRGBO(255, 180, 0, 1);
  static const Color greyF5F5F5 = Color(0xFFF5F5F5);
  static const Color grey898989 = Color(0xFF898989);

  /// List colors for categories
  static const List<Color> colorsCategories = [
    ColorsOmni.categoryColor17,
    ColorsOmni.categoryColor1,
    ColorsOmni.categoryColor16,
    ColorsOmni.categoryColor18,
    ColorsOmni.categoryColor19,
    ColorsOmni.categoryColor20,
    ColorsOmni.categoryColor21,
    ColorsOmni.categoryColor22,
    ColorsOmni.categoryColor23,
    ColorsOmni.categoryColor24,
    ColorsOmni.categoryColor25,
    ColorsOmni.categoryColor26,
    ColorsOmni.categoryColor27,
    ColorsOmni.categoryColor28,
    ColorsOmni.categoryColor29,
    ColorsOmni.categoryColor2,
    ColorsOmni.categoryColor3,
    ColorsOmni.categoryColor4,
    ColorsOmni.categoryColor5,
    ColorsOmni.categoryColor6,
    ColorsOmni.categoryColor7,
    ColorsOmni.categoryColor8,
    ColorsOmni.categoryColor9,
    ColorsOmni.categoryColor10,
    ColorsOmni.categoryColor11,
    ColorsOmni.categoryColor12,
    ColorsOmni.categoryColor13,
    ColorsOmni.categoryColor14,
    ColorsOmni.categoryColor15,
  ];
}
