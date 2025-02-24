import 'package:flutter/material.dart';
import 'package:design_system/tokens/typography.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

abstract class OmniTypographyFoundation {
  //fonts
  static const String familyRubik = OmniTypography.familyRubik;
  static const String familyGotham = OmniTypography.familyGotham;

  // Base Styles
  static final TextStyle semiBold37 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size37.sp,
  );

  static final TextStyle regular25 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size25.sp,
  );

  static final TextStyle regular24 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size24.sp,
  );

  static final TextStyle semiBold22 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size22.sp,
  );

  static final TextStyle semiBold24 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size24.sp,
  );

  static final TextStyle bold25 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size25.sp,
  );

  static final TextStyle bold24 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size24.sp,
  );

  static final TextStyle medium24 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size24.sp,
  );

  static final TextStyle bold22 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size22.sp,
  );

  static final TextStyle medium22 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size22.sp,
  );

  static final TextStyle bold20 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size20.sp,
  );

  static final TextStyle regular18 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size18.sp,
  );

  static final TextStyle bold18 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size18.sp,
  );

  static final TextStyle semiBold18 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size18.sp,
  );

  static final TextStyle medium18 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size18.sp,
  );

  static final TextStyle medium17 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size17.sp,
  );

  static final TextStyle semiBold17 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size17.sp,
  );

  static final TextStyle extraBold16 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w800,
    fontSize: OmniTypography.size16.sp,
  );

  static final TextStyle extraBold22 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w800,
    fontSize: OmniTypography.size22.sp,
  );

  static final TextStyle regular16 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size16.sp,
  );

  static final TextStyle medium16 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size16.sp,
  );

  static final TextStyle semiBold16 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size16.sp,
  );

  static final TextStyle bold16 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size16.sp,
  );

  static final TextStyle light16 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w300,
    fontSize: OmniTypography.size16.sp,
  );

  static final TextStyle regular15 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size15.sp,
  );

  static final TextStyle medium15 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size15.sp,
  );

  static final TextStyle semiBold15 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size15.sp,
  );

  static final TextStyle bold15 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size15.sp,
  );

  static final TextStyle regular14 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size14.sp,
  );

  static final TextStyle medium14 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size14.sp,
  );

  static final TextStyle semiBold14 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size14.sp,
  );

  static final TextStyle bold14 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size14.sp,
  );

  static final TextStyle bold40 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size40.sp,
  );

  static final TextStyle light14 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w300,
    fontSize: OmniTypography.size14.sp,
  );

  static final TextStyle regular13 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size13.sp,
  );

  static final TextStyle medium13 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size13.sp,
  );

  static final TextStyle bold13 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size13.sp,
  );

  static final TextStyle semiBold13 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size13.sp,
  );

  static final TextStyle regular12 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size12.sp,
  );

  static final TextStyle medium12 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size12.sp,
  );

  static final TextStyle bold12 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size12.sp,
  );

  static final TextStyle semiBold12 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size12.sp,
  );

  static final TextStyle light12 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w300,
    fontSize: OmniTypography.size12.sp,
  );

  static final TextStyle regular11 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size11.sp,
  );

  static final TextStyle medium11 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size11.sp,
  );

  static final TextStyle bold11 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size11.sp,
  );

  static final TextStyle semiBold11 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size11.sp,
  );

  static final TextStyle light11 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w300,
    fontSize: OmniTypography.size11.sp,
  );

  static final TextStyle regular10 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size10.sp,
  );

  static final TextStyle semiBold8 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size8.sp,
  );

  static final TextStyle semiBold10 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w600,
    fontSize: OmniTypography.size10.sp,
  );

  static final TextStyle bold10 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size10.sp,
  );

  static final TextStyle light10 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w300,
    fontSize: OmniTypography.size10.sp,
  );

  static final TextStyle medium10 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size10.sp,
  );

  static final TextStyle medium9 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size9.sp,
  );

  static final TextStyle regular9 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.normal,
    fontSize: OmniTypography.size9.sp,
  );

  static final TextStyle bold8 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size8.sp,
  );

  static final TextStyle bold17 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w700,
    fontSize: OmniTypography.size17.sp,
  );

  static final TextStyle medium8 = TextStyle(
    fontFamily: familyRubik,
    fontWeight: FontWeight.w500,
    fontSize: OmniTypography.size8.sp,
  );

  /// colores S99 cambiados diego convencion {fontWeight}{fontSize}{colorName}{colorHexa} , example : ligth22BlackBE440

  // Regular font weight
  static final TextStyle regular9Green00C714 = regular9.copyWith(color: ColorsOmni.green00C714);
  static final TextStyle regular9YellowFF9900 = regular9.copyWith(color: ColorsOmni.yellowFF9900);
  static final TextStyle regular10GreyB7B7B7 = regular10.copyWith(color: ColorsOmni.greyB7B7B7);
  static final TextStyle regular10WhiteFFFFF = regular10.copyWith(color: ColorsOmni.white);
  static final TextStyle regular10Black292929 = regular10.copyWith(color: ColorsOmni.black292929);
  static final TextStyle regular10Black161615 = regular10.copyWith(color: ColorsOmni.black161615);
  static final TextStyle regular10SecondaryDarkRedA00E1A = regular10.copyWith(color: ColorsOmni.secondaryDarkRed);
  static final TextStyle regular10Black464749 = regular10.copyWith(color: ColorsOmni.black464749);
  static final TextStyle regular10SecondaryBlack000000 = regular10.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle regular10PrimaryRedFF001D = regular10.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle regular10Grey949091 = regular10.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle regular10Green3DC32C = regular10.copyWith(color: ColorsOmni.green3DC32C);
  static final TextStyle regular11PrimaryRedFF001D = regular11.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle regular11Grey5B636C = regular11.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle regular11Grey707070 = regular11.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle regular11Grey949091 = regular11.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle regular11SecondaryBlack000000 = regular11.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle regular12PrimaryRedFF001D = regular12.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle regular12White = regular12.copyWith(color: ColorsOmni.white);
  static final TextStyle regular12Green3DC32C = regular12.copyWith(color: ColorsOmni.green3DC32C);
  static final TextStyle regular12Black292929 = regular12.copyWith(color: ColorsOmni.black292929);
  static final TextStyle regular12Black161615 = regular12.copyWith(color: ColorsOmni.black161615);
  static final TextStyle regular12Grey9A9B9E = regular12.copyWith(color: ColorsOmni.grey9A9B9E);
  static final TextStyle regular12Black454545 = regular12.copyWith(color: ColorsOmni.black454545);
  static final TextStyle regular12Black464749 = regular12.copyWith(color: ColorsOmni.black464749);
  static final TextStyle regular12Grey5B636C = regular12.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle regular12Grey585C69 = regular12.copyWith(color: ColorsOmni.grey585C69);
  static final TextStyle regular12Grey707070 = regular12.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle regular12GreyB2B2B2 = regular12.copyWith(color: ColorsOmni.ratingGrey);
  static final TextStyle regular12Grey818386 = regular12.copyWith(color: ColorsOmni.greyReminder);
  static final TextStyle regular12SecondaryBlack000000 = regular12.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle regular13Black464749 = regular13.copyWith(color: ColorsOmni.black464749);
  static final TextStyle regular13Blue939EAB = regular13.copyWith(color: ColorsOmni.darkGrayishBlue);
  static final TextStyle regular13Grey5B636C = regular13.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle regular13Grey707070 = regular13.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle regular13Grey949091 = regular13.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle regular14PrimaryRedFF001D = regular14.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle regular14RedEF1019 = regular14.copyWith(color: ColorsOmni.redEF1019);
  static final TextStyle regular14Black161615 = regular14.copyWith(color: ColorsOmni.black161615);
  static final TextStyle regular14SecondaryBlack000000 = regular14.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle regular14WhiteFFFFFF = regular14.copyWith(color: ColorsOmni.white);
  static final TextStyle regular14Black000000 = regular14.copyWith(color: ColorsOmni.black);
  static final TextStyle regular14Black454545 = regular14.copyWith(color: ColorsOmni.black454545);
  static final TextStyle regular14Grey5B636C = regular14.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle regular14Grey7070 = regular14.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle regular14Grey949091 = regular14.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle regular14Blue939EAB = regular14.copyWith(color: ColorsOmni.darkGrayishBlue);
  static final TextStyle regular14Grey888B90 = regular14.copyWith(color: ColorsOmni.osloGray);
  static final TextStyle regular14Green20BE79 = regular14.copyWith(color: ColorsOmni.denotativePositiveGreen);
  static final TextStyle regular14GreyB2B2B2 = regular14.copyWith(color: ColorsOmni.ratingGrey);
  static final TextStyle regular14White = regular14.copyWith(color: ColorsOmni.white);
  static final TextStyle regular14B7B7B7 = regular15.copyWith(color: ColorsOmni.greyB7B7B7);
  static final TextStyle regular15PrimaryRedFF001D = regular15.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle regular15Grey5B636C = regular15.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle regular15Black5E606A = regular15.copyWith(color: ColorsOmni.blackReminder);
  static final TextStyle regular15Grey707070 = regular15.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle regular16Grey5B636C = regular16.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle regular16Grey707070 = regular16.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle regular16Blue939EAB = regular16.copyWith(color: ColorsOmni.darkGrayishBlue);
  static final TextStyle regular16Grey949091 = regular16.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle regular18Blue939EAB = regular18.copyWith(color: ColorsOmni.darkGrayishBlue);
  static final TextStyle regular18Black161615 = regular18.copyWith(color: ColorsOmni.black161615);
  static final TextStyle regular18Black000000 = regular18.copyWith(color: ColorsOmni.black);
  static final TextStyle regular18SecondaryBlack = regular18.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle regular24Grey707070 = regular24.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle regular25Black161615 = regular25.copyWith(color: ColorsOmni.black161615);

