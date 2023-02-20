public with sharing class SoapApiOutboundCallout {

    public static Double makeMultiplication(){
        CalculatorSOAPApex.CalculatorImplPort calc = new CalculatorSOAPApex.CalculatorImplPort();
        Double num1 = 8.0;
        Double num2 = 2.0;
        Double result = calc.doMultiply(num1, num2);
        System.debug('Calculator Request Parameters for Multiply Feature is : '+ num1 + ' * ' + num2);
        System.debug('Calculator Response for Multiply Feature is : '+ result);
        return result;
    }
    //SOAP API callout to 
    public static List<String> makeParkCallout(){
        ParkSOAPApex.ParksImplPort park = new  ParkSOAPApex.ParksImplPort();
        String inputCountry = 'India';
        List<String> parkNames = park.byCountry(inputCountry);
        System.debug('Park SOAP API Response for Country-wise Feature is  : ' + parkNames);
        return parkNames;
    }
}