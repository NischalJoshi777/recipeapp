import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/color.dart';

class PaginatedList extends StatefulWidget {
  final AsyncCallback onLoadMore;
  final IndexedWidgetBuilder itemBuilder;
  final bool hasMore;
  final bool hasError;
  final int itemCount;
  final Widget? footerWidget;
  final Widget? loadingWidget;

  const PaginatedList({
    super.key,
    required this.onLoadMore,
    required this.hasMore,
    required this.hasError,
    required this.itemBuilder,
    required this.itemCount,
    this.footerWidget,
    this.loadingWidget,
  });

  @override
  PaginatedListState createState() => PaginatedListState();
}

class PaginatedListState extends State<PaginatedList> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (sn) {
        if (sn.metrics.pixels >= sn.metrics.maxScrollExtent) {
          if (widget.hasMore && !isLoading) {
            isLoading = true;
            widget.onLoadMore().whenComplete(() => isLoading = false);
          }
        }
        return true;
      },
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 12.0),
        scrollDirection: Axis.horizontal,
        itemCount: widget.itemCount + 1,
        itemBuilder: (context, index) {
          if (index == widget.itemCount) {
            if (widget.hasMore && !widget.hasError && isLoading) {
              return widget.loadingWidget ??
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(
                        color: Palette.primaryGreen,
                      ),
                    ),
                  );
            }
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: widget.footerWidget ??
                  const Center(
                    child: Text('Error'),
                  ),
            );
          }
          return widget.itemBuilder(context, index);
        },
      ),
    );
  }
}
