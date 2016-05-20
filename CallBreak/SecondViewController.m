//
//  SecondViewController.m
//  CallBreak
//
//  Created by adarshks on 5/19/16.
//  Copyright © 2016 adarshks. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UIWebViewDelegate>

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSError* error = nil;
    NSString *path = [[NSBundle mainBundle] pathForResource: @"help" ofType: @"html"];
    NSString *res = [NSString stringWithContentsOfFile: path encoding:NSUTF8StringEncoding error: &error];
    [_myWebView loadHTMLString:res baseURL:nil];
    _myWebView.scrollView.bounces = NO;
    _myWebView.delegate = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"start");
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
     NSLog(@"finished");
    
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error{
     NSLog(@"error %@",error);
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
