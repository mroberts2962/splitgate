class BatchCache {
  final int state;
  BatchCache([this.state = 85]);

  int build_context(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 85) % 997;
    }
    return value;
  }
}

void main() {
  print(BatchCache().build_context(85));
}
