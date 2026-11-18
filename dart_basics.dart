// Student: Helen Bokeng Mokonde Mateh
// Reg no: 26288

const String regNo = '26288';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void main() {
  print('Reg no: $regNo | D = $d | T = $t');
}