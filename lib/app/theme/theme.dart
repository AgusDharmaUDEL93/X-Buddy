import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4280051077),
      surfaceTint: Color(4280051077),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4291029247),
      onPrimaryContainer: Color(4278197804),
      secondary: Color(4280248910),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289262286),
      onSecondaryContainer: Color(4278198549),
      tertiary: Color(4287450666),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294958027),
      onTertiaryContainer: Color(4281602304),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294376190),
      onBackground: Color(4279770143),
      surface: Color(4294376190),
      onSurface: Color(4279770143),
      surfaceVariant: Color(4292666345),
      onSurfaceVariant: Color(4282468429),
      outline: Color(4285626493),
      outlineVariant: Color(4290824141),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086260),
      inverseOnSurface: Color(4293784053),
      inversePrimary: Color(4287614707),
      primaryFixed: Color(4291029247),
      onPrimaryFixed: Color(4278197804),
      primaryFixedDim: Color(4287614707),
      onPrimaryFixedVariant: Color(4278209641),
      secondaryFixed: Color(4289262286),
      onSecondaryFixed: Color(4278198549),
      secondaryFixedDim: Color(4287485363),
      onSecondaryFixedVariant: Color(4278210873),
      tertiaryFixed: Color(4294958027),
      onTertiaryFixed: Color(4281602304),
      tertiaryFixedDim: Color(4294948496),
      onTertiaryFixedVariant: Color(4285544213),
      surfaceDim: Color(4292270815),
      surfaceBright: Color(4294376190),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293981432),
      surfaceContainer: Color(4293586674),
      surfaceContainerHigh: Color(4293257709),
      surfaceContainerHighest: Color(4292862951),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278208611),
      surfaceTint: Color(4280051077),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281957533),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278209845),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281958756),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4285215506),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4289159998),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294376190),
      onBackground: Color(4279770143),
      surface: Color(4294376190),
      onSurface: Color(4279770143),
      surfaceVariant: Color(4292666345),
      onSurfaceVariant: Color(4282205257),
      outline: Color(4284047461),
      outlineVariant: Color(4285824129),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086260),
      inverseOnSurface: Color(4293784053),
      inversePrimary: Color(4287614707),
      primaryFixed: Color(4281957533),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4279788419),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281958756),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280051788),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4289159998),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4287253544),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292270815),
      surfaceBright: Color(4294376190),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293981432),
      surfaceContainer: Color(4293586674),
      surfaceContainerHigh: Color(4293257709),
      surfaceContainerHighest: Color(4292862951),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4278199605),
      surfaceTint: Color(4280051077),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278208611),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278200346),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4278209845),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282258944),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285215506),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294376190),
      onBackground: Color(4279770143),
      surface: Color(4294376190),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4292666345),
      onSurfaceVariant: Color(4280165673),
      outline: Color(4282205257),
      outlineVariant: Color(4282205257),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086260),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4292472831),
      primaryFixed: Color(4278208611),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278202692),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4278209845),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4278203427),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285215506),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283375104),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292270815),
      surfaceBright: Color(4294376190),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293981432),
      surfaceContainer: Color(4293586674),
      surfaceContainerHigh: Color(4293257709),
      surfaceContainerHighest: Color(4292862951),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4287614707),
      surfaceTint: Color(4287614707),
      onPrimary: Color(4278203721),
      primaryContainer: Color(4278209641),
      onPrimaryContainer: Color(4291029247),
      secondary: Color(4287485363),
      onSecondary: Color(4278204454),
      secondaryContainer: Color(4278210873),
      onSecondaryContainer: Color(4289262286),
      tertiary: Color(4294948496),
      onTertiary: Color(4283703810),
      tertiaryContainer: Color(4285544213),
      onTertiaryContainer: Color(4294958027),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279178263),
      onBackground: Color(4292862951),
      surface: Color(4279178263),
      onSurface: Color(4292862951),
      surfaceVariant: Color(4282468429),
      onSurfaceVariant: Color(4290824141),
      outline: Color(4287271575),
      outlineVariant: Color(4282468429),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292862951),
      inverseOnSurface: Color(4281086260),
      inversePrimary: Color(4280051077),
      primaryFixed: Color(4291029247),
      onPrimaryFixed: Color(4278197804),
      primaryFixedDim: Color(4287614707),
      onPrimaryFixedVariant: Color(4278209641),
      secondaryFixed: Color(4289262286),
      onSecondaryFixed: Color(4278198549),
      secondaryFixedDim: Color(4287485363),
      onSecondaryFixedVariant: Color(4278210873),
      tertiaryFixed: Color(4294958027),
      onTertiaryFixed: Color(4281602304),
      tertiaryFixedDim: Color(4294948496),
      onTertiaryFixedVariant: Color(4285544213),
      surfaceDim: Color(4279178263),
      surfaceBright: Color(4281678397),
      surfaceContainerLowest: Color(4278849298),
      surfaceContainerLow: Color(4279770143),
      surfaceContainer: Color(4280033315),
      surfaceContainerHigh: Color(4280691502),
      surfaceContainerHighest: Color(4281414969),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4287878136),
      surfaceTint: Color(4287614707),
      onPrimary: Color(4278196517),
      primaryContainer: Color(4283996347),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4287748791),
      onSecondary: Color(4278197008),
      secondaryContainer: Color(4283932287),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294950042),
      onTertiary: Color(4281011456),
      tertiaryContainer: Color(4291329879),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279178263),
      onBackground: Color(4292862951),
      surface: Color(4279178263),
      onSurface: Color(4294507519),
      surfaceVariant: Color(4282468429),
      onSurfaceVariant: Color(4291153106),
      outline: Color(4288521386),
      outlineVariant: Color(4286416010),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292862951),
      inverseOnSurface: Color(4280691502),
      inversePrimary: Color(4278210154),
      primaryFixed: Color(4291029247),
      onPrimaryFixed: Color(4278194973),
      primaryFixedDim: Color(4287614707),
      onPrimaryFixedVariant: Color(4278205265),
      secondaryFixed: Color(4289262286),
      onSecondaryFixed: Color(4278195468),
      secondaryFixedDim: Color(4287485363),
      onSecondaryFixedVariant: Color(4278206251),
      tertiaryFixed: Color(4294958027),
      onTertiaryFixed: Color(4280486144),
      tertiaryFixedDim: Color(4294948496),
      onTertiaryFixedVariant: Color(4284163846),
      surfaceDim: Color(4279178263),
      surfaceBright: Color(4281678397),
      surfaceContainerLowest: Color(4278849298),
      surfaceContainerLow: Color(4279770143),
      surfaceContainer: Color(4280033315),
      surfaceContainerHigh: Color(4280691502),
      surfaceContainerHighest: Color(4281414969),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294507519),
      surfaceTint: Color(4287614707),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4287878136),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293853171),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4287748791),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966008),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294950042),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279178263),
      onBackground: Color(4292862951),
      surface: Color(4279178263),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282468429),
      onSurfaceVariant: Color(4294507519),
      outline: Color(4291153106),
      outlineVariant: Color(4291153106),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292862951),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4278201920),
      primaryFixed: Color(4291685375),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4287878136),
      onPrimaryFixedVariant: Color(4278196517),
      secondaryFixed: Color(4289525458),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4287748791),
      onSecondaryFixedVariant: Color(4278197008),
      tertiaryFixed: Color(4294959571),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294950042),
      onTertiaryFixedVariant: Color(4281011456),
      surfaceDim: Color(4279178263),
      surfaceBright: Color(4281678397),
      surfaceContainerLowest: Color(4278849298),
      surfaceContainerLow: Color(4279770143),
      surfaceContainer: Color(4280033315),
      surfaceContainerHigh: Color(4280691502),
      surfaceContainerHighest: Color(4281414969),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
