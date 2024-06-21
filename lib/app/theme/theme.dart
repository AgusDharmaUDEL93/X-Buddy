import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff1c6585),
      surfaceTint: Color(0xff1c6585),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc3e8ff),
      onPrimaryContainer: Color(0xff001e2c),
      secondary: Color(0xff1f6a4e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa8f2ce),
      onSecondaryContainer: Color(0xff002115),
      tertiary: Color(0xff8d4e2a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdbcb),
      onTertiaryContainer: Color(0xff341100),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff6fafe),
      onBackground: Color(0xff181c1f),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff181c1f),
      surfaceVariant: Color(0xffdce3e9),
      onSurfaceVariant: Color(0xff41484d),
      outline: Color(0xff71787d),
      outlineVariant: Color(0xffc0c7cd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inverseOnSurface: Color(0xffedf1f5),
      inversePrimary: Color(0xff8fcef3),
      primaryFixed: Color(0xffc3e8ff),
      onPrimaryFixed: Color(0xff001e2c),
      primaryFixedDim: Color(0xff8fcef3),
      onPrimaryFixedVariant: Color(0xff004c69),
      secondaryFixed: Color(0xffa8f2ce),
      onSecondaryFixed: Color(0xff002115),
      secondaryFixedDim: Color(0xff8dd5b3),
      onSecondaryFixedVariant: Color(0xff005139),
      tertiaryFixed: Color(0xffffdbcb),
      onTertiaryFixed: Color(0xff341100),
      tertiaryFixedDim: Color(0xffffb690),
      onTertiaryFixedVariant: Color(0xff703715),
      surfaceDim: Color(0xffd6dadf),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffeaeef2),
      surfaceContainerHigh: Color(0xffe5e9ed),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004863),
      surfaceTint: Color(0xff1c6585),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff397c9d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff004d35),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff398164),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff6b3312),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa7633e),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fafe),
      onBackground: Color(0xff181c1f),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff181c1f),
      surfaceVariant: Color(0xffdce3e9),
      onSurfaceVariant: Color(0xff3d4449),
      outline: Color(0xff596065),
      outlineVariant: Color(0xff747c81),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inverseOnSurface: Color(0xffedf1f5),
      inversePrimary: Color(0xff8fcef3),
      primaryFixed: Color(0xff397c9d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff186383),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff398164),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1c684c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa7633e),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff8a4c28),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dadf),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffeaeef2),
      surfaceContainerHigh: Color(0xffe5e9ed),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002535),
      surfaceTint: Color(0xff1c6585),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004863),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00281a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff004d35),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3e1600),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6b3312),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff6fafe),
      onBackground: Color(0xff181c1f),
      surface: Color(0xfff6fafe),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdce3e9),
      onSurfaceVariant: Color(0xff1e2529),
      outline: Color(0xff3d4449),
      outlineVariant: Color(0xff3d4449),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3134),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffd9efff),
      primaryFixed: Color(0xff004863),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003144),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff004d35),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003423),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6b3312),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4f1e00),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dadf),
      surfaceBright: Color(0xfff6fafe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f4f8),
      surfaceContainer: Color(0xffeaeef2),
      surfaceContainerHigh: Color(0xffe5e9ed),
      surfaceContainerHighest: Color(0xffdfe3e7),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff8fcef3),
      surfaceTint: Color(0xff8fcef3),
      onPrimary: Color(0xff003549),
      primaryContainer: Color(0xff004c69),
      onPrimaryContainer: Color(0xffc3e8ff),
      secondary: Color(0xff8dd5b3),
      onSecondary: Color(0xff003826),
      secondaryContainer: Color(0xff005139),
      onSecondaryContainer: Color(0xffa8f2ce),
      tertiary: Color(0xffffb690),
      onTertiary: Color(0xff542202),
      tertiaryContainer: Color(0xff703715),
      onTertiaryContainer: Color(0xffffdbcb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0f1417),
      onBackground: Color(0xffdfe3e7),
      surface: Color(0xff0f1417),
      onSurface: Color(0xffdfe3e7),
      surfaceVariant: Color(0xff41484d),
      onSurfaceVariant: Color(0xffc0c7cd),
      outline: Color(0xff8a9297),
      outlineVariant: Color(0xff41484d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inverseOnSurface: Color(0xff2c3134),
      inversePrimary: Color(0xff1c6585),
      primaryFixed: Color(0xffc3e8ff),
      onPrimaryFixed: Color(0xff001e2c),
      primaryFixedDim: Color(0xff8fcef3),
      onPrimaryFixedVariant: Color(0xff004c69),
      secondaryFixed: Color(0xffa8f2ce),
      onSecondaryFixed: Color(0xff002115),
      secondaryFixedDim: Color(0xff8dd5b3),
      onSecondaryFixedVariant: Color(0xff005139),
      tertiaryFixed: Color(0xffffdbcb),
      onTertiaryFixed: Color(0xff341100),
      tertiaryFixedDim: Color(0xffffb690),
      onTertiaryFixedVariant: Color(0xff703715),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff181c1f),
      surfaceContainer: Color(0xff1c2023),
      surfaceContainerHigh: Color(0xff262b2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff93d3f8),
      surfaceTint: Color(0xff8fcef3),
      onPrimary: Color(0xff001925),
      primaryContainer: Color(0xff5898bb),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff91dab7),
      onSecondary: Color(0xff001b10),
      secondaryContainer: Color(0xff579e7f),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffbc9a),
      onTertiary: Color(0xff2b0d00),
      tertiaryContainer: Color(0xffc87f57),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0f1417),
      onBackground: Color(0xffdfe3e7),
      surface: Color(0xff0f1417),
      onSurface: Color(0xfff8fbff),
      surfaceVariant: Color(0xff41484d),
      onSurfaceVariant: Color(0xffc5ccd2),
      outline: Color(0xff9da4aa),
      outlineVariant: Color(0xff7d848a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inverseOnSurface: Color(0xff262b2e),
      inversePrimary: Color(0xff004e6a),
      primaryFixed: Color(0xffc3e8ff),
      onPrimaryFixed: Color(0xff00131d),
      primaryFixedDim: Color(0xff8fcef3),
      onPrimaryFixedVariant: Color(0xff003b51),
      secondaryFixed: Color(0xffa8f2ce),
      onSecondaryFixed: Color(0xff00150c),
      secondaryFixedDim: Color(0xff8dd5b3),
      onSecondaryFixedVariant: Color(0xff003f2b),
      tertiaryFixed: Color(0xffffdbcb),
      onTertiaryFixed: Color(0xff230900),
      tertiaryFixedDim: Color(0xffffb690),
      onTertiaryFixedVariant: Color(0xff5b2706),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff181c1f),
      surfaceContainer: Color(0xff1c2023),
      surfaceContainerHigh: Color(0xff262b2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff8fbff),
      surfaceTint: Color(0xff8fcef3),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff93d3f8),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeefff3),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff91dab7),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf8),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffbc9a),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0f1417),
      onBackground: Color(0xffdfe3e7),
      surface: Color(0xff0f1417),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff41484d),
      onSurfaceVariant: Color(0xfff8fbff),
      outline: Color(0xffc5ccd2),
      outlineVariant: Color(0xffc5ccd2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe3e7),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002e40),
      primaryFixed: Color(0xffcdebff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff93d3f8),
      onPrimaryFixedVariant: Color(0xff001925),
      secondaryFixed: Color(0xffacf6d2),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff91dab7),
      onSecondaryFixedVariant: Color(0xff001b10),
      tertiaryFixed: Color(0xffffe1d3),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffbc9a),
      onTertiaryFixedVariant: Color(0xff2b0d00),
      surfaceDim: Color(0xff0f1417),
      surfaceBright: Color(0xff353a3d),
      surfaceContainerLowest: Color(0xff0a0f12),
      surfaceContainerLow: Color(0xff181c1f),
      surfaceContainer: Color(0xff1c2023),
      surfaceContainerHigh: Color(0xff262b2e),
      surfaceContainerHighest: Color(0xff313539),
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
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
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
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
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
