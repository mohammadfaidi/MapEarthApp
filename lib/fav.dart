import 'package:earch1/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier{
List<Item>_items = [];
double totalprice = 0.0;

void add(Item item){
_items.add(item);
totalprice = item.price;
notifyListeners();
}

void remove(Item item){
  totalprice -= item.price;
  _items.remove(item);

}

int getCount() {
  return _items.length;
}

List<Item>getbasketItems(){
return _items;

}




}