// Light font weight
  static final TextStyle light10PrimaryRedFF001D = light10.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle light10SecondaryBlack000000 = light10.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle light11WhiteFFFFFF = light11.copyWith(color: ColorsOmni.white);
  static final TextStyle light11GreyB7B7B7= light11.copyWith(color: ColorsOmni.greyB7B7B7);
  static final TextStyle light12GreyB7B7B7 =
      light12.copyWith(color: ColorsOmni.greyB7B7B7, letterSpacing: 0, height: 0);
  static final TextStyle light12Grey161615 =
      light12.copyWith(color: ColorsOmni.black161615, letterSpacing: 0, height: 0);
  static final TextStyle light12SecondaryBlack000000 =
      light12.copyWith(color: ColorsOmni.secondaryBlack, letterSpacing: 0, height: 0);
  static final TextStyle light12SecondaryBlue1D43FF =
      light12.copyWith(color: ColorsOmni.blue1D43FF, letterSpacing: 0, height: 0);
  static final TextStyle light14SecondaryBlack000000 =
      light14.copyWith(color: ColorsOmni.secondaryBlack, letterSpacing: 0, height: 0);
  static final TextStyle light14PrimaryRed =
  light14.copyWith(color: ColorsOmni.primaryRed, letterSpacing: 0, height: 0);
  static final TextStyle light16SecondaryBlack000000 = light16.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle light16SecondaryBlack161615 = light16.copyWith(color: ColorsOmni.black161615);
