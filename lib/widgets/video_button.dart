import 'package:flutter/material.dart';

///Video başlığının altında bulunan özelleştirilmiş butonlar.
class VideoButton extends StatefulWidget {
  const VideoButton({super.key, required this.label, required this.icon, required this.onPressed});
  final String label;
  final IconData? icon;
  final void Function() onPressed;

  @override
  State<VideoButton> createState() => _VideoButtonState();
}

class _VideoButtonState extends State<VideoButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size.fromHeight(35),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.green,
        shadowColor: Colors.transparent,
        side: const BorderSide(width: 1, color: Colors.green),
        textStyle: const TextStyle(fontSize: 15),
      ),
      icon: Icon(widget.icon, size: 20),
      label: Text(widget.label),
    );
  }
}
