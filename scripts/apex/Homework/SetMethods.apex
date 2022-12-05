// in an anonymous apex file, Create a set of strings named as uniqueNameSet with “Tom” and
// “Jerry” as the default values in it.
// 2. Print the size of the above created Set.
// 3. Add new elements in the uniqueNameSet.
// 4. Check if uniqueNameSet contains your name?
// 5. Check if the uniqueNameSet is Empty.
// 6. Clear the set and print it.
// 7. Now check if the set is empty or not. 
// 8. Is it possible to get an element from a set with the help of an index? If Yes, then please write the
// code for the same and If No, then why is it not possible
// 9. List down at the differences between set and list

Set<string> uniqueNameSet = new Set<string> {'Tom', 'Jerry'};
Set<string> uniqueNameSet2 = new Set<string> {'Tom', 'Jerry', 'mickey'};
System.debug(uniqueNameSet);

System.debug(uniqueNameSet.size()); 
uniqueNameSet.add('Mickey');
system.debug('Contains all' + uniqueNameSet2.containsAll(uniqueNameSet));
System.debug(uniqueNameSet);
System.debug(uniqueNameSet.isEmpty());
uniqueNameSet.clear();
// SET and List Difference
//set is an unordered list so there is no index that's why we cannot use
.get()
// no dublicate values
//no index of 
//we cannot use sort()
//containsAll() specific for Sets
//remove and removeAll()

