import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class CriminalPage extends StatefulWidget {
  const CriminalPage({super.key});

  @override
  State<CriminalPage> createState() => _CriminalPageState();
}

class _CriminalPageState extends State<CriminalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('criminal page'),),
    );
  }
}
