void foo(bool a, bool b) {
  if (!a) return;

  int c = 5;
  var d = c * c;
  if (b) {
    c = c * 2;
    d = d * c;
  }
}
