//
//  Edi_QmVC.m
//  起名大全
//
//  Created by 陈晓宇 on 2021/5/26.
//

#import "Edi_QmVC.h"

@interface Edi_QmVC ()

@property (nonatomic, strong) UIView *SADView;

@property (nonatomic, strong) UIButton *SingleBtn;
@property (nonatomic, strong) UIButton *DoubleBtn;

@end

@implementation Edi_QmVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self SetQmUI];
}

- (void)SetQmUI{
    
    self.SADView = [[UIView alloc]init];
    [self.view addSubview:self.SADView];
//    self.SADView.backgroundColor = UIColor.redColor;
    
    self.SingleBtn = [[UIButton alloc]init];
    [self.SingleBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.SingleBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
    [self.SingleBtn setTitle:@"单名" forState:UIControlStateNormal];
    [self.SingleBtn setTitleColor:BLACK forState:UIControlStateNormal];
    [self.SingleBtn setTitleColor:WHITE forState:UIControlStateSelected];
    [self.SingleBtn addTarget:self action:@selector(selectBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    self.DoubleBtn = [[UIButton alloc]init];
    [self.DoubleBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.DoubleBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
    [self.DoubleBtn setTitle:@"双名" forState:UIControlStateNormal];
    [self.DoubleBtn setTitleColor:BLACK forState:UIControlStateNormal];
    [self.DoubleBtn setTitleColor:WHITE forState:UIControlStateSelected];
    [self.DoubleBtn addTarget:self action:@selector(selectBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.SADView sd_addSubviews:@[self.SingleBtn,self.DoubleBtn]];
    
    self.SADView.sd_layout
    .heightIs(60*HEIGHT)
    .leftSpaceToView(self.view, 100*WIDTH)
    .rightSpaceToView(self.view, 100*WIDTH)
    .topSpaceToView(self.view, TABH + 40*HEIGHT);
    
    
    self.SingleBtn.sd_layout
    .leftSpaceToView(self.SADView, 20*WIDTH)
    .centerYEqualToView(self.SADView);
    
    self.DoubleBtn.sd_layout
    .rightSpaceToView(self.SADView, 20*WIDTH)
    .centerYEqualToView(self.SADView);

    
    
    [self.SingleBtn setupAutoSizeWithHorizontalPadding:8 buttonHeight:24*HEIGHT];
    [self.DoubleBtn setupAutoSizeWithHorizontalPadding:8 buttonHeight:24*HEIGHT];
    
//    [self.SingleBtn setupAutoWidthFlowItems:@[self.SingleBtn,self.DoubleBtn] withPerRowItemsCount:2 verticalMargin:margin horizontalMargin:margin verticalEdgeInset:3 horizontalEdgeInset:10];

}

-(void)selectBtnClick:(UIButton *)send{
    if (!send.isSelected) {
        self.SingleBtn.selected = !self.SingleBtn.selected;
        send.selected = !send.selected;
        self.SingleBtn = send;
    }
}



@end
