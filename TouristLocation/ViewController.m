//
//  ViewController.m
//  TouristLocation
//
//  Created by tyhmeng on 17/1/16.
//  Copyright © 2017年 tyhmeng. All rights reserved.
//

#import "ViewController.h"
#import <BaiduMapAPI_Map/BMKMapView.h>
#import <BaiduMapAPI_Map/BMKPointAnnotation.h>
#import <BaiduMapAPI_Location/BMKLocationComponent.h>
@interface ViewController ()<BMKLocationServiceDelegate>

@property (nonatomic,strong) BMKMapView *mpV;

@end

@implementation ViewController
//ak   fyjc56POEoELIqKSFDyzZkrGvNazRt65

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *v = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 300)];
    v.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:v];
    
    BMKMapView *mpV = [[BMKMapView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 300)];
    mpV.logoPosition = BMKLogoPositionLeftTop;
    mpV.mapType = BMKMapTypeNone;
    [mpV setMapType:BMKMapTypeStandard];
//    [mpV setBaiduHeatMapEnabled:YES];
  mpV.compassPosition = CGPointMake(150, 160);
    [mpV setCompassImage:[UIImage imageNamed:@"icon_compass.png"]];
    [v addSubview:mpV];
        self.mpV = mpV;
    
//    [mpV setCompassPosition:CGPointMake(15, 15)];

    
    BMKLocationService *loc = [[BMKLocationService alloc]init];
    loc.delegate = self;
    [loc startUserLocationService];
    mpV.userTrackingMode = BMKUserTrackingModeFollow;
    mpV.showsUserLocation = YES;
    
    
}


- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation {


    NSLog(@"%@",userLocation);
    
    self.mpV.showsUserLocation = YES;
}






//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//
//        BMKPointAnnotation *annotation = [[BMKPointAnnotation alloc]init];
//        CLLocationCoordinate2D coor;
//        coor.latitude = 39.2;
//        coor.longitude = 119.8;
//        annotation.coordinate = coor;
//        annotation.title = @"当前位置是北京";
//        [self.mpV addAnnotation:annotation];
//}




- (BOOL)prefersStatusBarHidden {

    return YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
