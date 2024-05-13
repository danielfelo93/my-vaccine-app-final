enum PAGES { login, home, error, products, homeScreen }

extension AppPageExtension on PAGES {
  String get screenPath {
    switch (this) {
      case PAGES.home:
        return "/";
      case PAGES.homeScreen:
        return "/home";
      case PAGES.login:
        return "/login";
      case PAGES.products:
        return "/products";
      case PAGES.error:
        return "/error";
      default:
        return "/";
    }
  }

  String get screenName {
    switch (this) {
      case PAGES.home:
        return "HOME";
         case PAGES.homeScreen:
        return "HOMESCREEN";
      case PAGES.login:
        return "LOGIN";
      case PAGES.products:
        return "PRODUCTS";
      case PAGES.error:
        return "ERROR";
      default:
        return "HOME";
    }
  }

  String get screenTitle {
    switch (this) {
      case PAGES.home:
        return "Home";
      case PAGES.homeScreen:
        return "Home";
      case PAGES.login:
        return "Login";
      case PAGES.error:
        return "Error";
      default:
        return "Home";
    }
  }
}
