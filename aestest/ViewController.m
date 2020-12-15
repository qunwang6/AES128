//
//  ViewController.m
//  aestest
//
//  Created by qun on 2020/12/15.
//

#import "ViewController.h"

#import "NSData+AES.h"
#import "Base64.h"


@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    
    

     
    NSData *cipherData;
    NSString *base64Text, *plainText;
    NSString *key    = @"";
    //############## Request(crypt) ##############
    plainText  = @"123456789";
    cipherData = [[plainText dataUsingEncoding:NSUTF8StringEncoding] AES128EncryptedDataWithKey:key];
    base64Text = [cipherData base64Encoding];
    NSLog(@"%@", base64Text);
    
    base64Text = @"uvNcRgwpu6KL1yRMdO686Q==";
    cipherData = [base64Text base64DecodedData];
    plainText  = [[NSString alloc] initWithData:[cipherData AES128DecryptedDataWithKey:key] encoding:NSUTF8StringEncoding];
    NSLog(@"%@", plainText);


    
}


@end