// Medium font weight
  static final TextStyle medium8Grey707070 = medium8.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle medium8Grey9f9f9f = medium8.copyWith(color: ColorsOmni.grey9f9f9f);
  static final TextStyle medium9WhiteFFFFFF = medium9.copyWith(color: ColorsOmni.white);
  static final TextStyle medium9Grey707070 = medium9.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle medium10Grey707070 = medium10.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle medium11PrimaryRedFF001D = medium11.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle medium11SecondaryBlack = medium11.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle medium11Grey707070 = medium11.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle medium12PrimaryRedFF001D = medium12.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle medium12RedFF001D = medium12.copyWith(color: ColorsOmni.redFF001D);
  static final TextStyle medium12Grey5B636C = medium12.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle medium12Black292a2c = bold12.copyWith(color: ColorsOmni.blackDark);
  static final TextStyle medium12Blue295CBE = medium12.copyWith(color: ColorsOmni.ceruleanBlue);
  static final TextStyle medium12Grey707070 = medium12.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle medium12GreyB7B7B7 = medium12.copyWith(color: ColorsOmni.greyB7B7B7);
  static final TextStyle medium12Black161615 = medium12.copyWith(color: ColorsOmni.black161615);
  static final TextStyle medium12SecondaryBlack000000 = medium12.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle medium13Grey5B636C = medium13.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle medium13Grey707070 = medium13.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle medium13Grey949091 = medium13.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle medium13WhiteFFFFFF = medium13.copyWith(color: ColorsOmni.white);
  static final TextStyle medium14PrimaryRedFF001D = medium14.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle medium14SecondaryBlack000000 = medium14.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle medium14Black161615 = medium14.copyWith(color: ColorsOmni.black161615);
  static final TextStyle medium14Grey5B636C = medium14.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle medium14Grey707070 = medium14.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle medium14Grey949091 = medium14.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle medium14WhiteFFFFFF = medium14.copyWith(color: ColorsOmni.white);
  static final TextStyle medium14Green20BE79 = medium14.copyWith(color: ColorsOmni.denotativePositiveGreen);
  static final TextStyle medium15Grey5B636C = medium15.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle medium15Grey707070 = medium15.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle medium16SecondaryBlack000000 = medium16.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle medium16Green20BE79 = medium16.copyWith(color: ColorsOmni.denotativePositiveGreen);
  static final TextStyle medium16Grey707070 = medium16.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle medium16Grey949091 = medium16.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle medium16Black464749 = medium16.copyWith(color: ColorsOmni.black464749);
  static final TextStyle medium16White = medium16.copyWith(color: ColorsOmni.white);
  static final TextStyle medium16PrimaryRedFF001D = medium16.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle medium17PrimaryRedFF001D = medium17.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle medium17Green20BE79 = medium17.copyWith(color: ColorsOmni.denotativePositiveGreen);
  static final TextStyle medium17Grey949091 = medium17.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle medium17Grey707070 = medium17.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle medium18Black161615 = medium18.copyWith(color: ColorsOmni.black161615);
  static final TextStyle medium22White = medium22.copyWith(color: ColorsOmni.white);

