class Mood {
  final String name;
  final String image;

  Mood({required this.name, required this.image});
}

final List<Mood> moods = [
  Mood(name: 'Happy', image: 'assets/images/happy.png'),
  Mood(name: 'Laughing', image: 'assets/images/laughing.png'),
  Mood(name: 'Smile', image: 'assets/images/smile.png'),
  Mood(name: 'In-Love', image: 'assets/images/in-love.png'),
  Mood(name: 'Relaxed', image: 'assets/images/relaxed.png'),
  Mood(name: 'Thinking', image: 'assets/images/thinking.png'),
  Mood(name: 'Tired', image: 'assets/images/tired.png'),
  Mood(name: 'Sad', image: 'assets/images/sad.png'),
  Mood(name: 'Crying', image: 'assets/images/crying.png'),
  Mood(name: 'Bored', image: 'assets/images/bored.png'),
  Mood(name: 'Scared', image: 'assets/images/scared.png'),
  Mood(name: 'Angry', image: 'assets/images/angry.png'),
];
