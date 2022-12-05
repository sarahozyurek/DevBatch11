SampleClass.sampleStaticString = 'bu bir static degisken';
System.debug(SampleClass.sampleStaticString);

//non static sadece obj ile cagirirz
SampleClass s = new SampleClass();
s.sampleString = 'bu bir nonstatic';
System.debug(s.sampleString );



SampleClass.sampleStaticMethod(); // static method 

SampleClass  s2 = new SampleClass();// non static method
s2.sampleMethod(); 

