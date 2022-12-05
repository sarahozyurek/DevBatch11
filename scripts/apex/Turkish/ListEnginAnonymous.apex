List<string> colors = new List<String>{'red', 'blue', 'green'}; 
System.debug('Colors: '+ colors);

colors.add('gray');
System.debug('Colors: '+ colors);

colors.add('red');
System.debug('Colors: '+ colors);

System.debug('Size of the list:  '+ colors.size()); //5
System.debug('1.element=> ' + colors.get(0));
System.debug('The index of the green= >  '+ colors.indexOf('green'));
System.debug('The index of the red= >  '+ colors.indexOf('red'));

colors.clear();
System.debug('Size of the list:  '+ colors.size()); //empty list

colors.add('purple');
colors.add('pink');
colors.add('lilac');
System.debug('Colors: '+ colors);// added new elements

colors.set(1, 'moroon');
System.debug('Colors: '+ colors);
colors.remove(1);
System.debug('Colors: '+ colors); System.debug('Size of the list:  '+ colors.size());

system.debug('Pink contains?  ' + colors.contains('pink'));

if(colors.contains('white')){
    System.debug('White is in the list');
} else{
    system.debug('White is NOT in the list');
}

for(string color : colors){
    System.debug(colors.indexOf(color) + ' color:  ' + color);
}








