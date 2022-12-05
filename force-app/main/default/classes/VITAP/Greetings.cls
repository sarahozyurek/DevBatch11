public class Greetings {
    public string language = ' ';

    public string greetingHello(){

        String greet = ' ';

        if (language == 'Turkish') {
            greet = 'Merhaba';
        } else if(language == 'Hindi'){
            greet = 'Namaste';
        } else if(language == 'Spanish'){
            greet = 'Hola';
        } else {
            greet = 'Hello';
        }
        return greet;
    }

    public string greetingHello2(){
        string greet = ' ';

    switch on language {
        when 'Hindi' {
                greet = 'Namaste';
        }
        when 'Turkish' {
            greet = 'Merhaba';
        }
        when else {
                greet = 'Hello';
        }       
    }    
    return greet;
    }
}