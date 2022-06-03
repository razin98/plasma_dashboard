const rootRoute = "/";

const overviewPageDisplayName = "Overview";
const overviewPageRoute = "/overview";

const profilePageDisplayName = "Profile";
const profilePageRoute = "/profile";

const donorsPageDisplayName = "Donors";
const donorsPageRoute = "/donors";

const reservationsPageDisplayName = "Reservations";
const reservationsPageRoute = "/reservations";

const reportsPageDisplayName = "Reports";
const reportsPageRoute = "/reports";

const settingsPageDisplayName = "Settings";
const settingsPageRoute = "/settings";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}



List<MenuItem> sideMenuItemRoutes = [
 MenuItem(overviewPageDisplayName, overviewPageRoute),
 MenuItem(profilePageDisplayName, profilePageRoute),
 MenuItem(donorsPageDisplayName, donorsPageRoute),
 MenuItem(reservationsPageDisplayName, reservationsPageRoute),
 MenuItem(reportsPageDisplayName, reportsPageRoute),
 MenuItem(settingsPageDisplayName, settingsPageRoute),
 MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
