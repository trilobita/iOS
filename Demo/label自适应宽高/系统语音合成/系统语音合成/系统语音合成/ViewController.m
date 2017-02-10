//
//  ViewController.m
//  系统语音合成
//
//  Created by PC-wzj on 16/8/30.
//  Copyright © 2016年 方得. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
{
    AVSpeechSynthesizer *_synthesizer;
    AVSpeechSynthesisVoice *_voice;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"忒忒已忒已忒忒" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor grayColor]];
    button.frame = CGRectMake(0, 0, 100, 60);
    button.center = self.view.center;
    [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    _voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"];
    
    _synthesizer = [[AVSpeechSynthesizer alloc] init];
    

    
}

- (void) clickButton:(UIButton *) button {
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:@"I am happy to join with you today in what will go down in history as the greatest demonstration for freedom in the history of our nation. Five score years ago, a great American, in whose symbolic shadow we stand today, signed the Emancipation Proclamation. This momentous decree came as a great beacon light of hope to millions of Negro slaves who had been seared in the flames of withering injustice. It came as a joyous daybreak to end the long night of bad captivity."];
    utterance.voice = _voice;
    utterance.rate = 0.5;
    [_synthesizer speakUtterance:utterance];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
