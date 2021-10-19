void Google() {
  print('OS: ANDROID');
}

void Apple() {
  print('OS: IOS');
}
/*
void Store(int appId) {
  print('Store appID = ' + appId.toString());
}

void Maps(double lat, double lon) {
  print('Maps.lat = ' + lat.toString() + 'Maps.lon = ' + lon.toString());
}

void Pay(String cardNumber, String pin) {
  print('cardNumber = ' + cardNumber + 'pin = ' + pin);
}
*/

void GooglePlay(int appId) { print('Google appID: ' + appId.toString()); }
void GoogleMaps(double lat, double lon) {
  print('GoogleMaps: lat = ' + lat.toString() + ', lon = ' + lon.toString());
}
void GooglePay(String cardNumber, String pin) {
  print('Google cardnumber: ' + cardNumber + ', pin: ' + pin);
}

void AppleAppStore(int appId) {print('Apple appID: ' + appId.toString());}
void AppleMaps(double lat, double lon) {
  print('AppleMaps: lat = ' + lat.toString() + ', lon = ' + lon.toString());
}
void ApplePay(String cardNumber, String pin) {
  print('Apple cardnumber: ' + cardNumber + ', pin: ' + pin);
}

void main() {
  String OS = 'android';
  Function Platform;
  Function Store;
  Function Maps;
  Function Pay;
  if (OS == 'android') {
    Platform = Google;
    Store = GooglePlay;
    Maps = GoogleMaps;
    Pay = GooglePay;
  }
  else {
    Platform = Apple;
    Store = AppleAppStore;
    Maps = AppleMaps;
    Pay = ApplePay;
  }
  Platform();
  Store(1);
  Maps(100.11, 500.5);
  Pay('7700 4563 2738 1526','0000');
}