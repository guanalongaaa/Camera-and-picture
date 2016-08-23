//
//  ViewController.m
//  01.22 图片测试
//
//  Created by 一路向北 on 16/1/22.
//  Copyright © 2016年 一路向北. All rights reserved.
//

#import "ViewController.h"

#import "MessagePhotoView.h"//图片视图 01.22
#import "ZBMessageShareMenuView.h"

@interface ViewController ()<MessagePhotoViewDelegate,ZBMessageShareMenuViewDelegate>


@property (nonatomic,strong) MessagePhotoView *photoView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self addOptionRighButton];
    
    //图片视图
    [self sharePhotoview];
}

- (void)sharePhotoview
{
    if (!self.photoView)
    {
        self.photoView = [[MessagePhotoView alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width, 200)];
        [self.view addSubview:self.photoView];
        self.photoView.delegate = self;
        
    }
}


//加载右边button
- (void) addOptionRighButton {
    UIButton *optionButton = [UIButton buttonWithType: UIButtonTypeCustom];
    [optionButton setFrame: CGRectMake(0, 20, 65, 40)];
    [optionButton setTitle:@"提交" forState:UIControlStateNormal];
    [optionButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [optionButton setAlpha:0.85];
    optionButton.titleLabel.font = [UIFont systemFontOfSize:14];
    [optionButton addTarget: self action: @selector(optionRightButtonAction) forControlEvents: UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView: optionButton];
}


- (void) optionRightButtonAction {
    //将界面中的信息提交到服务器
//    NSLog(@"%@",self.imgeArray);
    
}

//实现代理方法
-(void)addPicker:(UIImagePickerController *)picker{
    
    [self presentViewController:picker animated:YES completion:nil];
}

//08.23 相机调用跳转
-(void)addUIImagePicker:(UIImagePickerController *)picker
{
    [self presentViewController:picker animated:YES completion:nil];
}


#pragma mark - ZBMessageShareMenuView Delegate
- (void)didSelecteShareMenuItem:(ZBMessageShareMenuItem *)shareMenuItem atIndex:(NSInteger)index{
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
