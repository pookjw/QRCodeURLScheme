#import <UIKit/UIKit.h>

%hook _TtC4Toss11AppDelegate
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
	NSLog(@"%@", url.absoluteString);
	return %orig(app, url, options);
}
%end

%hook _TtC9KakaoTalk17TalkSceneDelegate
- (void)scene:(UIScene *)scene openURLContexts:(NSSet<UIOpenURLContext *> *)URLContexts {
	NSLog(@"%@", URLContexts.allObjects.firstObject.URL.absoluteString);
	%orig(scene, URLContexts);
}
%end

%hook NaverSearchAppDelegate
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
	NSLog(@"%@", url.absoluteString);
	return %orig(app, url, options);
}
%end

%hook AppDelegate
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
	NSLog(@"%@", url.absoluteString);
	return %orig(app, url, options);
}
%end

%hook _TtC4PASS11AppDelegate
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
	NSLog(@"%@", url.absoluteString);
	return %orig(app, url, options);
}
%end