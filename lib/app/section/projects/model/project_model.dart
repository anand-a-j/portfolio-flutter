class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String githubLink;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.githubLink,
  });
}

List<Project> projects = [
  Project(
      title: 'E Commerce App',
      description:
          'A full-featured eCommerce app built with Flutter and Node.js, powered by a MongoDB backend. It includes secure email authentication, real-time product search, category filters, Razorpay payments, and location-based checkout. Designed for both users and admins with a smooth, responsive experience.',
      imageUrl:
          "https://res.cloudinary.com/dyicffrec/image/upload/v1760100133/shot_59_zdfcjx.png",
      githubLink: "https://github.com/anand-a-j/e-commerce-user"),
  Project(
      title: 'Habit Tracker',
      description:
          "A smart habit tracker app built with Flutter, powered by Riverpod and Hive. It includes analytics, reminders, customization, and data control features — currently in progress with all core logic implemented.",
      imageUrl:
          "https://res.cloudinary.com/dyicffrec/image/upload/v1760247557/shot_41_ylopf3.png",
      githubLink: "https://github.com/anand-a-j/habitroot"),
  Project(
      title: 'Social Media Application',
      description:
          'soical media application using flutter integrated with firebase.This app enables users to create posts, follow others, and engage with content through likes and comments. Integrated with Firebase for authentication, storage, and real-time updates.',
      imageUrl:
          "https://res.cloudinary.com/dyicffrec/image/upload/v1759887944/268874753-d5d2d286-c634-42ab-8503-fe82c66d8b2c_yqgwow.png",
      githubLink: "https://github.com/anand-a-j/piczo"),
  Project(
      title: 'Todo Application',
      description:
          'This Flutter application is a versatile TODO list manager with robust state management using the Provider package and persistent data storage using SQLite via the Sqflite package. The app allows users to effortlessly create, update, read, and delete tasks, providing a seamless experience for organizing their daily activities.',
      imageUrl:
          'https://res.cloudinary.com/dyicffrec/image/upload/v1759975146/Mockup_1_nimldc.png',
      githubLink: "https://github.com/anand-a-j/todo"),
  Project(
    title: 'Personal Portfolio',
    description:
        "A responsive Flutter portfolio website that highlights my work, background, and ways to connect. Built from the ground up to reflect my personal brand and technical skills.",
    imageUrl:
        "https://res.cloudinary.com/dyicffrec/image/upload/v1760184117/Mockup_1_1_pd6m3w.png",
    githubLink: "https://github.com/anand-a-j/portfolio-flutter",
  ),
];
