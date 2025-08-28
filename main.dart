import 'dart:io';

void main () {
    const passingGrade = 60;
    const highestGrade = 100;
    const assignmentWeight = 0.2;
    const midtermWeight = 0.3;
    const finalWeight = 0.5;

    print("Enter student's name");
    String? name = stdin.readLineSync();

    print("Enter Assignment Score");
    double? assignmentscore = double.parse(stdin.readLineSync()!);

    print("Enter midterm Score");
    double? midtermscore = double.parse(stdin.readLineSync()!);

    print("Enter final Score");
    double? finalscore = double.parse(stdin.readLineSync()!);

    try {
        print("Valid Number");
    } catch (e) {
        print("Invalid Number ${e}");
    }


    double weightAverage = assignmentscore + midtermscore + finalscore / 3;

    if (weightAverage >= passingGrade) {
        print("Student's name: $name");
        print("Your assignment score: $assignmentscore");
        print("Your midterm score: $midtermscore");
        print("Final Grade is ${weightAverage}: Passed!");
    } else {
        print("Student's name: $name");
        print("Your assignment score: $assignmentscore");
        print("Your midterm score: $midtermscore");
        print("Your Final Grade is ${weightAverage}: Failed!");
    }
}