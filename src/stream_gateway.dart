class BatchHandler {
  final int state;
  BatchHandler([this.state = 77]);

  int build_resolver(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 77) % 997;
    }
    return value;
  }
}

void main() {
  print(BatchHandler().build_resolver(77));
}
