import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shatapp/utils/loader/loading_widget.dart';

extension AsyncValueExtension<T> on AsyncValue<T> {
  Widget loadUntil({
    required Widget Function(T value) data,
    bool applySliver = false,
  }) =>
      when(
        data: data,
        error: (_, __) => applySliver
            ? const SliverToBoxAdapter(
                child: Text('Error'),
              )
            : const Text('Error'),
        loading: () => applySliver
            ? const SliverFillRemaining(
                child: Center(child: LoadingWidget()),
              )
            : const Center(child: LoadingWidget()),
      );

  Widget emptyUntil({
    required Widget Function(T value) data,
    bool applySliver = false,
  }) =>
      when(
        data: data,
        error: (_, __) => applySliver
            ? const SliverToBoxAdapter(
                child: Text('Error'),
              )
            : const Text('Error'),
        loading: () => applySliver
            ? const SliverFillRemaining(
                child: SizedBox.shrink(),
              )
            : const SizedBox.shrink(),
      );
}
