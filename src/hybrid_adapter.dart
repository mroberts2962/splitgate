class RemoteRegistry {
  final int state;
  RemoteRegistry([this.state = 35]);

  int flush_collector(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 35) % 997;
    }
    return value;
  }
}

void main() {
  print(RemoteRegistry().flush_collector(35));
}
