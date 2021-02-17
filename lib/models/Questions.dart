class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "The Hardest Logic Puzzle Ever? \n If a giraffe has two eyes, a monkey has two eyes, and an elephant has two eyes, how many eyes do we have?",
    "options": ['3', '4', '1', '2'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "How many times in a day, are the hands of a clock in straight line but opposite in direction?",
    "options": ['20', '22', '24', '48'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "A clock is started at noon. By 10 minutes past 5, the hour hand has turned through:",
    "options": ['145', '150', '155', '160'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "One rabbit saw 6 elephants while going towards River. Every elephant saw 2 monkeys are going towards river. Every monkey holds one tortoice in their hands.\n How many animals are going towards the river?",
    "options": ['14', '11', '8', '5'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "A watch which gains uniformly is 2 minutes low at noon on Monday and is 4 min. 48 sec fast at 2 p.m. on the following Monday. When was it correct?",
    "options": ['2 p.m. on Tuesday', '2 p.m. on Wednesday', '3 p.m. on Thursday', '1 p.m. on Friday'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "'Rhythm of eyes' city name in India?",
    "options": ['Chennai', 'Nainital', 'Srinagar', ' Karnataka'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "A man was murdered in his office.\n The suspects are Ericson, Maggi, Joel, Benny, Sona, Patick.A calendar found near the man has blood written 6, 4, 9, 10, 11. \n Who is the killer?",
    "options": ['Maggi', 'Ericson', 'Sona', 'Joel'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "One rabbit saw 6 elephants while going towards River. Every elephant saw 2 monkeys are going towards river. Every monkey holds one tortoice in their hands.\n How many animals are going towards the river?",
    "options": ['14', '11', '8', '5'],
    "answer_index": 3,
  },
];
