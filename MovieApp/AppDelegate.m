#import "AppDelegate.h"

#import "ViewController.h"
#import "SearchResultsViewController.h"

@implementation AppDelegate

#pragma mark UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] init];

    UIViewController *resultsViewController = [[SearchResultsViewController alloc] init];
    UISearchController *searchController = [[UISearchController alloc] initWithSearchResultsController:resultsViewController];
    searchController.hidesNavigationBarDuringPresentation = YES;
    searchController.searchBar.placeholder = @"Search for a Movie Title";
    searchController.obscuresBackgroundDuringPresentation = YES;
    UIViewController *viewController = [[UISearchContainerViewController alloc] initWithSearchController:searchController];
    viewController.title = @"Test";
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];

    return YES;
}

@end
