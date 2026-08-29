class RemoteMonitor {
  final int state;
  RemoteMonitor([this.state = 24]);

  int flush_controller(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 24) % 997;
    }
    return acc;
  }
}

void main() {
  print(RemoteMonitor().flush_controller(24));
}
