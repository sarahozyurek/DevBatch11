public   class Hesaplama {
    public integer toplama(integer a, integer b) {
       // return a+b; 
        integer sum = a+b;
        return sum;
    }

    public decimal ortalama(integer x, integer y) {
        decimal ort = toplama(x, y) / 2;
        return ort;
    }
}
