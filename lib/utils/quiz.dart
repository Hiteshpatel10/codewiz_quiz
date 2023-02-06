var intermediate = [
  {
    "question": "What is the purpose of a fragment in Android?",
    "level": "Intermediate",
    "options": [
      "To provide a UI for a device's camera",
      "To provide a separate and reusable part of an activity's UI",
      "To provide a separate and reusable part of an app's logic"
    ],
    "correctAnswerIndex": 1,
    "explanation":
        "Fragments in Android are used to provide a separate and reusable part of an activity's UI. They allow UI components to be reused across multiple activities and provide a way to manage the screen space of a device."
  },
  {
    "question": "What is the benefit of using fragments in Android?",
    "level": "Intermediate",
    "options": [
      "To reduce code duplication",
      "To improve app performance",
      "To provide a flexible UI that can be used on different screen sizes"
    ],
    "correctAnswerIndex": 2,
    "explanation":
        "The primary benefit of using fragments in Android is to provide a flexible UI that can be used on different screen sizes. Fragments allow the same UI components to be reused across multiple activities and provide a way to manage the screen space of a device."
  },
  {
    "question": "How do you add a fragment to an activity in Android?",
    "level": "Intermediate",
    "options": [
      "By using an Intent",
      "By using a ViewGroup",
      "By using a FragmentManager"
    ],
    "correctAnswerIndex": 2,
    "explanation":
        "In order to add a fragment to an activity in Android, you need to use a FragmentManager. The FragmentManager is responsible for managing the fragment transactions and can be obtained by calling `getSupportFragmentManager()` or `getFragmentManager()` depending on the version of Android you're using."
  },
  {
    "question":
        "What is the difference between a fragment and an activity in Android?",
    "level": "Intermediate",
    "options": [
      "Fragments cannot have a UI, activities can",
      "Fragments can have a UI, activities cannot",
      "Fragments and activities are the same thing"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Fragments in Android are used to provide a separate and reusable part of an activity's UI, while activities are used to represent a UI screen in an app. While fragments can have a UI, activities are responsible for creating a UI and handling user interaction. "
  },
  {
    "question":
        "What is the relationship between a fragment and an activity in Android?",
    "level": "Intermediate",
    "options": [
      "Fragments are completely independent of activities",
      "Fragments are tightly coupled to activities",
      "Fragments are loosely coupled to activities"
    ],
    "correctAnswerIndex": 2,
    "explanation":
        "In Android, fragments are loosely coupled to activities. Fragments are used to represent a part of an activity's UI and can be added or removed from an activity at runtime. Fragments can also be reused across multiple activities, providing a way to manage the screen space of a device."
  },
  {
    "question": "What is an Activity in Android and what is its purpose?",
    "level": "Intermediate",
    "options": [
      "An activity is a part of an app's UI, used to represent a screen",
      "An activity is a part of an app's logic, used to perform tasks",
      "An activity is used to manage database transactions"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "An activity in Android is a part of an app's UI, used to represent a screen and handle user interaction. It is responsible for creating a UI and managing user input."
  },
  {
    "question": "How do you launch an Activity in Android?",
    "level": "Intermediate",
    "options": [
      "By using a FragmentManager",
      "By using an Intent",
      "By using a ViewGroup"
    ],
    "correctAnswerIndex": 1,
    "explanation":
        "In Android, an activity is launched by using an Intent. An Intent is an abstract description of an operation to be performed and can be used to start an activity, service, or broadcast receiver."
  },
  {
    "question":
        "What is the difference between `singleTop`, `singleTask`, and `singleInstance` launch modes for activities in Android?",
    "level": "Intermediate",
    "options": [
      "`singleTop` launches a new instance of the activity, `singleTask` reuses the existing instance, and `singleInstance` launches a new task for the activity",
      "`singleTop` reuses the existing instance, `singleTask` launches a new task for the activity, and `singleInstance` launches a new instance of the activity",
      "`singleTop` launches a new task for the activity, `singleTask` launches a new instance of the activity, and `singleInstance` reuses the existing instance"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "In Android, the `singleTop` launch mode reuses the existing instance of the activity if it is at the top of the task stack, `singleTask` launches a new task for the activity if it already exists, and `singleInstance` launches the activity in a new task and ensures that only one instance of the activity exists in the entire task stack."
  },
  {
    "question":
        "What is the difference between `startActivity()` and `startActivityForResult()` in Android?",
    "level": "Intermediate",
    "options": [
      "`startActivity()` starts an activity and does not expect a result, `startActivityForResult()` starts an activity and expects a result",
      "`startActivity()` starts an activity and expects a result, `startActivityForResult()` starts an activity and does not expect a result",
      "Both `startActivity()` and `startActivityForResult()` start an activity without expecting a result"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "In Android, `startActivity()` starts an activity and does not expect a result, while `startActivityForResult()` starts an activity and expects a result, which can be received in the calling activity's `onActivityResult()` method."
  },
  {
    "question": "What is a ViewModel in Android?",
    "level": "Intermediate",
    "options": [
      "A ViewModel is a part of an app's UI, used to represent a screen",
      "A ViewModel is a part of an app's logic, used to manage the data for a UI component",
      "A ViewModel is used to manage database transactions"
    ],
    "correctAnswerIndex": 1,
    "explanation":
        "A ViewModel in Android is a part of an app's logic, used to manage the data for a UI component, such as an activity or fragment. It is responsible for holding the data and preparing it for the UI, as well as handling any necessary processing of the data."
  },
  {
    "question": "What is the main purpose of using a ViewModel in Android?",
    "level": "Intermediate",
    "options": [
      "To provide a single source of data for multiple fragments or activities",
      "To manage UI-related data in a lifecycle-aware manner",
      "To manage database transactions"
    ],
    "correctAnswerIndex": 1,
    "explanation":
        "The main purpose of using a ViewModel in Android is to manage UI-related data in a lifecycle-aware manner. This means that the ViewModel is able to survive configuration changes, such as screen rotations, and keep the data intact, making it available to the UI when it is needed."
  },
  {
    "question":
        "What is the difference between a ViewModel and a LiveData in Android?",
    "level": "Intermediate",
    "options": [
      "A ViewModel is a class used to manage UI-related data, while a LiveData is a type of data that can be observed for changes",
      "A ViewModel is a type of data that can be observed for changes, while a LiveData is a class used to manage UI-related data",
      "A ViewModel and a LiveData are the same thing"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "In Android, a ViewModel is a class used to manage UI-related data, while a LiveData is a type of data that can be observed for changes. A ViewModel can hold a LiveData object and provide it to the UI, allowing the UI to observe the data and update itself automatically when the data changes."
  },
  {
    "question": "When should you use a ViewModel in Android?",
    "level": "Intermediate",
    "options": [
      "When you need to manage UI-related data in a lifecycle-aware manner",
      "When you need to manage database transactions",
      "When you need to provide a single source of data for multiple fragments or activities"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "You should use a ViewModel in Android when you need to manage UI-related data in a lifecycle-aware manner. This ensures that the data will survive configuration changes, such as screen rotations, and be available to the UI when it is needed."
  },
  {
    "question": "What is the purpose of Android Navigation component?",
    "level": "Intermediate",
    "options": [
      "To manage the navigation between fragments or activities in an app",
      "To manage database transactions",
      "To provide a single source of data for multiple fragments or activities"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The purpose of Android Navigation component is to manage the navigation between fragments or activities in an app. It provides a simple and flexible way to navigate between different destinations in an app, while also handling the transactions between those destinations."
  },
  {
    "question": "What is a navigation graph in Android Navigation component?",
    "level": "Intermediate",
    "options": [
      "A visual representation of the navigation structure in an app",
      "A database that holds the navigation information for an app",
      "A class used to manage the navigation between fragments or activities"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "A navigation graph in Android Navigation component is a visual representation of the navigation structure in an app. It provides a visual way to define the different destinations in an app and the relationships between those destinations."
  },
  {
    "question": "What is a destination in Android Navigation component?",
    "level": "Intermediate",
    "options": [
      "A fragment or activity in an app",
      "A navigation rule between two destinations",
      "A navigation graph"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "A destination in Android Navigation component is a fragment or activity in an app. It represents a single screen in the app, and can be connected to other destinations through navigation actions in the navigation graph."
  },
  {
    "question": "What is a navigation action in Android Navigation component?",
    "level": "Intermediate",
    "options": [
      "A connection between two destinations in the navigation graph",
      "A database transaction",
      "A class used to manage navigation between destinations"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "A navigation action in Android Navigation component is a connection between two destinations in the navigation graph. It defines the relationship between two destinations, such as moving from one destination to another through a button click or swipe gesture."
  },
  {
    "question": "What are the benefits of using Android Navigation component?",
    "level": "Intermediate",
    "options": [
      "Simplifies the navigation between destinations in an app, provides safe args for passing data between destinations, and handles up and back actions automatically",
      "Provides a way to manage database transactions in an app",
      "Provides a single source of data for multiple fragments or activities"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The benefits of using Android Navigation component are that it simplifies the navigation between destinations in an app, provides safe args for passing data between destinations, and handles up and back actions automatically. This makes it easier to manage the navigation in an app and reduces the amount of code needed to handle navigation."
  },
  {
    "question": "What is Android Room?",
    "level": "Intermediate",
    "options": [
      "A library for accessing SQLite databases in Android apps",
      "A library for networking in Android apps",
      "A library for UI design in Android apps"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Android Room is a library for accessing SQLite databases in Android apps. It provides an easy-to-use, concise, and powerful way to manage databases in Android apps."
  },
  {
    "question": "What are the benefits of using Android Room?",
    "level": "Intermediate",
    "options": [
      "Provides an abstraction layer over SQLite, makes it easier to manage databases in Android apps, and reduces the amount of code needed to handle database transactions",
      "Provides a way to manage networking in Android apps",
      "Provides a way to manage UI design in Android apps"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The benefits of using Android Room are that it provides an abstraction layer over SQLite, makes it easier to manage databases in Android apps, and reduces the amount of code needed to handle database transactions. This makes it easier to write and maintain code that interacts with databases in Android apps."
  },
  {
    "question": "What is an Entity in Android Room?",
    "level": "Intermediate",
    "options": [
      "A class that represents a database table",
      "A class that represents a database column",
      "A class that represents a database transaction"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "An Entity in Android Room is a class that represents a database table. It is used to map a database table to a class in an Android app, and the fields of the class represent the columns in the database table."
  },
  {
    "question": "What is a DAO in Android Room?",
    "level": "Intermediate",
    "options": [
      "An interface that defines the database operations for an Entity",
      "A class that represents a database table",
      "A class that represents a database column"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "A DAO in Android Room is an interface that defines the database operations for an Entity. It is used to define the methods for accessing and updating data in a database, such as inserting, updating, and deleting records."
  },
  {
    "question": "What is a RoomDatabase in Android Room?",
    "level": "Intermediate",
    "options": [
      "A class that represents a database and provides access to the DAOs",
      "An interface that defines the database operations for an Entity",
      "A class that represents a database table"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "A RoomDatabase in Android Room is a class that represents a database and provides access to the DAOs. It is used to manage the connection to the database and the access to the data in the database through the DAOs."
  },
  {
    "question": "What is the Android Lifecycle?",
    "level": "Intermediate",
    "options": [
      "A set of rules that determine the lifecycle of an Android Activity or Fragment",
      "A set of rules that determine the lifecycle of an Android Service",
      "A set of rules that determine the lifecycle of an Android Broadcast Receiver"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The Android Lifecycle is a set of rules that determine the lifecycle of an Android Activity or Fragment. It defines the different states an Activity or Fragment can be in, and the methods that are called when the Activity or Fragment transitions between states."
  },
  {
    "question":
        "What are the different states an Activity or Fragment can be in?",
    "level": "Intermediate",
    "options": [
      "Active, Paused, Stopped, and Destroyed",
      "Started, Running, Stopping, and Destroyed",
      "Active, Inactive, Stopped, and Destroyed"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The different states an Activity or Fragment can be in are Active, Paused, Stopped, and Destroyed. These states describe the different states the Activity or Fragment can be in while the app is running, and they affect the visibility and functionality of the Activity or Fragment."
  },
  {
    "question":
        "What is the difference between the onPause and onStop methods?",
    "level": "Intermediate",
    "options": [
      "The onPause method is called when the Activity or Fragment is partially obscured, while the onStop method is called when the Activity or Fragment is no longer visible",
      "The onPause method is called when the Activity or Fragment is no longer visible, while the onStop method is called when the Activity or Fragment is partially obscured",
      "The onPause method is called when the Activity or Fragment is destroyed, while the onStop method is called when the Activity or Fragment is stopped"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The difference between the onPause and onStop methods is that the onPause method is called when the Activity or Fragment is partially obscured, while the onStop method is called when the Activity or Fragment is no longer visible. The onPause method is used to stop any active animations or background processes, while the onStop method is used to release resources that are not needed when the Activity or Fragment is no longer visible."
  },
  {
    "question": "What is Compose Navigation in Android?",
    "level": "Intermediate",
    "options": [
      "A declarative navigation library built for Android Compose",
      "A imperative navigation library built for Android Compose",
      "A navigation library built for Android XML"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Compose Navigation is a declarative navigation library built for Android Compose. It provides a simple, composable, and flexible way to handle navigation in Android apps, with the goal of making it easy to use and maintain."
  },
  {
    "question":
        "What is the difference between imperative navigation and declarative navigation in Android?",
    "level": "Intermediate",
    "options": [
      "Imperative navigation involves using code to directly control the navigation of an app, while declarative navigation involves describing the desired navigation and letting the framework handle the implementation details",
      "Declarative navigation involves using code to directly control the navigation of an app, while imperative navigation involves describing the desired navigation and letting the framework handle the implementation details",
      "Imperative navigation and declarative navigation are the same thing"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The difference between imperative navigation and declarative navigation in Android is that imperative navigation involves using code to directly control the navigation of an app, while declarative navigation involves describing the desired navigation and letting the framework handle the implementation details. Declarative navigation is typically more maintainable and testable, as it abstracts away the details of the navigation implementation."
  },
  {
    "question": "What is a composable in Android Compose?",
    "level": "Intermediate",
    "options": [
      "A function that takes inputs and returns a UI element",
      "A UI element that can be combined with other UI elements to form a more complex UI",
      "A navigation element that can be combined with other navigation elements to form a more complex navigation flow"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "A composable in Android Compose is a function that takes inputs and returns a UI element. Composables are the building blocks of Android Compose UI, and they allow developers to create reusable UI components that can be easily combined to form complex UI elements."
  },
  {
    "question":
        "What is the advantage of using Compose Navigation over other navigation libraries in Android?",
    "level": "Intermediate",
    "options": [
      "Compose Navigation provides a simple, composable, and flexible way to handle navigation, making it easy to use and maintain",
      "Compose Navigation provides a complex and rigid way to handle navigation, making it difficult to use and maintain",
      "Compose Navigation provides no advantage over other navigation libraries in Android"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The advantage of using Compose Navigation over other navigation libraries in Android is that Compose Navigation provides a simple, composable, and flexible way to handle navigation, making it easy to use and maintain. This makes it a good choice for Android developers who want to handle navigation in a more efficient and maintainable way."
  },
];

var advance = [
  {
    "question": "What is Dependency Injection in Android?",
    "level": "Advance",
    "options": [
      "A design pattern for allowing objects to have their dependencies injected at runtime.",
      "A way to define dependencies in Android Studio.",
      "A method for declaring objects in Android.",
      "A technique for creating objects in Android."
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Dependency Injection is a design pattern for allowing objects to have their dependencies injected at runtime. This makes code easier to test, maintain, and reuse."
  },
  {
    "question": "What is Dagger 2 in Android?",
    "level": "Advance",
    "options": [
      "A Java library for Dependency Injection",
      "A C++ library for Dependency Injection",
      "A Swift library for Dependency Injection",
      "A Kotlin library for Dependency Injection"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Dagger 2 is a Java library for Dependency Injection in Android. It provides a way to simplify the implementation of Dependency Injection in Android applications."
  },
  {
    "question": "Why should you use Dagger 2 in Android?",
    "level": "Advance",
    "options": [
      "To reduce boilerplate code.",
      "To make your code more readable.",
      "To simplify testing.",
      "All of the above."
    ],
    "correctAnswerIndex": 3,
    "explanation":
        "Dagger 2 can reduce boilerplate code, make your code more readable, and simplify testing, making it a useful tool for Android development."
  },
  {
    "question": "What are the components in Dagger 2?",
    "level": "Advance",
    "options": [
      "Modules and Components.",
      "Scopes and Providers.",
      "Injectors and Constructors.",
      "Services and Clients."
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Dagger 2 has two main components: Modules and Components. Modules provide objects that can be injected, while Components describe how those objects can be injected."
  },
  {
    "question": "What is a Module in Dagger 2?",
    "level": "Advance",
    "options": [
      "A class that provides objects that can be injected.",
      "A class that describes how objects can be injected.",
      "An interface that defines objects that can be injected.",
      "An interface that defines how objects can be injected."
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "A Module in Dagger 2 is a class that provides objects that can be injected. It defines methods that return the objects that can be injected, such as dependencies or configurations."
  },
  {
    "question": "What is Dagger Hilt in Android?",
    "level": "Advance",
    "options": [
      "A library for Dependency Injection",
      "A library for creating user interfaces",
      "A library for managing navigation",
      "A library for managing data persistence"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Dagger Hilt is a library for Dependency Injection in Android. It provides a simplified and efficient way to implement Dependency Injection in Android applications."
  },
  {
    "question": "What are the benefits of using Dagger Hilt in Android?",
    "level": "Advance",
    "options": [
      "Reduced boilerplate code.",
      "Simplified testing.",
      "Easier to maintain code.",
      "All of the above."
    ],
    "correctAnswerIndex": 3,
    "explanation":
        "Dagger Hilt can reduce boilerplate code, simplify testing, and make code easier to maintain, making it a useful tool for Android development."
  },
  {
    "question":
        "What is the difference between Dagger 2 and Dagger Hilt in Android?",
    "level": "Advance",
    "options": [
      "Dagger Hilt is a simplified version of Dagger 2.",
      "Dagger 2 is a simplified version of Dagger Hilt.",
      "Dagger Hilt and Dagger 2 are the same.",
      "Dagger Hilt and Dagger 2 are completely different."
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Dagger Hilt is a simplified and optimized version of Dagger 2, designed to make it easier and faster to implement Dependency Injection in Android applications."
  },
  {
    "question": "What is a Hilt Module in Android?",
    "level": "Advance",
    "options": [
      "A class that provides objects that can be injected.",
      "A class that describes how objects can be injected.",
      "A class that manages dependencies for an Android app.",
      "A class that manages the lifecycle of Android components."
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "A Hilt Module in Android is a class that provides objects that can be injected. It defines methods that return the objects that can be injected, such as dependencies or configurations."
  },
  {
    "question": "What is a Hilt Component in Android?",
    "level": "Advance",
    "options": [
      "A class that provides objects that can be injected.",
      "A class that describes how objects can be injected.",
      "An interface that defines objects that can be injected.",
      "An interface that defines how objects can be injected."
    ],
    "correctAnswerIndex": 1,
    "explanation":
        "A Hilt Component in Android is a class that describes how objects can be injected. It defines the relationship between modules and the objects they provide, and specifies how those objects can be injected into Android components."
  },
  {
    "question":
        "What does MVVM stand for in the context of Android architecture?",
    "level": "Advance",
    "options": [
      "Model-View-ViewModel",
      "Model-View-Variable-Model",
      "Model-View-View-Model",
      "Model-Variable-View-Model"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "MVVM stands for Model-View-ViewModel in the context of Android architecture."
  },
  {
    "question":
        "What is the main responsibility of the ViewModel in MVVM architecture?",
    "level": "Advance",
    "options": [
      "To handle user interactions",
      "To handle UI updates",
      "To manage data operations",
      "To communicate with the Model"
    ],
    "correctAnswerIndex": 2,
    "explanation":
        "The main responsibility of the ViewModel in MVVM architecture is to manage data operations and provide data to the View."
  },
  {
    "question": "What is the purpose of the Model in MVVM architecture?",
    "level": "Advance",
    "options": [
      "To handle user interactions",
      "To handle UI updates",
      "To manage data operations",
      "To communicate with the ViewModel"
    ],
    "correctAnswerIndex": 2,
    "explanation":
        "The purpose of the Model in MVVM architecture is to manage data operations, including fetching and manipulating data."
  },
  {
    "question":
        "What is the main responsibility of the View in MVVM architecture?",
    "level": "Advance",
    "options": [
      "To handle user interactions",
      "To handle UI updates",
      "To manage data operations",
      "To communicate with the Model"
    ],
    "correctAnswerIndex": 1,
    "explanation":
        "The main responsibility of the View in MVVM architecture is to handle UI updates and display data provided by the ViewModel."
  },
  {
    "question":
        "What is the main benefit of using MVVM architecture in Android?",
    "level": "Advance",
    "options": [
      "Improved code organization",
      "Easier testing",
      "Separation of concerns",
      "All of the above"
    ],
    "correctAnswerIndex": 3,
    "explanation":
        "The main benefit of using MVVM architecture in Android is improved code organization, easier testing, and separation of concerns."
  },
  {
    "question": "What is data binding in MVVM architecture?",
    "level": "Advance",
    "options": [
      "A way to connect the View and ViewModel",
      "A way to connect the Model and View",
      "A way to connect the Model and ViewModel",
      "A way to connect all three components"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Data binding is a way to connect the View and ViewModel in MVVM architecture and automatically update the UI when data changes."
  },
  {
    "question":
        "What is Model-View-ViewModel (MVVM) design pattern in Android Development?",
    "level": "Advance",
    "options": [
      "It is an architectural pattern that separates the presentation layer from the business logic",
      "It is a design pattern used to develop web applications",
      "It is a pattern used for database management",
      "It is a UI design pattern"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Model-View-ViewModel (MVVM) is an architectural pattern that separates the presentation layer from the business logic, making the code more maintainable and testable."
  },
  {
    "question": "What is the role of the ViewModel in MVVM design pattern?",
    "level": "Advance",
    "options": [
      "It acts as an interface between the Model and the View",
      "It is responsible for handling user interactions",
      "It manages the data displayed by the View",
      "It defines the overall structure of the application"
    ],
    "correctAnswerIndex": 1,
    "explanation":
        "In MVVM design pattern, the ViewModel is responsible for handling user interactions, managing the data displayed by the View and acts as an interface between the Model and the View."
  },
  {
    "question": "What is DataBinding in MVVM pattern?",
    "level": "Advance",
    "options": [
      "It is a way to bind data from the ViewModel to the View",
      "It is a way to bind data from the Model to the View",
      "It is a way to bind data between the Controller and the View",
      "It is a way to bind data between the View and the Database"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "DataBinding in MVVM is a way to bind data from the ViewModel to the View, making the code more maintainable and reducing the need for boilerplate code."
  },
  {
    "question": "Why is MVVM a better design pattern compared to MVC?",
    "level": "Advance",
    "options": [
      "MVVM is easier to understand and implement",
      "MVVM provides better separation of concerns between the Model, View, and ViewModel",
      "MVVM provides better performance compared to MVC",
      "All of the above"
    ],
    "correctAnswerIndex": 1,
    "explanation":
        "MVVM provides better separation of concerns between the Model, View, and ViewModel compared to MVC, making the code more maintainable and testable."
  },
  {
    "question": "What is the difference between MVVM and MVP design patterns?",
    "level": "Advance",
    "options": [
      "MVVM has better separation of concerns compared to MVP",
      "MVP has better separation of concerns compared to MVVM",
      "MVVM uses DataBinding while MVP does not",
      "MVP uses DataBinding while MVVM does not"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "MVVM has better separation of concerns compared to MVP and it also uses DataBinding to bind data from the ViewModel to the View."
  },
  {
    "question":
        "What is the main advantage of using Dagger 2 in an Android project?",
    "level": "Advance",
    "options": [
      "Reduced boilerplate code",
      "Faster build times",
      "Easier testing",
      "Improved performance"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "Dagger 2 is a popular Dependency Injection library for Android that helps reduce boilerplate code and increase the readability and maintainability of the code."
  },
  {
    "question": "What is the purpose of the @Module annotation in Dagger 2?",
    "level": "Advance",
    "options": [
      "To define a class that provides dependencies",
      "To define a class that depends on other dependencies",
      "To define a class that includes other modules",
      "To define a class that exports dependencies to other modules"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The @Module annotation is used to define a class that provides dependencies in Dagger 2. These dependencies can be provided through methods annotated with @Provides."
  },
  {
    "question": "What is the purpose of the @Inject annotation in Dagger 2?",
    "level": "Advance",
    "options": [
      "To declare a class as an injectable class",
      "To declare a method as an injectable method",
      "To declare a constructor as an injectable constructor",
      "To declare a field as an injectable field"
    ],
    "correctAnswerIndex": 2,
    "explanation":
        "The @Inject annotation is used to declare a constructor as an injectable constructor in Dagger 2. When a class is annotated with @Inject, Dagger 2 will automatically generate code to create instances of the class and satisfy any dependencies it has."
  },
  {
    "question": "What is the purpose of the @Component interface in Dagger 2?",
    "level": "Advance",
    "options": [
      "To specify the modules used by a component",
      "To specify the dependencies provided by a component",
      "To specify the injectable classes used by a component",
      "To specify the bindings used by a component"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The @Component interface in Dagger 2 is used to specify the modules used by a component. A component acts as a bridge between the classes that provide dependencies and the classes that need them."
  },
  {
    "question": "What is the purpose of the @Provides annotation in Dagger 2?",
    "level": "Advance",
    "options": [
      "To define a method that provides a dependency",
      "To define a constructor that provides a dependency",
      "To define a field that provides a dependency",
      "To define a class that provides a dependency"
    ],
    "correctAnswerIndex": 0,
    "explanation":
        "The @Provides annotation is used to define a method in a Dagger 2 @Module that provides a dependency. When a component needs a dependency, it will look for a method annotated with @Provides that provides the dependency it needs."
  }
];
