//
//  ViewController.m
//  iyzicotest
//
//  Created by Tolga Seremet on 28.09.2022.
//

#import "ViewController.h"
#import <iyzicoSDK/iyzicoSDK.h>

@interface ViewController () <IyzicoDelegate> @end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Iyzico.delegate = self;
}

- (IBAction)initIyzico {

    [Iyzico.shared initializeWithClientIp:@"213.74.125.155"
                                 clientId:@"qumpara"
                             clientSecret:@"qumparaSecret"
                                  baseUrl:@"https://sandbox-consumerapigw.iyzipay.com/"
                           merchantApiKey:nil
                        merchantSecretKey:nil
                                 language:LanguageTURKISH];

}

- (IBAction)startCashout {

    [Iyzico.shared startCashOutWithBuyerEmail:@"ugur.ozdemir@kokteyl.com"
                                   buyerPhone:@"05447877069"
                                  walletPrice:100.00
                                    buyerName:@"Ugur"
                                 buyerSurname:@"Ozdemir"];
}

#pragma mark - <IyzicoDelegate>
- (void)didOperationSuccessWithMessage:(NSString * _Nonnull)message {
    NSLog(@"%@", message);
}

- (void)didOperationFailedWithState:(enum ResultCode)state message:(NSString * _Nonnull)message {
    NSLog(@"%@", message);
}

@end
