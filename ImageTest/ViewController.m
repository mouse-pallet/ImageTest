//
//  ViewController.m
//  ImageTest
//
//  Created by 柳川優子 on 2015/09/26.
//  Copyright © 2015年 x. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    // 画像の生成
    UIImage *image = [UIImage imageNamed:@"image01.png"];
    //UIImageViewに画像を乗せる
    _iv = [[UIImageView alloc] initWithImage:image];
    //分かりやすく背景追加
    _iv.backgroundColor = [UIColor whiteColor];
    //UIImageViewの位置とサイズを指定
    [_iv setFrame:CGRectMake(50.0, 50.0, image.size.width, image.size.height)];
    //ビューに表示
    [self.view addSubview:_iv];
    
    /********
    // 画像を表示する
    UIImage *image = [UIImage imageNamed:@"image01.png"];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    imageView.center = CGPointMake(160, 240);
    [self.view addSubview:imageView];
    
    // ビューをx方向に10px，y方向に50px移動
    CGAffineTransform t1 = CGAffineTransformMakeTranslation(10, 50);
    
    // ビューを45度回転
    float angle = 45.0 * M_PI / 180;
    CGAffineTransform t2 = CGAffineTransformRotate(t1, angle);
    
    imageView.transform = t2;
     **********/
}


//タッチされたときに呼ばれるメソッド
- (void) touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event
{
    //タッチイベントを取り出す
    UITouch *touch = [touches anyObject];
    //タッチイベントから座標を取得
    CGPoint point = [touch locationInView:self.view];
    //画像(UIImageView)の中心座標とタッチイベントから取得した座標を同期
    _iv.center = point;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
