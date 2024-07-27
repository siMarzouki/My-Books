# My Books
In the Books App, users can track their reading progress, manage their reading wishlist, and explore various features to enhance their reading experience. This version of the app incorporates several Flutter widgets to create a rich and interactive user interface. Key widgets introduced in this app include `IconButton`, `TextField`, `CircleAvatar`, `Card`, `ListTile`, `Flexible`, `ListView`, `BottomNavigationBar`, and `showModalBottomSheet`.

## Key Widgets Used

### IconButton
- **Description**: `IconButton` is a widget that displays an icon that can be tapped to perform an action.
- **Use Case in Books App**: `IconButton` can be used for actions like adding a book to the wishlist or marking a book as read. It provides a compact and accessible way to trigger actions with icons.
- **Example Usage**: An `IconButton` with a heart icon to add a book to the wishlist or a checkmark icon to mark a book as read.

### TextField
- **Description**: `TextField` is a widget that allows users to input text.
- **Use Case in Books App**: `TextField` is used for searching books, adding notes, or entering book details. It provides a way for users to interactively search for books or manage their entries.
- **Example Usage**: A `TextField` for users to enter search queries or a `TextField` to add a book's title and author to their reading list.

### CircleAvatar
- **Description**: `CircleAvatar` is a widget that displays a circular avatar, typically used for user profile pictures or icons.
- **Use Case in Books App**: `CircleAvatar` can be used to display the book cover image or the user’s profile picture. It adds a visual element that helps in personalizing the app.
- **Example Usage**: Displaying a book's cover image in a `CircleAvatar` or showing the user’s profile picture in the app’s settings.

### Card
- **Description**: `Card` is a widget that creates a material design card, which can contain content and actions related to a single topic.
- **Use Case in Books App**: `Card` is ideal for displaying individual books or reading lists. It provides a consistent and visually appealing way to present information about each book.
- **Example Usage**: Wrapping book details like title, author, and cover image in a `Card` to create a visually distinct item in the list.

### ListTile
- **Description**: `ListTile` is a widget that represents a single row in a list with an optional leading icon, title, subtitle, and trailing widget.
- **Use Case in Books App**: `ListTile` can be used to create a list of books, showing the book title, author, and a trailing icon for actions like removing a book from the list.
- **Example Usage**: Using `ListTile` in a `ListView` to display each book in the reading list or wishlist.

### Flexible
- **Description**: `Flexible` is a widget that allows a child of a `Row`, `Column`, or `Flex` to expand and fill available space in the main axis.
- **Use Case in Books App**: `Flexible` can be used to create responsive layouts where book details and images adjust according to the available space.
- **Example Usage**: Using `Flexible` to ensure that book titles and cover images adapt to different screen sizes and orientations.

### ListView
- **Description**: `ListView` is a scrollable list of widgets that can be displayed vertically or horizontally.
- **Use Case in Books App**: `ListView` is ideal for displaying a long list of books, either in the reading list or wishlist. It provides a way to scroll through and manage a large number of items.
- **Example Usage**: Implementing `ListView` to show all the books a user is currently reading or has added to their wishlist.

### BottomNavigationBar
- **Description**: `BottomNavigationBar` is a widget that displays a navigation bar at the bottom of the screen, allowing users to switch between different sections of the app.
- **Use Case in Books App**: `BottomNavigationBar` can be used to navigate between the main sections of the app, such as the reading list, wishlist, and search functionality.
- **Example Usage**: A `BottomNavigationBar` with items like "Home," "Wishlist," and "Search" to provide easy navigation within the app.

### showModalBottomSheet
- **Description**: `showModalBottomSheet` is a function that displays a modal bottom sheet, which slides up from the bottom of the screen and can contain various widgets.
- **Use Case in Books App**: `showModalBottomSheet` can be used to display additional options or details related to a book, such as adding a book to the wishlist or viewing more information about it.
- **Example Usage**: Using `showModalBottomSheet` to show a detailed view of a book when a user taps on it, including options to add it to their reading list or wishlist.
