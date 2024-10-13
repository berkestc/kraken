import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart' as colors;
import '../constants/font_sizes.dart';
import '../constants/system_ui_overlay_styles.dart';
import '../constants/text_styles.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 80, 90, 110)),
  progressIndicatorTheme: _progressIndicatorThemeData,
  inputDecorationTheme: _inputDecorationTheme,
  scaffoldBackgroundColor: colors.white,
  bottomSheetTheme: _bottomSheetThemeData,
  dividerTheme: _dividerThemeData,
  primaryTextTheme: _textTheme,
  appBarTheme: _appBarTheme,
  textTheme: _textTheme,
  useMaterial3: true,
);

const _progressIndicatorThemeData = ProgressIndicatorThemeData(
  circularTrackColor: colors.white,
  color: colors.black700,
);

final _inputDecorationTheme = InputDecorationTheme(
  iconColor: colors.black700,
  contentPadding: EdgeInsets.fromLTRB(20.r, 16.r, 7.r, 16.r),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: colors.black700.withOpacity(0.1), width: 0.3.r),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: colors.black700.withOpacity(0.1), width: 0.3.r),
  ),
  border: UnderlineInputBorder(
    borderSide: BorderSide(color: colors.black700.withOpacity(0.1), width: 0.3.r),
  ),
  disabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: colors.black700.withOpacity(0.1), width: 0.3.r),
  ),
  errorStyle: lightLabelSmall.copyWith(color: colors.red500, fontSize: fontSize12),
  hintStyle: lightTitleSmall.copyWith(color: colors.hint, fontSize: fontSize14),
);

final _dividerThemeData = DividerThemeData(
  color: colors.gray400,
  space: 0,
  thickness: 0.3.r,
);

final _textTheme = TextTheme(
  labelSmall: lightLabelSmall,
  labelMedium: lightLabelMedium,
  labelLarge: lightLabelLarge,
  bodySmall: lightBodySmall,
  bodyMedium: lightBodyMedium,
  bodyLarge: lightBodyLarge,
  titleSmall: lightTitleSmall,
  titleMedium: lightTitleMedium,
  titleLarge: lightTitleLarge,
  headlineSmall: lightHeadlineSmall,
  displaySmall: lightDisplaySmall,
  displayMedium: lightDisplayMedium,
  displayLarge: lightDisplayLarge,
);

const _iconThemeData = IconThemeData(color: colors.black700, size: 24);

final _appBarTheme = AppBarTheme(
  systemOverlayStyle: systemUiOverlayDarkStyle,
  backgroundColor: Colors.transparent,
  elevation: 0,
  titleTextStyle: lightDisplayMedium,
  iconTheme: _iconThemeData,
  actionsIconTheme: _iconThemeData,
  centerTitle: false,
  titleSpacing: 20.w,
);

final _bottomSheetThemeData = BottomSheetThemeData(
  modalBackgroundColor: colors.white,
  backgroundColor: colors.white,
  clipBehavior: Clip.hardEdge,
  elevation: 0,
  modalBarrierColor: colors.modalBarrier,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
  ),
);
