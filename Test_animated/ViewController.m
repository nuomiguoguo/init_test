//
//  ViewController.m
//  Test_animated
//
//  Created by yjs_luoyu on 2017/6/27.
//  Copyright © 2017年 yjs_luoyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIImageView * iconImageView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 65, 65)];
    [iconImageView setImage:[UIImage imageNamed:@"coin"]];
    iconImageView.center = self.view.center;
    [self.view addSubview:iconImageView];
    [self coinAnimate];
    // Do any additional setup after loading the view, typically from a nib.
}
//-(void)ActionFanzhuan{
//    
//    CABasicAnimation* rotationAnimation;
//    NSString * path = [NSString stringWithFormat:@"transform.rotation.y"];
//    rotationAnimation = [CABasicAnimation animationWithKeyPath:path];
//    rotationAnimation.fromValue = [NSNumber numberWithFloat:0];
//    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 *6 ];
//    rotationAnimation.duration = 6;
//    rotationAnimation.repeatCount = MAXFLOAT;
////    rotationAnimation.beginTime = 1;
////    rotationAnimation.beginTime = 2.0;
////    rotationAnimation.removedOnCompletion = NO;
//    rotationAnimation.fillMode = kCAFillModeRemoved;
//    rotationAnimation.timingFunction = [CAMediaTimingFunction  functionWithName:kCAMediaTimingFunctionEaseOut];
//    [iconImageView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
//
//    
//}
- (void)coinAnimate
{
    NSMutableArray * animateArray = [[NSMutableArray alloc] init];
    
    NSTimeInterval time = 0.2;
    NSTimeInterval timeCount = 0 ;

       
    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 * 4 ];
    rotationAnimation.duration = 2;
//        rotationAnimation.cumulative = YES;
//        rotationAnimation.repeatCount = MAXFLOAT;
//        rotationAnimation.fillMode =kCAFillModeForwards;
//    [animateArray addObject:rotationAnimation];
 
    CABasicAnimation * rotaionAnimaitn1;
    rotaionAnimaitn1 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    rotaionAnimaitn1.toValue = [NSNumber numberWithFloat: M_PI *1 ];
    rotaionAnimaitn1.duration = 1;
    rotaionAnimaitn1.beginTime = 2;
    //        rotationAnimation.cumulative = YES;
    //        rotationAnimation.repeatCount = MAXFLOAT;
    //        rotationAnimation.fillMode =kCAFillModeForwards;
//    [animateArray addObject:rotaionAnimaitn1];
    
//
////    [iconImageView.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
//
//    
    CAAnimationGroup *animGroup = [CAAnimationGroup animation];
    
    animGroup.animations = @[rotationAnimation,rotaionAnimaitn1];
    
    animGroup.duration = 3;
    
    animGroup.fillMode = kCAFillModeForwards;//不恢复原态
    animGroup.repeatCount = MAXFLOAT;
    animGroup.removedOnCompletion = NO;
    [iconImageView.layer addAnimation:animGroup forKey:nil];
    
 
//    [iconImageView.layer addAnimation:animGroup forKey:[NSString stringWithFormat:@"%ld",(long)imTag]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
