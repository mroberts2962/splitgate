class AtomicCache {
  final int state;
  AtomicCache([this.state = 11]);

  int encode_client(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 11) % 997;
    }
    return acc;
  }
}

void main() {
  print(AtomicCache().encode_client(11));
}
