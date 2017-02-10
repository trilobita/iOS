//
//  ViewController.m
//  蒙版效果
//
//  Created by PC-wzj on 16/7/26.
//  Copyright © 2016年 方得. All rights reserved.
//

#import "ViewController.h"

#import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonCrypto.h>
#import <CommonCrypto/CommonDigest.h>

@interface ViewController ()
{
    UIView *_tempView;
    UIImageView *bgiv;
    UIImageView *mbiv;
    UIButton *button;
}

@end

static BOOL qwe = YES;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    bgiv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    bgiv.image = [UIImage imageNamed:@"640*1136"];
    [self.view addSubview:bgiv];
    
    
    _tempView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 0)];
    
    _tempView.clipsToBounds = YES;
    [self.view addSubview:_tempView];
    
    mbiv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    mbiv.image = [UIImage imageNamed:@"bgviewpng"];
    [_tempView addSubview:mbiv];
    
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"走起" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    
    [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    button.frame = CGRectMake(200, 200, 100, 50);
    
    [self.view addSubview:button];
    
    
}

- (void)clickButton:(UIButton *)button {
    [UIView animateWithDuration:1.0f animations:^{
        if (qwe) {
            _tempView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        } else {
            _tempView.frame = CGRectMake(0, 0, self.view.frame.size.width, 0);
        }
    }];
    
    [ViewController encryptUseDES:@"despassword123" key:@"fb78fcea"];
    
    qwe = !qwe;
}

+(NSString *) encryptUseDES:(NSString *)plainText key:(NSString *)key
{
    NSString *ciphertext = nil;
    NSData *textData = [plainText dataUsingEncoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [textData length];
    unsigned char buffer[1024];
    memset(buffer, 0, sizeof(char));
    size_t numBytesEncrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCEncrypt, kCCAlgorithmDES,
                                          kCCOptionPKCS7Padding | kCCOptionECBMode,
                                          [key UTF8String], kCCKeySizeDES,
                                          [key UTF8String],
                                          [textData bytes], dataLength,
                                          buffer, 1024,
                                          &numBytesEncrypted);
    
    NSLog(@"%@", cryptStatus);
    if (cryptStatus == kCCSuccess) {
        NSData *data = [NSData dataWithBytes:buffer length:(NSUInteger)numBytesEncrypted];
        Byte *testByte = (Byte *)[data bytes];
        NSString *hexStr=@"";
        for(int i=0;i<[data length];i++)
        {
            printf("%02X",testByte[i]);
            NSString *newHexStr = [NSString stringWithFormat:@"%x",testByte[i]&0xff]; ///16进制数
            if([newHexStr length]==1)
                hexStr = [NSString stringWithFormat:@"%@0%@",hexStr,newHexStr];
            else
                hexStr = [NSString stringWithFormat:@"%@%@",hexStr,newHexStr];
        }
        printf("\n");
        NSLog(@"%@", hexStr);
    }
    return ciphertext;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
