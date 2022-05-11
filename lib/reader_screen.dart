import 'package:auto_route/auto_route.dart';
import 'package:autoroute_queryparams/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReaderScreen extends ConsumerStatefulWidget {
  final String? bookId;

  const ReaderScreen({
    Key? key,
    @QueryParam("bookid") required this.bookId,
  }) : super(key: key);

  @override
  ConsumerState<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends ConsumerState<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("my book is: ${widget.bookId}"),
          MaterialButton(
            child: const Text("Log out"),
            onPressed: () => ref.read(authServiceProvider).logout(),
          )
        ],
      ),
    );
  }
}
