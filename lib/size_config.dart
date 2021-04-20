import 'package:flutter/cupertino.dart';

class SizeConfig {
static double _screenWidth;
static double _screenheight;
static double _blockSizeHorizontal = 0;
static double _blockSizeVertical = 0;

static double w;
static double h;

static double w2;
static double h2;
// static double textMultiplier;
// static double imageSizeMultiplier;
// static double heightMultiplier;

void init (BoxConstraints constraints, Orientation orientation) {

if(orientation == Orientation.portrait){
_screenWidth = constraints.maxWidth;
_screenheight = constraints.maxHeight;

} else {

_screenWidth = constraints.maxHeight;
_screenheight = constraints.maxWidth;


}

_blockSizeHorizontal = _screenWidth / 100;
_blockSizeVertical = _screenheight / 100;

h = _blockSizeVertical; 
w = _blockSizeHorizontal;

w2 = _blockSizeHorizontal * 0.486145;
h2 = _blockSizeVertical * 0.2926545;

// textMultiplier = _blockSizeVertical;
// imageSizeMultiplier = _blockSizeHorizontal;
// heightMultiplier = _blockSizeVertical;



print("vertical: $_blockSizeVertical");
print("horizontal: $_blockSizeHorizontal");

print("w2: $w2");
print("h2: $h2");

}

}