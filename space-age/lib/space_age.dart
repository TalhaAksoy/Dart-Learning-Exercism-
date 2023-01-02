class SpaceAge{
  final int _worldSeconds = 31557600;
  final double _mercurySecond = 0.2408467;
  final double _venusSecond = 0.61519726;
  final double _marsSecond = 1.8808158;
  final double _jupiterSecond = 11.862615;
  final double _saturnSecond = 29.447498;
  final double _uranusSecond = 84.016846;
  final double _neptuneSecond = 164.79132;
  
  double pow(double x, int n) {
    double retval = 1;
    for (int i = 0; i < n; i++) {
      retval *= x;
    }

    return retval;
  }
  
  double roundDouble(double value, int places){ 
   double mod = pow(10.0, places); 
   return ((value * mod).round().toDouble() / mod); 
  }
  double age({String planet = "Earth", int seconds = 1}){
    double result = 0;
    if (planet == "Mercury"){
       result = roundDouble(seconds / (_worldSeconds *  _mercurySecond), 2); 
    }
    else if (planet == "Venus"){
      result = roundDouble(seconds / (_worldSeconds *  _venusSecond), 2); 
    }
    else if (planet == "Earth"){
      result = roundDouble(seconds / (_worldSeconds), 2);
    }
    else if (planet == "Mars"){
      result = roundDouble(seconds / (_worldSeconds *  _marsSecond), 2); 
    }
    else if (planet == "Jupiter"){
      result = roundDouble(seconds / (_worldSeconds *  _jupiterSecond), 2);
    }
    else if (planet == "Saturn"){
      result = roundDouble(seconds / (_worldSeconds *  _saturnSecond), 2);
    }
    else if (planet == "Uranus"){
      result = roundDouble(seconds / (_worldSeconds *  _uranusSecond), 2);
    }
    else if (planet == "Neptune"){
      result = roundDouble(seconds / (_worldSeconds *  _neptuneSecond), 2);
    }
    
    
    return result;
  }
}