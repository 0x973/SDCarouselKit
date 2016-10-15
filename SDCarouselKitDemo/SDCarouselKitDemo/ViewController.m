//
//  ViewController.m
//  SDCarouselKitDemo
//
//  Created by Any on 02/10/2016.
//  Copyright © 2016 Any. All rights reserved.
//

#import "ViewController.h"
#import <SDCarouselKit/SDCarouselKit.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet SDCarouselKit *CarouseView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpUI];//纯代码版本
    [self setUpUI2];//SB版本
}


//纯代码方式
-(void)setUpUI{
    //创建轮播器对象并初始化在屏幕上的大小(支持第三方框架进行定义屏幕上的位置)
    SDCarouselKit *carousel = [[SDCarouselKit alloc]initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 200)];
    //清理本地缓存
    [SDCarouselKit clearDiskCache];
    //更改轮播器的占位图  默认为灰色的图片  无需加后缀
        carousel.placeImgName = @"123";
    //初始化一个数组  放进去要轮播的图片的"URL"或者[UIImage]  支出gif动态图片
    NSArray *arr = @[@"http://pic39.nipic.com/20140226/18071023_162553457000_2.jpg",@"http://image72.360doc.com/DownloadImg/2014/04/2301/40991904_2.jpg",@"http://image72.360doc.com/DownloadImg/2014/04/2301/40991904_4.jpg",[UIImage imageNamed:@"123.png"]];
    carousel.imageArray = arr;
    //改变PageControl的位置  默认为中下
    carousel.pagePosition = PositionBottomRight;
    //支持改变PageControl的默认颜色  默认为透明和白色
    [carousel setPageColor:[UIColor whiteColor] andCurrentPageColor:[UIColor redColor]];
    //改变轮播时候的模式  默认为轮播样式  ChangeModeDefault  具体请看头文件的注释
    carousel.changeMode = ChangeModeFade;
    //添加到子视图上
    [self.view addSubview:carousel];
}




//sb版本 (用法方法均一致 声明文件里写的类方法和对象方法都可以进行使用)需要自行进行拖拽控件
-(void)setUpUI2{
    _CarouseView.imageArray = @[[UIImage imageNamed:@"123.png"],@"http://image72.360doc.com/DownloadImg/2014/04/2301/40991904_2.jpg",@"http://pic39.nipic.com/20140226/18071023_162553457000_2.jpg",@"http://image72.360doc.com/DownloadImg/2014/04/2301/40991904_4.jpg"];
    _CarouseView.pagePosition = PositionBottomCenter;
}
@end
