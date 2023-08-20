import 'package:flutter/material.dart';

List<Map<String, dynamic>> database = [
  {
    "CategoryName": "Sport test",
    "color": Colors.green,
    "data": [
      {
        "question": "After how many Year’s FIFA World Cup held?",
        "answers": [
          {"ans": "2 Years", "score": 0},
          {"ans": "3 Years", "score": 0},
          {"ans": " 4 Years", "score": 1},
          {"ans": " Every Year", "score": 0},
        ]
      },
      {
        "question": "Which Country won the first FIFA World Cup?",
        "answers": [
          {"ans": "Argentina", "score": 0},
          {"ans": "Uruguay", "score": 1},
          {"ans": "Italy", "score": 0},
          {"ans": "Brazil", "score": 0}
        ],
      },
      {
        "question":
            "Who has the Highest Number of Gold Medals in Olympic History?",
        "answers": [
          {"ans": " Larisa Latynina", "score": 0},
          {"ans": " Mark Spitz", "score": 0},
          {"ans": "Michael Phelps", "score": 1},
          {"ans": " Saina Nehwal", "score": 0}
        ],
      }
    ],
  },
  {
    "CategoryName": "History test",
    "color": Colors.red,
    "data": [
      {
        "question":
            "Which U.S. President was the first to live in the White House?",
        "answers": [
          {"ans": "George Washington", "score": 0},
          {"ans": "Thomas Jefferson", "score": 0},
          {"ans": "John Adams", "score": 1},
          {"ans": "James Madison", "score": 0}
        ]
      },
      {
        "question":
            "What was the name of the first successful English colony in America, founded in 1607?",
        "answers": [
          {"ans": "Plymouth", "score": 0},
          {"ans": "Roanoke", "score": 0},
          {"ans": "Jamestown", "score": 1},
          {"ans": "New Amsterdam", "score": 0}
        ]
      },
      {
        "question": "What was the first state to ratify the U.S. Constitution?",
        "answers": [
          {"ans": "Delaware", "score": 1},
          {"ans": "Pennsylvania", "score": 0},
          {"ans": "New Jersey", "score": 0},
          {"ans": "Georgia", "score": 0}
        ]
      },
      {
        "question": "Which civilization built the Great Pyramid of Giza?",
        "answers": [
          {"ans": "Mayans", "score": 0},
          {"ans": "Romans", "score": 0},
          {"ans": "Ancient Egyptians", "score": 1},
          {"ans": "Greeks", "score": 0}
        ]
      },
      {
        "question":
            "Who was the leader of the Soviet Union during the Cuban Missile Crisis?",
        "answers": [
          {"ans": "Vladimir Putin", "score": 0},
          {"ans": "Mikhail Gorbachev", "score": 0},
          {"ans": "Nikita Khrushchev", "score": 1},
          {"ans": "Joseph Stalin", "score": 0}
        ]
      },
      {
        "question":
            "Which explorer is known for his voyages to the New World in 1492?",
        "answers": [
          {"ans": "Ferdinand Magellan", "score": 0},
          {"ans": "Christopher Columbus", "score": 1},
          {"ans": "Marco Polo", "score": 0},
          {"ans": "Captain Cook", "score": 0}
        ]
      },
      // Add more questions here
      {
        "question": "In which year did the American Revolution begin?",
        "answers": [
          {"ans": "1776", "score": 0},
          {"ans": "1789", "score": 0},
          {"ans": "1765", "score": 0},
          {"ans": "1775", "score": 1}
        ]
      },
      {
        "question": "Who was the author of 'The Communist Manifesto'?",
        "answers": [
          {"ans": "Karl Marx", "score": 1},
          {"ans": "Friedrich Engels", "score": 0},
          {"ans": "Vladimir Lenin", "score": 0},
          {"ans": "Joseph Stalin", "score": 0}
        ]
      },
      {
        "question":
            "Which ancient wonder of the world is known for its massive statue of Zeus?",
        "answers": [
          {"ans": "Great Pyramid of Giza", "score": 0},
          {"ans": "Hanging Gardens of Babylon", "score": 0},
          {"ans": "Statue of Zeus at Olympia", "score": 1},
          {"ans": "Temple of Artemis at Ephesus", "score": 0}
        ]
      }
    ]
  },
  {
    "CategoryName": "IQ Test",
    "color": Colors.yellow,
    "data": [
      {
        "question":
            "If a plane crashes exactly on the border between the U.S. and Canada, where would the survivors be buried?",
        "answers": [
          {"ans": "U.S.", "score": 0},
          {"ans": "Canada", "score": 0},
          {"ans": "Survivors are not buried.", "score": 1},
          {"ans": "Both countries", "score": 0}
        ]
      },
      {
        "question": "How many months have 28 days?",
        "answers": [
          {"ans": "1", "score": 0},
          {"ans": "12", "score": 1},
          {"ans": "4", "score": 0},
          {"ans": "Depends on the year", "score": 0}
        ]
      },
      {
        "question":
            "What comes once in a minute, twice in a moment, but never in a thousand years?",
        "answers": [
          {"ans": "The letter 'M'", "score": 1},
          {"ans": "An hourglass", "score": 0},
          {"ans": "A new moon", "score": 0},
          {"ans": "A leap year", "score": 0}
        ]
      },
      {
        "question":
            "If you have 3 apples and you take away 2, how many apples do you have?",
        "answers": [
          {"ans": "0", "score": 0},
          {"ans": "1", "score": 0},
          {"ans": "2", "score": 1},
          {"ans": "3", "score": 0}
        ]
      },
      {
        "question": "Which word is spelled incorrectly in every dictionary?",
        "answers": [
          {"ans": "Incorrectly", "score": 1},
          {"ans": "Misspelled", "score": 0},
          {"ans": "Dictionary", "score": 0},
          {"ans": "Every", "score": 0}
        ]
      },
      // Add more questions here
      {
        "question":
            "I speak without a mouth and hear without ears. I have no body, but I come alive with the wind. What am I?",
        "answers": [
          {"ans": "Whistle", "score": 1},
          {"ans": "Ghost", "score": 0},
          {"ans": "Voice", "score": 0},
          {"ans": "Windmill", "score": 0}
        ]
      },
      {
        "question": "What comes next in this sequence: 1, 2, 4, 8, __?",
        "answers": [
          {"ans": "10", "score": 0},
          {"ans": "12", "score": 0},
          {"ans": "14", "score": 0},
          {"ans": "16", "score": 1}
        ]
      },
    ],
  },
  {
    "CategoryName": "Math Test",
    "color": Colors.blue,
    "data": [
      {
        "question": "What is the square root of 144?",
        "answers": [
          {"ans": "12", "score": 1},
          {"ans": "11", "score": 0},
          {"ans": "13", "score": 0},
          {"ans": "10", "score": 0}
        ]
      },
      {
        "question":
            "If a train travels 300 miles in 4 hours, what is its speed in miles per hour?",
        "answers": [
          {"ans": "50", "score": 1},
          {"ans": "75", "score": 0},
          {"ans": "100", "score": 0},
          {"ans": "25", "score": 0}
        ]
      },
      {
        "question": "Simplify: 3 + 5 * 2",
        "answers": [
          {"ans": "16", "score": 0},
          {"ans": "11", "score": 0},
          {"ans": "13", "score": 1},
          {"ans": "10", "score": 0}
        ]
      },
      {
        "question":
            "If the radius of a circle is 7 units, what is its circumference?",
        "answers": [
          {"ans": "14π", "score": 0},
          {"ans": "21π", "score": 0},
          {"ans": "44π", "score": 0},
          {"ans": "14π", "score": 1}
        ]
      },
      // Add more questions here
      {
        "question": "What is the value of 2^4?",
        "answers": [
          {"ans": "6", "score": 0},
          {"ans": "8", "score": 0},
          {"ans": "16", "score": 1},
          {"ans": "12", "score": 0}
        ]
      },
      {
        "question": "If x = 5 and y = 3, what is the value of 2x + 3y?",
        "answers": [
          {"ans": "11", "score": 1},
          {"ans": "15", "score": 0},
          {"ans": "13", "score": 0},
          {"ans": "18", "score": 0}
        ]
      },
      {
        "question": "What is 30% of 150?",
        "answers": [
          {"ans": "45", "score": 0},
          {"ans": "50", "score": 0},
          {"ans": "60", "score": 1},
          {"ans": "75", "score": 0}
        ]
      }
    ]
  },
  {
    "CategoryName": "Programming Test",
    "color": Colors.orange,
    "data": [
      {
        "question":
            "What is the output of the following Python code?\n\n```python\nx = 5\ny = 3\nprint(x + y)\n```",
        "answers": [
          {"ans": "8", "score": 1},
          {"ans": "15", "score": 0},
          {"ans": "53", "score": 0},
          {"ans": "35", "score": 0}
        ]
      },
      {
        "question":
            "Which programming language is often used for web development and has frameworks like Django and Flask?",
        "answers": [
          {"ans": "Java", "score": 0},
          {"ans": "C#", "score": 0},
          {"ans": "Python", "score": 0},
          {"ans": "JavaScript", "score": 1}
        ]
      },
      {
        "question": "What does HTML stand for?",
        "answers": [
          {"ans": "HyperText Markup Language", "score": 1},
          {"ans": "High-Level Programming Language", "score": 0},
          {"ans": "Hyper Transfer Markup Language", "score": 0},
          {"ans": "Home Tool Markup Language", "score": 0}
        ]
      },
      {
        "question":
            "In Java, which keyword is used to create an object of a class?",
        "answers": [
          {"ans": "new", "score": 1},
          {"ans": "object", "score": 0},
          {"ans": "instance", "score": 0},
          {"ans": "create", "score": 0}
        ]
      },
      // Add more questions here
      {
        "question": "What is the purpose of CSS in web development?",
        "answers": [
          {"ans": "Handling server-side logic", "score": 0},
          {"ans": "Creating databases", "score": 0},
          {"ans": "Styling and formatting web pages", "score": 1},
          {"ans": "Executing client-side scripts", "score": 0}
        ]
      },
      {
        "question":
            "Which symbol is used to indicate a single-line comment in Python?",
        "answers": [
          {"ans": "//", "score": 0},
          {"ans": "#", "score": 1},
          {"ans": "/* */", "score": 0},
          {"ans": "--", "score": 0}
        ]
      },
      {
        "question":
            "What is the main purpose of version control systems like Git?",
        "answers": [
          {"ans": "Running code on multiple devices", "score": 0},
          {"ans": "Automating deployment", "score": 0},
          {
            "ans": "Collaborative code management and tracking changes",
            "score": 1
          },
          {"ans": "Optimizing algorithms", "score": 0}
        ]
      }
    ]
  },
  {
    "CategoryName": "General  Test",
    "color": Colors.purple,
    "data": [
      {
        "question": "What is the capital city of France?",
        "answers": [
          {"ans": "London", "score": 0},
          {"ans": "Berlin", "score": 0},
          {"ans": "Rome", "score": 0},
          {"ans": "Paris", "score": 1}
        ]
      },
      {
        "question": "Who painted the Mona Lisa?",
        "answers": [
          {"ans": "Vincent van Gogh", "score": 0},
          {"ans": "Leonardo da Vinci", "score": 1},
          {"ans": "Pablo Picasso", "score": 0},
          {"ans": "Michelangelo", "score": 0}
        ]
      },
      {
        "question": "What is the largest planet in our solar system?",
        "answers": [
          {"ans": "Venus", "score": 0},
          {"ans": "Mars", "score": 0},
          {"ans": "Jupiter", "score": 1},
          {"ans": "Saturn", "score": 0}
        ]
      },
      {
        "question":
            "Which famous scientist developed the theory of relativity?",
        "answers": [
          {"ans": "Isaac Newton", "score": 0},
          {"ans": "Marie Curie", "score": 0},
          {"ans": "Albert Einstein", "score": 1},
          {"ans": "Galileo Galilei", "score": 0}
        ]
      },
      // Add more questions here
      {
        "question": "What is the chemical symbol for the element gold?",
        "answers": [
          {"ans": "Au", "score": 1},
          {"ans": "Ag", "score": 0},
          {"ans": "Go", "score": 0},
          {"ans": "Gl", "score": 0}
        ]
      },
      {
        "question": "Which planet is known as the 'Red Planet'?",
        "answers": [
          {"ans": "Mars", "score": 1},
          {"ans": "Venus", "score": 0},
          {"ans": "Jupiter", "score": 0},
          {"ans": "Mercury", "score": 0}
        ]
      },
      {
        "question": "What is the tallest mountain in the world?",
        "answers": [
          {"ans": "Mount Kilimanjaro", "score": 0},
          {"ans": "Mount Fuji", "score": 0},
          {"ans": "Mount Everest", "score": 1},
          {"ans": "Mount McKinley", "score": 0}
        ]
      }
    ]
  },
];
final TextEditingController usernameController = TextEditingController();
