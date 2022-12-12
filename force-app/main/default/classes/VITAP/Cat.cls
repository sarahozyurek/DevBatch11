public with sharing class Cat {
    public string name = ' ' ;
    public string color = ' '; 


    public Cat(string n, string clr) { //parametrized
        name = n;
        color = clr;
        sleeping();
    }

    public Cat(){
        system.debug('Constructor called automatically');
    }
    public void sleeping(){
        system.debug(name + ' is kinda sleeping');
    }

}

