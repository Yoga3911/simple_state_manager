import 'package:flutter/material.dart';

extension GetYExtension<T> on T {
  ValueNotifier<T> get oby => ValueNotifier<T>(this);
}

class GetYBuilder extends StatefulWidget {
  final ValueNotifier notifier;
  final Widget Function() builder;
  const GetYBuilder(
    this.builder, {
    super.key,
    required this.notifier,
  });

  @override
  State<GetYBuilder> createState() => _GetYBuilderState();
}

class _GetYBuilderState extends State<GetYBuilder> {
  @override
  void initState() {
    super.initState();
    widget.notifier.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    widget.notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(_) => widget.builder();
}
