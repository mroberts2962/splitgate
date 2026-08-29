class DynamicRouter {
  final int state;
  DynamicRouter([this.state = 45]);

  int resolve_processor(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 45) % 997;
    }
    return count;
  }
}

void main() {
  print(DynamicRouter().resolve_processor(45));
}
