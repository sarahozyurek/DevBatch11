public   class RankHandler {
    public string  rankPrice(integer rank) {
        string price =' ';
        if(rank ==1 ){
            price = 'gold';

        } else if(rank ==2) {
            price = 'silver';
            
        } else if(rank ==3){
            price = 'Bronze';
        } else {
            if (rank<= 10) {
                price = 'Top 10 certificates';  
            } else {
                price = 'Participation certificate';
            }
        }
        return price;
    }
    public string rankPrice2 (integer rank){
        string price = ' ';

    switch on rank {
            when 1 {
                price = 'Gold';
            }
            when 2 {
                price = 'Silver';
            }

            when 3 {
                price = 'Bronze';
            }

            when 4,5,6,7,8,9,10 {
                price = 'Top 10';
            }
            when else {
                price = 'thank you for your participation';
            }
    }
    return price;

}
}