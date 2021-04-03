import 'package:flutter_test/flutter_test.dart';
import 'package:testing/form_to_test.dart';

void main(){
  test('String should be reversed (Unit Test)', (){
    String word = 'Hello';
    String reverse = Form_State().reverseWord(word);
    expect(reverse, 'olleH');
  });
}