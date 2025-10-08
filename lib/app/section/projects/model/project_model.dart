class Project {
  final String title;
  final String description;
  final String imageUrl;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

List<Project> projects = [
  Project(
    title: 'E Commerce App',
    description:
        'This is a Flutter shopping app with a Node.js backend, MongoDB database, including features for both users and administrators.',
    imageUrl: '',
  ),
  Project(
    title: 'Social Media Application',
    description:
        'soical media application using flutter integrated with firebase.This app enables users to create posts, follow others, and engage with content through likes and comments. Integrated with Firebase for authentication, storage, and real-time updates.',
    imageUrl:
        "https://res.cloudinary.com/dyicffrec/image/upload/v1759887944/268874753-d5d2d286-c634-42ab-8503-fe82c66d8b2c_yqgwow.png",
  ),
  Project(
    title: 'Todo Application',
    description:
        'This Flutter application is a versatile TODO list manager with robust state management using the Provider package and persistent data storage using SQLite via the Sqflite package. The app allows users to effortlessly create, update, read, and delete tasks, providing a seamless experience for organizing their daily activities.',
    imageUrl: '',
  ),
  Project(
    title: 'Personal Portfolio',
    description:
        'This Flutter application is a versatile TODO list manager with robust state management using the Provider package and persistent data storage using SQLite via the Sqflite package. The app allows users to effortlessly create, update, read, and delete tasks, providing a seamless experience for organizing their daily activities.',
    imageUrl: '',
  ),
  Project(
    title: 'Habit Tracker',
    description:
        'This Flutter application is a versatile TODO list manager with robust state management using the Provider package and persistent data storage using SQLite via the Sqflite package. The app allows users to effortlessly create, update, read, and delete tasks, providing a seamless experience for organizing their daily activities.',
    imageUrl: '',
  ),
];
