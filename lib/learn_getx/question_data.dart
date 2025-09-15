import 'models/question_model.dart';
import 'models/subject_model.dart';

List<SubjectModel> subListData = [
  SubjectModel(
    "JAVA",
    "J101",
    "https://s3-alpha.figma.com/hub/file/2168893076433463439/c4dcef19-0ae5-4291-bb16-0221a5f7faf5-cover.png",
  ),
  SubjectModel("C++", "C-102",""),
  SubjectModel("Dart", "D-103",""),
  SubjectModel("HTML", "H-104",""),
];

// JAVA Questions
List<QuestionModel> javaQData = [
  QuestionModel(
    "What is Java?",
    List.of([
      Option(1, "Coffee brand"),
      Option(2, "Programming language"),
      Option(3, "Operating system"),
      Option(4, "Database"),
    ], growable: false),
    2,
    "J101",
  ),

  QuestionModel(
    "Who developed Java?",
    List.of([
      Option(1, "James Gosling"),
      Option(2, "Guido van Rossum"),
      Option(3, "Dennis Ritchie"),
      Option(4, "Bjarne Stroustrup"),
    ], growable: false),
    1,
    "J101",
  ),

  QuestionModel(
    "Which company first released Java?",
    List.of([
      Option(1, "Microsoft"),
      Option(2, "Sun Microsystems"),
      Option(3, "Oracle"),
      Option(4, "IBM"),
    ], growable: false),
    2,
    "J101",
  ),

  QuestionModel(
    "Which keyword is used to inherit a class in Java?",
    List.of([
      Option(1, "implements"),
      Option(2, "extends"),
      Option(3, "inherits"),
      Option(4, "super"),
    ], growable: false),
    2,
    "J101",
  ),

  QuestionModel(
    "Which of these is not a Java feature?",
    List.of([
      Option(1, "Platform Independent"),
      Option(2, "Object-Oriented"),
      Option(3, "Pointer Arithmetic"),
      Option(4, "Robust"),
    ], growable: false),
    3,
    "J101",
  ),

  QuestionModel(
    "What is JVM?",
    List.of([
      Option(1, "Java Virtual Machine"),
      Option(2, "Java Visual Model"),
      Option(3, "Java Verified Module"),
      Option(4, "Java Value Manager"),
    ], growable: false),
    1,
    "J101",
  ),

  QuestionModel(
    "Which symbol is used to terminate a statement in Java?",
    List.of([
      Option(1, ";"),
      Option(2, ":"),
      Option(3, "."),
      Option(4, ","),
    ], growable: false),
    1,
    "J101",
  ),

  QuestionModel(
    "Which of these is used for comments in Java?",
    List.of([
      Option(1, "//"),
      Option(2, "/* */"),
      Option(3, "///"),
      Option(4, "Both 1 and 2"),
    ], growable: false),
    4,
    "J101",
  ),

  QuestionModel(
    "Which access modifier makes members visible only within a package?",
    List.of([
      Option(1, "private"),
      Option(2, "protected"),
      Option(3, "public"),
      Option(4, "default"),
    ], growable: false),
    4,
    "J101",
  ),

  QuestionModel(
    "Which data type is used to store characters in Java?",
    List.of([
      Option(1, "char"),
      Option(2, "String"),
      Option(3, "Character"),
      Option(4, "text"),
    ], growable: false),
    1,
    "J101",
  ),
];

