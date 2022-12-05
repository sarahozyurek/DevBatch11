public class Car {

public string carColor = ' ';
public string carName = ' '; // not to get null or keep it carName 

 integer maxSpeed = 150;

    public void switchOn(){
        system.debug('Starting the car');
        datetime switchOntime = Datetime.now();
  }

  public void drive(){
    system.debug('Driving  ' + carName + ' of color ' + carColor);
}

public void driveAtMaxSpeed(){
string drivingDescription = 'Driving  ' + carName + ' at  ' + maxSpeed + 'km / hr ';
  system.debug(drivingDescription);
}
}

