#  Post Project

## Description
This application opens to a home screen that allow user to put a username (no idea what happens if you don't enter anything in). User goes to a feed page that is a Table view populated with a list of posts.

This was meant to work like a little news feed.

If a user clicks on the post then they see the details and can edit. There is only one picture loaded in assests so unless the user enters a string that is a system image or "LootLoggerIcon", it may crash or at very least it won't show image.

This works piggy backs of off big nerd ranch LootLogger up to chapter 12.


## Coding Features:
- UINaviagation
- segue from home screen
- UITableViewController
- Custom UITableViewCell
- Id's for posts are calcuated in a way i've always loved. start counting for 0 and the first integer not being used by another user is picked as the user id.

