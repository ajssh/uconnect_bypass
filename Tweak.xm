#import <UIKit/UIKit.h>

%hook ANSMetadata
- (bool)isJailbroken {
    return 0;
}
%end

%hook Uconnect_AppStorePatchedSwiftClassNameAppDelegate
- (void)jailBreakDetected {
}
%end

%hook ANSMetadata
- (bool)computeIsJailbroken {
    return 0;
}
%end

%ctor {
    %init(Uconnect_AppStorePatchedSwiftClassNameAppDelegate = objc_getClass("Uconnect_AppStore.AppDelegate"));

}