// SemiBold font weight
  static final TextStyle semiBold8Black = semiBold10.copyWith(color: ColorsOmni.black161615);
  static final TextStyle semiBold10PrimaryRedFF001D = semiBold10.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle semiBold10Grey5B636C = semiBold10.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle semiBold10WhiteFFFFF = semiBold10.copyWith(color: ColorsOmni.white);
  static final TextStyle semiBold11Grey949091 = semiBold11.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle semiBold11WhiteFFFFFF = semiBold11.copyWith(color: ColorsOmni.white);
  static final TextStyle semiBold12Grey707070 = semiBold12.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle semiBold12RedFF001D = semiBold12.copyWith(color: ColorsOmni.redFF001D);
  static final TextStyle semiBold12RedFF1335 = semiBold12.copyWith(color: ColorsOmni.redFF1335);
  static final TextStyle semiBold12Grey949091 = semiBold12.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle semiBold12WhiteFFFFFF = semiBold12.copyWith(color: ColorsOmni.white);
  static final TextStyle semiBold12Black292a2c = semiBold12.copyWith(color: ColorsOmni.black);
  static final TextStyle semiBold12Black000000 = semiBold12.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle semiBold12GreyB7B7B7 = semiBold12.copyWith(color: ColorsOmni.greyB7B7B7);
  static final TextStyle semiBold13Blue2A317D = semiBold13.copyWith(color: ColorsOmni.black464749);
  static final TextStyle semiBold14Grey5B636C = semiBold14.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle semiBold14Grey707070 = semiBold14.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle semiBold14GreyB2B2B2 = semiBold14.copyWith(color: ColorsOmni.ratingGrey);
  static final TextStyle semiBold14PrimaryRedFF001D = semiBold14.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle semiBold14SecondaryBlack000000 = semiBold14.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle semiBold14WhiteFFFFFF = semiBold14.copyWith(color: ColorsOmni.white);
  static final TextStyle semiBold14Blue00158f = semiBold14.copyWith(color: ColorsOmni.denimBlueDark);
  static final TextStyle semiBold14Grey949091 = semiBold14.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle semiBold14RedCD1214 = semiBold14.copyWith(color: ColorsOmni.redCD1214);
  static final TextStyle semiBold14Black161615 = semiBold14.copyWith(color: ColorsOmni.black161615);
  static final TextStyle semibold15Grey707070 = semiBold15.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle semibold15Green20BE79 = semiBold15.copyWith(color: ColorsOmni.denotativePositiveGreen);
  static final TextStyle semibold15Grey5B636C = semiBold15.copyWith(color: ColorsOmni.slateGrey);
  static final TextStyle semibold15WhiteFFFFFF = semiBold15.copyWith(color: ColorsOmni.white);
  static final TextStyle semiBold15Grey707070 = semiBold15.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle semiBold15Green20BE79 = semiBold15.copyWith(color: ColorsOmni.denotativePositiveGreen);
  static final TextStyle semiBold15WhiteFFFFFF = semiBold15.copyWith(color: ColorsOmni.white);
  static final TextStyle semiBold16Blue00158f = semiBold16.copyWith(color: ColorsOmni.denimBlueDark);
  static final TextStyle semiBold16Grey707070 = semiBold16.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle semiBold16Grey949091 = semiBold16.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle semiBold16PrimaryRedFF001D = semiBold16.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle semiBold16SecondaryBlack000000 = semiBold16.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle semiBold16WhiteFFFFFF = semiBold16.copyWith(color: ColorsOmni.white);
  static final TextStyle semiBold16Green20BE79 = semiBold16.copyWith(color: ColorsOmni.denotativePositiveGreen);
  static final TextStyle semiBold17Grey707070 = semiBold17.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle semiBold17Grey949091 = semiBold17.copyWith(color: ColorsOmni.dustyGray);
  static final TextStyle semiBold18Grey707070 = semiBold18.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle semiBold18Black454545 = semiBold18.copyWith(color: ColorsOmni.black454545);
  static final TextStyle semiBold22Black000000 = semiBold22.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle semiBold24SecondaryBlack000000 = semiBold24.copyWith(color: ColorsOmni.secondaryBlack);

