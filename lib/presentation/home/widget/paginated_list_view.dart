import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myrecipeapp/config/theme/color.dart';

class PaginatedList extends StatefulWidget {
  final bool hasMore;
  final bool hasError;
  final int itemCount;
  final Widget? footerWidget;
  final Widget? loadingWidget;
  final AsyncCallback onLoadMore;
  final IndexedWidgetBuilder itemBuilder;

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
        if (sn is ScrollEndNotification) {
          if (sn.metrics.pixels >= sn.metrics.maxScrollExtent) {
            if (widget.hasMore && !isLoading) {
              isLoading = true;
              widget.onLoadMore().whenComplete(() => isLoading = false);
            }
          }
        }
        return true;
      },
      child: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView.separated(
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
          //Error Widget
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: widget.footerWidget,
          );
        }
        return widget.itemBuilder(context, index);
      },
    );
  }
}
