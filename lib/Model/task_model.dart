class Todo{
  final String tittle;
  final bool isCompleted;

  Todo({
    required this.tittle,
    this.isCompleted=false,
});
}
List <Todo> taskList=[
  Todo(tittle: 'You can add todo by pressing the add button'),
  Todo(tittle: 'You can ae add button'),
  Todo(tittle: 'Add button'),
];