import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
   static TextStyle styleSemiBold28(context) {
    return const TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
    );
  }
   static TextStyle styleSemiBold26(context) {
    return const TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleBold24(context) {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle styleSemiBold24(context) {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleBold20(context) {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleBold18(context) {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium18(context) {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleBold16(context) {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleMedium16(context) {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }
 static TextStyle styleRegular16(context) {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleMedium14(context) {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Color(0xff7C7C7C),
    );
  }
   static TextStyle styleSemiBold14(context) {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold12(context) {
    return const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleHKRegular14(context) {
    return  GoogleFonts.hankenGrotesk(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: const Color(0xff344356),
    );
  }

  static TextStyle styleHKBold14(context) {
    return GoogleFonts.hankenGrotesk(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: const Color(0xff5468FF),
    );
  }

  static TextStyle styleMMedium14(context) {
    return GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ); 
  }
}
