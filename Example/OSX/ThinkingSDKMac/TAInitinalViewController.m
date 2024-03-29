//
//  TAInitinalViewController.m
//  ThinkingSDKMac
//
//  Created by yangxiong on 2022/7/5.
//

#import "TAInitinalViewController.h"
#import <ThinkingSDK/ThinkingSDK.h>
#import <MJExtension/MJExtension.h>

@interface TAInitinalViewController ()
@property (nonatomic, weak) IBOutlet NSTextField *appidTextField;
@property (nonatomic, weak) IBOutlet NSTextField *serverUrlTextField;

@end

@implementation TAInitinalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    NSString *appid = @"c636fb93fb854ffd961a6eed5316410b";
    NSString *url = @"https://receiver-ta-dev.thinkingdata.cn";
    self.appidTextField.stringValue = appid;
    self.serverUrlTextField.stringValue = url;
    [self initThinkingAnalytics];
}

- (IBAction)cancelAction:(NSButton *)button {
    [self dismissViewController:self];
}

- (IBAction)initAction:(id)sender {
    [self dismissViewController:self];
    [self initThinkingAnalytics];
}

- (void)initThinkingAnalytics {
    NSString *appid = @"c636fb93fb854ffd961a6eed5316410b";
    NSString *url = @"https://receiver-ta-dev.thinkingdata.cn";
    self.appidTextField.stringValue = appid;
    self.serverUrlTextField.stringValue = url;
    [ThinkingAnalyticsSDK setLogLevel:TDLoggingLevelDebug];
//    NSString *appid = self.appidTextField.stringValue;
//    NSString *url = self.serverUrlTextField.stringValue;
    TDConfig *config = [TDConfig new];
    config.appid = appid;
    config.configureURL = url;
    [ThinkingAnalyticsSDK startWithConfig:config];
    NSTimeInterval timer2 = [NSProcessInfo processInfo].systemUptime;
}


@end
