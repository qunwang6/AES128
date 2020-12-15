### AES128
* [Objective-C code for encrypt and decrypt by AES-128 encryption.](https://gist.github.com/matsuda/9204276)
* [iOS, Android, perl間で AES暗号化を行った通信をする | Supernova](http://blog.dealforest.net/2012/03/ios-android-per-aes-crypt-connection/)
* [nicklockwood/Base64: [DEPRECATED]](https://github.com/nicklockwood/Base64)

```
#import "NSData+AES.h"
#import "Base64.h"

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

```