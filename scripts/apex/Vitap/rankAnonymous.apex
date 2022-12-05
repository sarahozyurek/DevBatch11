RankHandler rk = new RankHandler();
string price1 = rk.rankPrice(1);
system.debug('Price is   '+ price1);

string price2 = rk.rankPrice(2);
system.debug('Price is   '+ price2);

string price3 = rk.rankPrice(5);
system.debug('Price is   '+ price3);

string price4 = rk.rankPrice(15);
system.debug('Price is   '+ price4);


RankHandler rk2= new RankHandler();
string s1 = rk2.rankPrice2(1);
system.debug('Prize is   '+ s1);

string s2= rk2.rankPrice2(2);
system.debug('Prize is   '+ s2);

string s3 = rk2.rankPrice2(3);
system.debug('Prize is   '+ s3);