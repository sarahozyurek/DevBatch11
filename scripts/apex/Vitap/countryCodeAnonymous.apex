Map<String,country_code__c> allCountryCodes = country_code__c.getall();
system.debug('all country codes =>' + allCountryCodes);
for (string  eachcountry : allCountryCodes.keyset()) {
    system.debug('Country is: ' + eachCountry + '  its code is:   '+ allCountryCodes.get(eachcountry).code__C);
    
}