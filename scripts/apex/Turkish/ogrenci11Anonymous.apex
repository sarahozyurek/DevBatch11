Ogrenci11 student1 = new Ogrenci11();
student1.firstName = 'Marry';
student1.lastName = 'Doe';
student1.className = '6E';
student1.language = 'English';
student1.art = True;
student1.sport = False;
student1.ingGrade = 95;
student1.mathGrade = 92;
student1.fenGrade = 90;
System.debug(student1);

Ogrenci11 student2 = new Ogrenci11();
student2.firstName = 'John';
student2.lastName = 'Doe';
student2.className = '7E';
student2.language = 'Spanish';
student2.art = False;
student2.sport = True;
student2.ingGrade = 90;
student2.mathGrade = 82;
student2.fenGrade = 90;
System.debug(student2);

//class adi ile liste olustur
System.debug('======Class listesi basliyor=====');

List <Ogrenci11> studentsList = new List<Ogrenci11>();
studentsList.add(student1);
studentsList.add(student2);

System.debug('for each dongusu');
for(Ogrenci11 eleman: studentsList){
    System.debug(eleman.firstName);
    System.debug(eleman.lastName);
}


Ogrenci11 s1 = new Ogrenci11('Lisa', 'Jon', 87);
System.debug('s1 =  '+ s1);

Ogrenci11 s2 = new Ogrenci11('Rabia', 'Oz', 100);
System.debug('s2 =  '+ s2);
