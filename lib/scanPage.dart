import 'package:flutter/material.dart';
import 'mainNavBar.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Icon(Icons.qr_code_scanner)),
    );
  }
}
