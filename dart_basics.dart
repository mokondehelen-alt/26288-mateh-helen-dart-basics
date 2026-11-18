// Student: Helen Bokeng Mokonde Mateh
// Reg no: 26288

const String regNo = '26288';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

void main() {
  print('Reg no: $regNo | D = $d | T = $t');
  
  print('--- PART A1 ---');
  int a = 17;
  int b = 5;
  print(a / b);
  print(a ~/ b);
  print(a % b);
  print(-a % b);
  print(-a ~/ b);
  print(-17.abs());
  print(0.1 + 0.2 == 0.3);
  print(10 == 10.0);

    print('\n--- PART A2 ---');
  int x = d; // This uses your D (8)
  int y = t; // This uses your T (88)
  var z = x * 2 + y ~/ 4;
  z += x;
  print(z);
  print(z.isEven);
  print('$z' + '$x');

  print('\n--- PART B1 ---');
  String city = 'Kigali';
  print(city.length);
  print(city[city.length - 1]);
  print(city.substring(2, 4));
  print(city.toUpperCase().indexOf('A'));
  print(city.contains('k'));
  print('$city.length');
  print('${city.length}');
  print(city * 2);
  city.toUpperCase();
  print(city);
  print(city.replaceAll('i', '!'));
  print('5' + 5.toString());
  print(int.parse('5') + 5);

print('\n--- PART B2 ---');
  String myName = 'Helen Bokeng Mokonde Mateh';
  print('$myName has ${countVowels(myName)} vowels');

print('\n--- PART B3 ---');
  print(initials(myName)); 
  print(initials('ana uwase')); 
  print(initials(''));

  print('\n--- PART C1 ---');
  for (int i = 0; i < 6; i++) {
    if (i == 2) continue;
    if (i == 4) break;
    print(i);
  }

  print('\n--- PART C2 ---');
  int day = 2;
  switch (day) {
    case 1:
    case 2:
      print('Early week');
    case 3:
      print('Midweek');
    default:
      print('Weekend soon');
  }

  print('\n--- PART C3 ---');
  int? bonus;
  print(bonus ?? 50);
  bonus ??= 70;
  bonus ??= 90;
  print(bonus);

  int n = 10;
  do {
    print(n);
    n += 3;
  } while (n < 10);

  print('\n--- PART C4 ---');
  int c4x = d; // Changed to c4x so it doesn't clash with Part A2
  String result = '';
  while (c4x > 0) {
    if (c4x % 2 == 0) {
      result += 'E';
    } else {
      result += 'O';
    }
    c4x -= 3;
  }
  print(result);
  print(result.length);
  print(result.isEmpty ? 'nothing' : result[0]);

 print('\n--- PART C5 ---');
  drawTriangle(d + 3);
  drawTriangle(0);
  drawTriangle(-2); 
}

int countVowels(String text) {
  int count = 0;
  int i = 0;
  String lowerText = text.toLowerCase(); 
  
  while (i < lowerText.length) {
    String char = lowerText[i];
    if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
      count++;
    }
    i++;
  }
  return count;
}

String initials(String fullName) {
  String trimmed = fullName.trim();
  if (trimmed.isEmpty) return '';
  
  List<String> words = trimmed.split(RegExp(r'\s+')); 
  String result = '';
  
  int i = 0;
  while (i < words.length) {
    result += words[i][0].toUpperCase() + '.';
    i++;
  }
  return result;


}

void drawTriangle(int height) {
  int row = 1;
  while (row <= height) {
    String pad = ' ' * (height - row);
    String ch = (row % 2 == 1) ? '*' : '#';
    print(pad + ch * (2 * row - 1));
    row++;
  }
}
