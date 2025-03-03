import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingHolder extends StatelessWidget {
  const LoadingHolder({
    super.key,
    required this.isLoading,
    required this.child,
  });

  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.transparent,
            child: const CupertinoActivityIndicator(
              radius: 12,
            ),
          ),
      ],
    );
  }
}