// List & Map  (Data Structures)
// ===============================
// Data Structure = a way to store and organize multiple values



// Operations on any data structure:
//             Traversing, Insertion, Deletion, Updation, Sorting, Searching, Concatenation






void main() {
  listExamples();
  mapExamples();
}






// LIST
// =====

// A List stores multiple values in ORDER.
// Think of it like an array:  [ 0 | 1 | 2 | 3 | 4 ]
//                   indexes:    0   1   2   3   4

// Index starts from 0 (not 1!)




void listExamples() {
  print('\n___LIST___');

  // Create a list
  List<String> courses = ['Flutter', 'C++', 'Java'];
  // List<String> → A list (array) that can store only String (text) values
  // courses → Variable name of the list

  print('Length: ${courses.length}');
  // 'Length: ${courses.length}' → String interpolation
  // ${courses.length} → Gets the total number of items in the list

  // courses.length → Returns how many elements are in the list
  // In this case: ['Flutter', 'C++', 'Java'] → length is 3



  // Access by index
  print(courses[0]);   // Flutter
  print(courses[2]);   // Java



  // Add items
  courses.add('Web Dev');
  courses.add('React Native');
  print('After adding: ${courses.length}');



  // Loop through a list  (for-in) is cleanest
  print('- All courses -');
  for (String c in courses) {
    print(c);
  }



  // Loop with index (if you need the index number)
  print('- With index -');
  for (int i = 0; i < courses.length; i++) {
    print('$i: ${courses[i]}');
  }



  // List of numbers
  List<int> marks = [33, 88, 99, 33, 98];
  print('First mark: ${marks[0]}');



  // PRACTICE: List of Pakistan cricket players
  List<String> pakPlayers = [
    'Babar Azam',
    'Mohammad Rizwan',
    'Shaheen Afridi',
    'Naseem Shah',
    'Fakhar Zaman',
  ];
  print('- Pakistan Cricket Players -');
  for (String player in pakPlayers) {
    print(player);
  }
}








// MAP
// =====
// A Map stores KEY-VALUE pairs.
// Instead of index numbers, you use your own keys (like labels).
// Think of it like a real dictionary:  word → meaning
//
// Example:  'name' → 'Ali'
//           'gpa'  → 3.3




void mapExamples() {
  print('\n___MAP___');

  // Create a map
  Map<String, int> playersJersey = {
    'kohli': 7,     // 'kohli': 7 → 'kohli' is KEY, 7 is VALUE
    'rizwan': 8,
    'ronaldo': 7,
    'afridi': 10,
  };
  // Map<String, int> → A collection that stores data in KEY : VALUE pairs
  // <String, int> → Key will be String (name), Value will be int (jersey number)

  // playersJersey → Variable name of the map

  // KEY must be unique (no duplicates)
  // VALUE can be same (e.g., 7 appears twice)




  // Access by key
  print(playersJersey['afridi']);   // 10




  // Map with mixed value types → use dynamic
  Map<String, dynamic> studentInfo = {
    'name': 'Ali',
    'gpa': 3.3,
    'feePaid': true,
    'contact': '03838383883',
    'sscMarks': 800,
  };
  print(studentInfo['gpa']);   // 3.3





  // Add / Update a key
  studentInfo['cnic'] = '3838383838383';
  studentInfo['name'] = 'M Ali';   // update existing





  // Loop through keys
  print('- Keys -');
  for (String key in studentInfo.keys) {
    print(studentInfo[key]);
  }




  // Loop through values
  print('- Values -');
  for (dynamic value in studentInfo.values) {
    print(value);
  }




  // Loop through entries (key + value together)
  print('- Entries -');
  for (var data in studentInfo.entries) {
    print('${data.key} contains ${data.value}');
  }







  // LIST OF MAPS very common in real apps!
  // Like a table: each row is a Map, all rows are in a List
  print('- List of Maps (Students) -');

  Map<String, dynamic> s1 = {'name': 'Ali',   'mobile': '03118383838', 'marks': [33, 88, 99, 33, 98]};
  Map<String, dynamic> s2 = {'name': 'Bilal', 'mobile': '03228383838'};
  Map<String, dynamic> s3 = {'name': 'Khan',  'mobile': '03448383838'};

  List<Map<String, dynamic>> studentsList = [
    {'name': 'Imran', 'mobile': '03668383838'},
    s1, s2, s3,
  ];

  studentsList.add({'name': 'Zaib', 'mobile': '03838383'});

  for (var s in studentsList) {
    print(s['name']);
    print(s['mobile']);
    print('*************************');
  }

  // Access nested data (marks inside a student map)
  print('First mark of Ali: ${s1['marks'][0]}');
}