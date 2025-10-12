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
        'A full-featured eCommerce app built with Flutter, Node.js, and MongoDB. It includes secure login, product search, category filters, Razorpay payments, and location-based checkout for users and admins.',
    imageUrl:
        "https://res.cloudinary.com/dyicffrec/image/upload/v1760100133/shot_59_zdfcjx.png",
    githubLink: "https://github.com/anand-a-j/e-commerce-user",
  ),
  Project(
    title: 'Habit Tracker',
    description:
        'A Flutter habit tracker powered by Riverpod and Hive, featuring analytics, reminders, and full habit customization. Core logic is complete, with refinements in progress.',
    imageUrl:
        "https://res.cloudinary.com/dyicffrec/image/upload/v1760247557/shot_41_ylopf3.png",
    githubLink: "https://github.com/anand-a-j/habitroot",
  ),
  Project(
    title: 'Social Media Application',
    description:
        'A Flutter social app with Firebase integration for authentication, storage, and real-time updates. Users can create posts, follow others, and engage through likes and comments.',
    imageUrl:
        "https://res.cloudinary.com/dyicffrec/image/upload/v1759887944/268874753-d5d2d286-c634-42ab-8503-fe82c66d8b2c_yqgwow.png",
    githubLink: "https://github.com/anand-a-j/piczo",
  ),
  Project(
    title: 'Todo Application',
    description:
        'A Flutter-based task manager with Provider state management and SQLite persistence. Users can easily add, edit, and organize their daily tasks in a clean interface.',
    imageUrl:
        'https://res.cloudinary.com/dyicffrec/image/upload/v1759975146/Mockup_1_nimldc.png',
    githubLink: "https://github.com/anand-a-j/todo",
  ),
  Project(
    title: 'Personal Portfolio',
    description:
        "A responsive Flutter portfolio website that highlights my work, background, and ways to connect. Built from the ground up to reflect my personal brand and technical skills.",
    imageUrl:
        "https://res.cloudinary.com/dyicffrec/image/upload/v1760184117/Mockup_1_1_pd6m3w.png",
    githubLink: "https://github.com/anand-a-j/portfolio-flutter",
  ),
];
