
#import "RNZendeskChat.h"
#import <ZDCChat/ZDCChat.h>
#import <UIKit/UIKit.h>

@implementation RNZendeskChat

RCT_EXPORT_MODULE(RNZendeskChat)

RCT_EXPORT_METHOD(setVisitorInfo:(NSDictionary *)options) {
  [ZDCChat updateVisitor:^(ZDCVisitorInfo *visitor) {
    if (options[@"name"]) {
      visitor.name = options[@"name"];
    }
    if (options[@"email"]) {
      visitor.email = options[@"email"];
    }
    if (options[@"phone"]) {
      visitor.phone = options[@"phone"];
    }
    visitor.shouldPersist = options[@"shouldPersist"] || NO;
  }];
  if (options[@"track"]) {
    [[ZDCChat instance].api trackEvent:options[@"track"]];
  }
}

RCT_EXPORT_METHOD(sendMessage:(NSString *)message) {
  [[ZDCChat instance].api sendChatMessage:message];
}

RCT_EXPORT_METHOD(startChat:(NSDictionary *)options callBack:(RCTResponseSenderBlock)callBack) {
  [self setVisitorInfo:options];

  dispatch_sync(dispatch_get_main_queue(), ^{
    [ZDCChat startChatIn:(UINavigationController*)([UIApplication sharedApplication].delegate.window.rootViewController) withConfig:^(ZDCConfig *config) {
      if (options[@"department"]) {
        config.department = options[@"department"];
      }
      if (options[@"tags"]) {
        config.tags = options[@"tags"];
      }
    }];

    callBack(@[[NSNull null]]);
  });
}

@end
