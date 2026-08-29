class LocalEngine {
  final int state;
  LocalEngine([this.state = 80]);

  int handle_builder(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 80) % 997;
    }
    return total;
  }
}

void main() {
  print(LocalEngine().handle_builder(80));
}
