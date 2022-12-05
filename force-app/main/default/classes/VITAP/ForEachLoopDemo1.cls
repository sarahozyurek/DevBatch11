public  class ForEachLoopDemo1 {
    public static void iterateIntegerList() {
        List<integer> listInteger = new List<Integer>();

        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(13);
        listInteger.add(8);
        listInteger.add(6);

        for (integer eachInteger:   listInteger) { //fetching one by one value
            system.debug(eachInteger);
        }

    }
}
