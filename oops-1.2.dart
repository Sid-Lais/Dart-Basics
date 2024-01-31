//Create a Student Class,
// Input : From the Student
// Rollno : Integer type
// Name format : ajay KUmar sHaRma
// Should be converted to : Ajay Kumar Sharma
// 3 Subject Marks : Out of 100
// 90
// 80
// 77

// Output:
// Total Marks
// Percentage
// Grade
// >=90 - A Grade
// <90 - >=70 B Grade
// <70 to >=60 C Grade
// <60 to >=50 D Grade
// < 50	E Grade

// College Name : All Caps
// Name : Proper Case
// Subjects
// Total
// Percentage
// Grade

// Note : showcase the use of Named Constructor, Setter and Getter, Positional parameter, optional parameter.

class Student {
  int _rollNo;
  String _name;
  List<int>? _subjectMarks;

  Student(this._rollNo, this._name, [List<int>? subjectMarks]) {
    _subjectMarks = subjectMarks ?? [];
  }

  Student.withDefaultValues()
      : _rollNo = 0,
        _name = '',
        _subjectMarks = [];

  int get rollNo => _rollNo;
  String get name => _name;
  List<int>? get subjectMarks => _subjectMarks;

  set rollNo(int rollNo) => _rollNo = rollNo;

  set name(String name) => _name = _formatName(name);

  set subjectMarks(List<int>? subjectMarks) {
    _subjectMarks = subjectMarks ?? [];
  }

  int? calculateTotalMarks() {
    return _subjectMarks?.fold<int?>(0, (sum, mark) => sum! + mark) ?? 0;
  }

  double calculatePercentage() {
    if (_subjectMarks?.isEmpty ?? true) {
      return 0.0;
    }
    return calculateTotalMarks()! / (_subjectMarks!.length * 100) * 100;
  }

  String calculateGrade() {
    double percentage = calculatePercentage();
    if (percentage >= 90) {
      return 'A Grade';
    } else if (percentage >= 70) {
      return 'B Grade';
    } else if (percentage >= 60) {
      return 'C Grade';
    } else if (percentage >= 50) {
      return 'D Grade';
    } else {
      return 'E Grade';
    }
  }

  String _formatName(String name) {
    List<String> words = name.split(' ');
    for (int i = 0; i < words.length; i++) {
      words[i] =
          words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
    }
    return words.join(' ');
  }

  void displayStudentDetails() {
    print('Roll No: $_rollNo');
    print('Name: $_name');
    print('Subjects: $_subjectMarks');
    print('Total Marks: ${calculateTotalMarks()}');
    print('Percentage: ${calculatePercentage()}%');
    print('Grade: ${calculateGrade()}');
  }
}

void main() {
  Student student1 = Student(1, 'ajay KUmar sHaRma', [90, 80, 77]);
  student1.displayStudentDetails();
}
