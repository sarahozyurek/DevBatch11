Map<String, Decimal> currISOCodeAndExchangeRateMap = new Map<String, Decimal>{ 'AUD' => 0.73, 'CAD' => 0.78, 'EUR'=> 1.13, 'NZD'=> 0.68, 'INR' => 0.013};

System.debug(currISOCodeAndExchangeRateMap.get('EUR'));
System.debug(currISOCodeAndExchangeRateMap.containsKey('SAD'));

Set<string> iSO = currISOCodeAndExchangeRateMap.keySet();

Set<decimal> exh = currISOCodeAndExchangeRateMap.values();

for(string eachiso : ISO){
    if(currISOCodeAndExchangeRateMap.get(eachiso) > 1){
                ISO.add(eachiso);
    } else {
            exh.add(eachiso);
    }
System.debug(greaterIso);
System.debug(lessIso);
}
