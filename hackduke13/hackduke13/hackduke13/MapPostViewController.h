//
//  MapPostViewController.h
//  hackduke13
//
//  Created by Lee Yu Zhou on 16/11/13.
//  Copyright (c) 2013 Felix Xiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface MapPostViewController : UIViewController<MKMapViewDelegate,MKAnnotation>;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *message;
@end
