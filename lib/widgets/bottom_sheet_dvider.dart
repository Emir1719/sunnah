import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomSheetDivider extends ConsumerWidget {
  const BottomSheetDivider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 45,
      margin: const EdgeInsets.only(top: 15, bottom: 0),
      child: Container(
        height: 4, // Çizgi kalınlığını ayarlayın
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), // Köşeleri yuvarlatın
          color: Colors.grey[400], // Çizgi rengini ayarlayın
        ),
      ),
    );
  }
}
