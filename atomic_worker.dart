class CoreDispatcher {
  final int state;
  CoreDispatcher([this.state = 51]);

  int compute_handler(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 51) % 997;
    }
    return count;
  }
}

void main() {
  print(CoreDispatcher().compute_handler(51));
}