// C++ Questions
List<QuestionModel> cppQData = [
  QuestionModel(
    "Who is the father of C++?",
    List.of([
      Option(1, "James Gosling"),
      Option(2, "Bjarne Stroustrup"),
      Option(3, "Dennis Ritchie"),
      Option(4, "Ken Thompson"),
    ], growable: false),
    2,
    "C-102",
  ),

  QuestionModel(
    "Which of these is not a C++ feature?",
    List.of([
      Option(1, "Object Oriented"),
      Option(2, "Low-level memory manipulation"),
      Option(3, "Automatic Garbage Collection"),
      Option(4, "Polymorphism"),
    ], growable: false),
    3,
    "C-102",
  ),

  QuestionModel(
    "Which operator is used to allocate memory dynamically?",
    List.of([
      Option(1, "malloc"),
      Option(2, "new"),
      Option(3, "alloc"),
      Option(4, "calloc"),
    ], growable: false),
    2,
    "C-102",
  ),

  QuestionModel(
    "Which of these is the scope resolution operator?",
    List.of([
      Option(1, "::"),
      Option(2, "->"),
      Option(3, "."),
      Option(4, ":"),
    ], growable: false),
    1,
    "C-102",
  ),

  QuestionModel(
    "Which type of programming does C++ support?",
    List.of([
      Option(1, "Procedural"),
      Option(2, "Object-Oriented"),
      Option(3, "Generic"),
      Option(4, "All of the above"),
    ], growable: false),
    4,
    "C-102",
  ),

  QuestionModel(
    "Which function is always called first in a C++ program?",
    List.of([
      Option(1, "start()"),
      Option(2, "main()"),
      Option(3, "init()"),
      Option(4, "execute()"),
    ], growable: false),
    2,
    "C-102",
  ),

  QuestionModel(
    "Which header file is used for input/output in C++?",
    List.of([
      Option(1, "iostream"),
      Option(2, "stdio.h"),
      Option(3, "conio.h"),
      Option(4, "fstream"),
    ], growable: false),
    1,
    "C-102",
  ),

  QuestionModel(
    "Which keyword is used to define a constant in C++?",
    List.of([
      Option(1, "final"),
      Option(2, "const"),
      Option(3, "static"),
      Option(4, "constant"),
    ], growable: false),
    2,
    "C-102",
  ),

  QuestionModel(
    "Which is used to handle exceptions in C++?",
    List.of([
      Option(1, "try-catch"),
      Option(2, "if-else"),
      Option(3, "error-handler"),
      Option(4, "throw-catch"),
    ], growable: false),
    1,
    "C-102",
  ),

  QuestionModel(
    "Which keyword is used for inheritance in C++?",
    List.of([
      Option(1, "extends"),
      Option(2, "inherits"),
      Option(3, ":"),
      Option(4, "super"),
    ], growable: false),
    3,
    "C-102",
  ),
];

// Dart Questions
List<QuestionModel> dartQData = [
  QuestionModel(
    "Dart is mainly used for?",
    List.of([
      Option(1, "Web & Mobile Development"),
      Option(2, "Game Development"),
      Option(3, "Operating Systems"),
      Option(4, "Database Management"),
    ], growable: false),
    1,
    "D-103",
  ),

  QuestionModel(
    "Who developed Dart?",
    List.of([
      Option(1, "Google"),
      Option(2, "Microsoft"),
      Option(3, "Oracle"),
      Option(4, "IBM"),
    ], growable: false),
    1,
    "D-103",
  ),

  QuestionModel(
    "Which framework uses Dart?",
    List.of([
      Option(1, "React"),
      Option(2, "Flutter"),
      Option(3, "Angular"),
      Option(4, "Vue"),
    ], growable: false),
    2,
    "D-103",
  ),

  QuestionModel(
    "Which keyword is used to declare a constant in Dart?",
    List.of([
      Option(1, "const"),
      Option(2, "final"),
      Option(3, "static"),
      Option(4, "constant"),
    ], growable: false),
    1,
    "D-103",
  ),

  QuestionModel(
    "Which function is the entry point of a Dart app?",
    List.of([
      Option(1, "start()"),
      Option(2, "main()"),
      Option(3, "run()"),
      Option(4, "init()"),
    ], growable: false),
    2,
    "D-103",
  ),

  QuestionModel(
    "Which symbol is used for string interpolation in Dart?",
    List.of([
      Option(1, "#{}"),
      Option(2, "\${}"),
      Option(3, "@{}"),
      Option(4, "&{}"),
    ], growable: false),
    2,
    "D-103",
  ),

  QuestionModel(
    "Which data type is used for decimal numbers in Dart?",
    List.of([
      Option(1, "int"),
      Option(2, "double"),
      Option(3, "float"),
      Option(4, "decimal"),
    ], growable: false),
    2,
    "D-103",
  ),

  QuestionModel(
    "Which collection is used to store key-value pairs in Dart?",
    List.of([
      Option(1, "List"),
      Option(2, "Map"),
      Option(3, "Set"),
      Option(4, "Array"),
    ], growable: false),
    2,
    "D-103",
  ),

  QuestionModel(
    "Which operator is used for null-aware access in Dart?",
    List.of([
      Option(1, "?."),
      Option(2, "??"),
      Option(3, "!."),
      Option(4, "::"),
    ], growable: false),
    1,
    "D-103",
  ),

  QuestionModel(
    "Which keyword is used to declare an asynchronous function?",
    List.of([
      Option(1, "async"),
      Option(2, "await"),
      Option(3, "future"),
      Option(4, "then"),
    ], growable: false),
    1,
    "D-103",
  ),
];

