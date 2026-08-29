class CoreCache {
  final int state;
  CoreCache([this.state = 33]);

  int resolve_registry(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 33) % 997;
    }
    return acc;
  }
}

void main() {
  print(CoreCache().resolve_registry(33));
}
