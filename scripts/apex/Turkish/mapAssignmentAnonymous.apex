Map<string, List<Double>> cityOfHot = new Map<string, List<Double>>();
        List<Double> istanbulOfHot = new List<Double>{11.5, 17.4, 21.3, 15.5, 8.7, 22.2, 23.3};
        cityOfHot.put('istanbul', istanbulOfHot);

        List<Double> newYorkOfHot = new List<Double>{1.5, 7.4, 11.3, 10.5, 8.2, 2.2, 3.3};
        cityOfHot.put('newYork', newYorkOfHot);

        List<Double> torontoOfHot = new List<Double>{-1.5, -7.2, -11.3, -5.5, -3.7, -2.2, -3.3};
        cityOfHot.put('toronto', torontoOfHot);

        List<Double> nairobiOfHot = new List<Double>{21.5, 37.4, 31.3, 25.5, 28.7, 22.2, 33.3};
        cityOfHot.put('nairobi', nairobiOfHot);

        List<Double> amsterdamOfHot = new List<Double>{7.5, 6.4, 1.3, 15.5, 8.7, 2.2, 2.3};
        cityOfHot.put('amsterdam', amsterdamOfHot);
        
        //MapAssignment.degreeOfCities(cityOfHot);
        MapAssignment.averageDegreeOfCities(cityOfHot);