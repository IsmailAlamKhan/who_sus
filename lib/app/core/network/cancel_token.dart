abstract class CancelNetworkRequestToken {
  bool get isCancelled;

  /// Cancel the request with the given [reason].
  void cancel([Object? reason]);
}
