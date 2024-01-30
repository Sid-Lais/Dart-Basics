//Create a class employee with the properties: EmpId, EmpName, EmpDept and EmpSalary. Provide
//setter and getter methods for these properties. Calculate the salary as per the dept of the
//employee. All employee are entitled for basic salary 50000 with Allowances as per the dept. The
//percentage of allowances are given in the following map: {admin: 20%, teamlead:70%, technical:
//60%, officestaff:10%}.

class Employee {
  static const Map<String, double> ALLOWANCE_PERCENTAGE = {
    "admin": 0.20,
    "teamlead": 0.70,
    "technical": 0.60,
    "officestaff": 0.10,
  };
  static const double BASIC_SALARY = 50000;

  int _empId;
  String _empName;
  String _empDept;
  double _empSalary;

  // Constructor
  Employee(int empId, String empName, String empDept)
      : _empId = empId,
        _empName = empName,
        _empDept = empDept,
        _empSalary = 0.0 {
    _empSalary = _calculateSalary(empDept);
  }

  // Getter methods
  int get empId => _empId;
  String get empName => _empName;
  String get empDept => _empDept;
  double get empSalary => _empSalary;

  // Setter methods
  set empId(int empId) => _empId = empId;
  set empName(String empName) => _empName = empName;
  set empDept(String empDept) {
    _empDept = empDept;
    _empSalary = _calculateSalary(empDept);
  }

  // Calculate salary based on department
  double _calculateSalary(String empDept) {
    double allowancePercentage =
        ALLOWANCE_PERCENTAGE[empDept] ?? 0; // Use 0 if department not found
    double allowanceAmount = BASIC_SALARY * allowancePercentage;
    return BASIC_SALARY + allowanceAmount;
  }
}

// Example usage:
void main() {
  Employee employee1 = Employee(1, "John Doe", "teamlead");
  print("Employee ID: ${employee1.empId}");
  print("Employee Name: ${employee1.empName}");
  print("Employee Department: ${employee1.empDept}");
  print("Employee Salary: ${employee1.empSalary}");
}
