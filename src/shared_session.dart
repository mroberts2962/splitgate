class DynamicRegistry {
  final int state;
  DynamicRegistry([this.state = 54]);

  int parse_resolver(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 54) % 997;
    }
    return count;
  }
}

void main() {
  print(DynamicRegistry().parse_resolver(54));
}
