// ignore_for_file: public_member_api_docs, sort_constructors_first
class Recommendation {
  final String topic;
  final String subject;
  final String url;
  Recommendation({
    required this.topic,
    required this.subject,
    required this.url,
  });
}

final rcmddata = [
  Recommendation(
    topic: 'PushDown Automata',
    subject: 'Theory of Computation',
    url: 'https://youtu.be/JtRyd7Svlew',
  ),
  Recommendation(
    topic: 'Intelligent Agents ',
    subject: 'Artificial Intelligence',
    url: 'https://youtu.be/BkedAnQfJ_U',
  ),
  Recommendation(
    topic: 'Network Devices',
    subject: 'Computer Networks',
    url: 'https://youtu.be/0pMm_QxCg3I',
  ),
  Recommendation(
    topic: 'Semaphores',
    subject: 'Operating System',
    url: 'https://youtu.be/XDIOC2EY5JE',
  ),
  Recommendation(
    topic: 'Instances and Schemas',
    subject: 'Database Management System',
    url: 'https://youtu.be/cOzq67n2yN4',
  ),
];
