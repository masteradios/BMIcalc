class BMI
{
  BMI(this.weight,this.height);
  int height;
  int weight;
  double _result;
  String calculator()
  {
    _result=weight/((height/100)*(height/100));
    return _result.toStringAsFixed(2);
  }
  String opinion()
  {
    if(_result<16)
    {
      return 'underweight';
    }
    else if(_result>25)
    {
      return 'overweight';
    }
    else if(_result>16&&_result<25){return 'normal';
    }
  }
  String advice()
  {
    if(_result<16)
    {
      return 'You are Underweight.Eat healthy food';
    }
    else if(_result>25)
    {
      return 'You are overweight.Exercise more';
    }
    else if(_result>16&&_result<25){return 'Well done.Your have a normal BMI.Maintain your health';
    }


  }

}