// HTML Questions
List<QuestionModel> htmlQData = [
  QuestionModel(
    "What does HTML stand for?",
    List.of([
      Option(1, "Hyper Trainer Markup Language"),
      Option(2, "Hyper Text Markup Language"),
      Option(3, "Hyper Text Markdown Language"),
      Option(4, "Hyper Transfer Markup Language"),
    ], growable: false),
    2,
    "H-104",
  ),

  QuestionModel(
    "Which tag is used for the largest heading?",
    List.of([
      Option(1, "<h1>"),
      Option(2, "<h6>"),
      Option(3, "<head>"),
      Option(4, "<header>"),
    ], growable: false),
    1,
    "H-104",
  ),

  QuestionModel(
    "Which tag is used to insert a line break?",
    List.of([
      Option(1, "<lb>"),
      Option(2, "<br>"),
      Option(3, "<break>"),
      Option(4, "<hr>"),
    ], growable: false),
    2,
    "H-104",
  ),

  QuestionModel(
    "Which attribute is used for image source?",
    List.of([
      Option(1, "src"),
      Option(2, "alt"),
      Option(3, "href"),
      Option(4, "link"),
    ], growable: false),
    1,
    "H-104",
  ),

  QuestionModel(
    "Which tag is used for creating hyperlinks?",
    List.of([
      Option(1, "<link>"),
      Option(2, "<a>"),
      Option(3, "<href>"),
      Option(4, "<url>"),
    ], growable: false),
    2,
    "H-104",
  ),

  QuestionModel(
    "Which HTML tag is used to display a table?",
    List.of([
      Option(1, "<td>"),
      Option(2, "<table>"),
      Option(3, "<tr>"),
      Option(4, "<th>"),
    ], growable: false),
    2,
    "H-104",
  ),

  QuestionModel(
    "Which attribute is used to provide alternative text for an image?",
    List.of([
      Option(1, "alt"),
      Option(2, "title"),
      Option(3, "src"),
      Option(4, "href"),
    ], growable: false),
    1,
    "H-104",
  ),

  QuestionModel(
    "Which tag is used to define a list with bullets?",
    List.of([
      Option(1, "<ol>"),
      Option(2, "<ul>"),
      Option(3, "<li>"),
      Option(4, "<dl>"),
    ], growable: false),
    2,
    "H-104",
  ),

  QuestionModel(
    "Which tag is used to embed a video?",
    List.of([
      Option(1, "<media>"),
      Option(2, "<video>"),
      Option(3, "<embed>"),
      Option(4, "<movie>"),
    ], growable: false),
    2,
    "H-104",
  ),

  QuestionModel(
    "Which tag is used to define metadata in HTML?",
    List.of([
      Option(1, "<meta>"),
      Option(2, "<data>"),
      Option(3, "<head>"),
      Option(4, "<info>"),
    ], growable: false),
    1,
    "H-104",
  ),
];