// Bold font weight
  static final TextStyle bold8WhiteFFFFFF = bold8.copyWith(color: ColorsOmni.white);
  static final TextStyle bold10SecondaryBlack = bold10.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle bold10Black161615 = bold10.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold10Grey707070 = bold10.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle bold10WhiteFFFFF = bold10.copyWith(color: ColorsOmni.white);
  static final TextStyle bold10RedEF1019 = bold10.copyWith(color: ColorsOmni.redEF1019);
  static final TextStyle bold10RedFF1335 = bold10.copyWith(color: ColorsOmni.redFF1335);
  static final TextStyle bold11Grey707070 = bold11.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle bold11White = bold11.copyWith(color: ColorsOmni.white);
  static final TextStyle bold11Black = bold11.copyWith(color: ColorsOmni.black);
  static final TextStyle bold12RedFF001D = bold12.copyWith(color: ColorsOmni.redFF001D);
  static final TextStyle bold12Grey707070 = bold12.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle bold12GreyB7B7B7 = bold12.copyWith(color: ColorsOmni.greyB7B7B7);
  static final TextStyle bold12Black000000 = bold12.copyWith(color: ColorsOmni.black);
  static final TextStyle bold12Black161615 = bold12.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold12White = bold12.copyWith(color: ColorsOmni.white);
  static final TextStyle bold13Green20BE79 = bold13.copyWith(color: ColorsOmni.denotativePositiveGreen);
  static final TextStyle bold13Grey707070 = bold13.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle bold13SecondaryBlack000000 = bold13.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle bold14Green00D285 = bold14.copyWith(color: ColorsOmni.green00D285);
  static final TextStyle bold14Green22A011 = bold14.copyWith(color: ColorsOmni.green22A011);
  static final TextStyle bold14SecondaryBlack161615 = bold14.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold14SecondaryBlack000000 = bold14.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle bold14Black161615 = bold14.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold14Black454545 = bold14.copyWith(color: ColorsOmni.black454545);
  static final TextStyle bold14WhiteFFFFFF = bold14.copyWith(color: ColorsOmni.white);
  static final TextStyle bold14WhiteFEFFE2 = bold14.copyWith(color: ColorsOmni.whiteFEFFE2);
  static final TextStyle bold14RedFF1335 = bold14.copyWith(color: ColorsOmni.redFF1335);
  static final TextStyle bold14PrimaryRedFF001D = bold14.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle bold15Black464749 = bold15.copyWith(color: ColorsOmni.black464749);
  static final TextStyle bold16Blue687AD6 = bold16.copyWith(color: ColorsOmni.denimBlueLight);
  static final TextStyle bold16Grey707070 = bold16.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle bold16SecondaryBlack000000 = bold16.copyWith(color: ColorsOmni.black);
  static final TextStyle bold16White = bold16.copyWith(color: ColorsOmni.white);
  static final TextStyle bold16redFF001D = bold16.copyWith(color: ColorsOmni.primaryRed);
  static final TextStyle bold16Black161615 = bold16.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold17WhiteFEFFE2 = bold17.copyWith(color: ColorsOmni.whiteFEFFE2); //FontStyle.italic
  static final TextStyle bold18SecondaryBlack000000 = bold18.copyWith(color: ColorsOmni.black);
  static final TextStyle bold18PrimaryRedFF001D = bold18.copyWith(color: ColorsOmni.redFF001D);
  static final TextStyle bold18White = bold18.copyWith(color: ColorsOmni.white);
  static final TextStyle bold18SecondaryBlack161615 = bold18.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold20Blue295CBE = bold20.copyWith(color: ColorsOmni.ceruleanBlue);
  static final TextStyle bold20green20BE79 = bold20.copyWith(color: ColorsOmni.denotativePositiveGreen);
  static final TextStyle bold22SecondaryBlack000000 = bold22.copyWith(color: ColorsOmni.secondaryBlack);
  static final TextStyle bold18Black161615 = bold18.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold20Black161615 = bold20.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold22whiteFFFFFF = bold22.copyWith(color: ColorsOmni.white);
  static final TextStyle bold22Black161615 = bold22.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold24Black161615 = bold24.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold24Grey707070 = bold24.copyWith(color: ColorsOmni.grey707070);
  static final TextStyle bold24RedFF1335 = bold24.copyWith(color: ColorsOmni.redFF1335);
  static final TextStyle bold25Black161615 = bold25.copyWith(color: ColorsOmni.black161615);
  static final TextStyle bold40WhiteFEFFE2 = bold40.copyWith(color: ColorsOmni.whiteFEFFE2);

  static final TextStyle extraBold16Black161615 = extraBold16.copyWith(color: ColorsOmni.black161615);
  static final TextStyle extraBold22Black161615 = extraBold22.copyWith(color: ColorsOmni.black161615);

  ///Gotham fonts
  static final TextStyle gothamBold14OrangeF47100 =
      bold14.copyWith(color: ColorsOmni.orangeF47100, fontFamily: familyGotham);
  static final TextStyle gothamBold14RedFF1335 = bold14.copyWith(color: ColorsOmni.redFF1335, fontFamily: familyGotham);
}
