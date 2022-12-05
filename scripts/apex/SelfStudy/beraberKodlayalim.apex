string firstName = 'rabia';
string lastName = 'oz';

string cuntry = 'US';

string fullName = firstName + '  ' + lastName;
system.debug(fullName.toUpperCase());
system.debug(fullName.length());

if(fullName.length()> 5) {
    system.debug('Ismin uzunlugu 5 den buyuktur');
} else{
    system.debug('Ismin uzunlugu 5 den kucuktur');
}

for(integer i=0; i<=10; i++){
        string name = 'Salesforce';
        System.debug(name);// salesforce i 10 kere yazdirir
}
// 15 olunca dursun
for(integer i = 0; i<100; i++){
    system.debug(i);
    if(i == 15){
        break;
    }
}

decimal maas = 15000;
boolean bonus = false;
integer score = 5;

if(score> 4 ){
    bonus= true;
} else {
    bonus = false;
}

if(bonus == true) {
    maas*=1.2;
} else{
    maas*= 1.1;
} 
system.debug('before tax ' + salary);

//salary*= 0.95;
system.debug('after tax ' + salary);

if(country == 'US'){
    salary*=0.87;
} else {
    salary*=0.98
}

for(integer x=100; x>1; x-=10){
    System.debug('X in degeri '+x);
}
