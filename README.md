# api_app

api_api is a simple Flutter application that fetches user data from a public API and displays it in a user-friendly manner. The application has two main screens - the home page that lists users and a details page that displays more information about a selected user.

## Table of Contents
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

### Prerequisites
Make sure you have the following installed:
- [Flutter](https://flutter.dev/docs/get-started/install)

### Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/MyApp.git
   ```

2. Navigate to the project directory:
   ```sh
   cd MyApp
   ```

3. Run the app:
   ```sh
   flutter run
   ```

## Usage

The app consists of two main screens:
1. **Home Page**: Lists users retrieved from a public API. Each user entry includes their email, first name, and a chevron icon to navigate to the details page.

2. **Details Page**: Displays additional information about the selected user, including their profile picture and full name.

### Code Structure

- `main.dart`: The entry point of the application, where the `MyApp` widget is defined.
- `homePage.dart`: Defines the `HomePage` widget, which displays a list of users.
- `userService.dart`: Contains the `UserService` class responsible for fetching user data from a public API.
- `detailsPage.dart`: Defines the `DetailsPage` widget, which displays detailed information about a selected user.

## Screenshots
![Screenshot_20240114_011813](https://github.com/dunMckenzie/api_app/assets/116878303/0003e531-80b5-4a2a-8235-9535c322de84)
![Screenshot_20240114_012028](https://github.com/dunMckenzie/api_app/assets/116878303/552047cb-943a-44fb-a003-80b135c5dbf8)



## Contributing

Feel free to contribute to this project. Follow these steps:
1. Fork the project
2. Create a new branch (`git checkout -b feature`)
3. Make your changes and commit them (`git commit -am 'Add feature'`)
4. Push to the branch (`git push origin feature`)
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
