// Student: Helen Bokeng Mokonde Mateh
// Reg no: 26288

const String regNo = '26288';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

int momoFee(int amount) {
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}


String formatRwf(int amount) {
  bool neg = amount < 0;
  int absAmt = amount.abs();
  String s = absAmt.toString();
  String out = '';
  int count = 0;
  int i = s.length - 1;
  while (i >= 0) {
    out = s[i] + out;
    count++;
    if (count % 3 == 0 && i != 0) out = ',' + out;
    i--;
  }
  return (neg ? '-' : '') + out + ' RWF';
}


bool isValidPin(String pin) {
  if (pin.length != 5) return false;
  int i = 0;
  while (i < pin.length) {
    int c = pin.codeUnitAt(i);
    if (c < 48 || c > 57) return false;
    i++;
  }
  if (pin == '12345') return false;
  bool allSame = true;
  i = 1;
  while (i < pin.length) {
    if (pin[i] != pin[0]) { allSame = false; break; }
    i++;
  }
  return !allSame;
}


int sendMoney(int balance, int amount) {
  int fee = momoFee(amount);
  if (fee == -1) {
    print('Failed: invalid amount');
    return balance;
  }
  if (amount + fee > balance) {
    print('Failed: insufficient balance');
    return balance;
  }
  int newBal = balance - amount - fee;
  print('Sent ${formatRwf(amount)} (fee ${formatRwf(fee)}). New balance: ${formatRwf(newBal)}');
  return newBal;
}


int buyAirtime(int balance, int amount) {
  if (amount < 100 || amount > 50000) {
    print('Failed: invalid amount');
    return balance;
  }
  if (amount > balance) {
    print('Failed: insufficient balance');
    return balance;
  }
  int newBal = balance - amount;
  print('Bought ${formatRwf(amount)} airtime. New balance: ${formatRwf(newBal)}');
  return newBal;
}

void main() {
  print('Reg no: $regNo | D = $d | T = $t');

  print(isValidPin('12345'));   
  print(isValidPin('77777'));   
  print(isValidPin('4821'));    
  print(isValidPin('48a21'));   
  print(isValidPin('48218'));   

  int balance = 20000 + t * 500; // 64,000
  print(formatRwf(balance));

  int i = 1;
  while (i <= 3) {
    balance = sendMoney(balance, (d + 1) * 3000); 
    i++;
  }
  balance = buyAirtime(balance, 1000);
  balance = sendMoney(balance, 0);
  balance = sendMoney(balance, 200000);
  print('Final balance: ${formatRwf(balance)}');
  
  
  print(formatRwf(0));        
  print(formatRwf(999));      
  print(formatRwf(1000));     
  print(formatRwf(1250000));  
  print(formatRwf(-5000));    
}