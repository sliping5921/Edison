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

@property (nonatomic, strong) UITextField *FirstNameTF;
@property (nonatomic, strong) UITextField *BirthDateTF;

@property (nonatomic, strong) UIView *MAWView;
@property (nonatomic, strong) UIButton *ManBtn;
@property (nonatomic, strong) UIButton *WomanBtn;

@property (nonatomic, strong) UIButton *MakesureBtn;
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
    self.SingleBtn.tag = 100;
    [self.SingleBtn addTarget:self action:@selector(selectBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    self.DoubleBtn = [[UIButton alloc]init];
    [self.DoubleBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.DoubleBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
    [self.DoubleBtn setTitle:@"双名" forState:UIControlStateNormal];
    [self.DoubleBtn setTitleColor:BLACK forState:UIControlStateNormal];
    [self.DoubleBtn setTitleColor:WHITE forState:UIControlStateSelected];
    self.DoubleBtn.tag = 101;
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
    

    self.FirstNameTF = [[UITextField alloc]init];
    self.FirstNameTF.borderStyle = UITextBorderStyleRoundedRect;
    self.FirstNameTF.layer.borderWidth  = 0.7*WIDTH;
    self.FirstNameTF.layer.cornerRadius = 24*WIDTH;
    self.FirstNameTF.layer.masksToBounds = YES;
    
    
    self.BirthDateTF = [[UITextField alloc]init];
    self.BirthDateTF.borderStyle = UITextBorderStyleRoundedRect;
    self.BirthDateTF.layer.borderWidth  = 0.7*WIDTH;
    self.BirthDateTF.layer.cornerRadius = 24*WIDTH;
    self.BirthDateTF.layer.masksToBounds = YES;
    
    [self.view sd_addSubviews:@[self.FirstNameTF,self.BirthDateTF]];
    
    UIButton *FirstNameBTN = [[UIButton alloc]init];
    [self.view addSubview:FirstNameBTN];
    [FirstNameBTN setTitle:@"姓" forState:UIControlStateNormal];
    [FirstNameBTN setTitleColor:BLACK forState:UIControlStateNormal];
    FirstNameBTN.layer.borderWidth = 0.7*WIDTH;
    FirstNameBTN.layer.cornerRadius = 12*WIDTH;
    FirstNameBTN.backgroundColor = WHITE;
//    FirstNameBTN.layer.masksToBounds = YES;
    
    UIButton *BirthDateBTN = [[UIButton alloc]init];
    [self.view addSubview:BirthDateBTN];
    [BirthDateBTN setTitle:@"出生日期" forState:UIControlStateNormal];
    [BirthDateBTN setTitleColor:BLACK forState:UIControlStateNormal];
    BirthDateBTN.layer.borderWidth = 0.7*WIDTH;
    BirthDateBTN.layer.cornerRadius = 12*WIDTH;
    BirthDateBTN.backgroundColor = WHITE;
//    FirstNameBTN.layer.masksToBounds = YES;
    
    self.FirstNameTF.sd_layout
    .widthIs(SCREEN_WIDTH - 120*WIDTH)
    .heightIs(48*HEIGHT)
    .centerXEqualToView(self.view)
    .topSpaceToView(self.SADView, 40*HEIGHT);
    
    self.BirthDateTF.sd_layout
    .widthIs(SCREEN_WIDTH - 120*WIDTH)
    .heightIs(48*HEIGHT)
    .centerXEqualToView(self.view)
    .topSpaceToView(self.FirstNameTF, 40*HEIGHT);
    
    FirstNameBTN.sd_layout
    .bottomSpaceToView(self.FirstNameTF, -12*HEIGHT)
    .leftSpaceToView(self.view, 80*WIDTH);

    BirthDateBTN.sd_layout
    .bottomSpaceToView(self.BirthDateTF, -12*HEIGHT)
    .leftSpaceToView(self.view, 80*WIDTH);
    
    [FirstNameBTN setupAutoSizeWithHorizontalPadding:5*WIDTH buttonHeight:24*HEIGHT];
    [BirthDateBTN setupAutoSizeWithHorizontalPadding:5*WIDTH buttonHeight:24*HEIGHT];
    
//    FirstNameBTN.sd_cornerRadiusFromWidthRatio = @(0.5*WIDTH);
//    BirthDateBTN.sd_cornerRadiusFromWidthRatio = @(0.2*WIDTH);
    
    
    self.MAWView = [[UIView alloc]init];
    [self.view addSubview:self.MAWView];
//    self.MAWView.backgroundColor = UIColor.redColor;
    
    self.ManBtn = [[UIButton alloc]init];
    [self.ManBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.ManBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
    [self.ManBtn setTitle:@"男" forState:UIControlStateNormal];
    [self.ManBtn setTitleColor:BLACK forState:UIControlStateNormal];
    [self.ManBtn setTitleColor:WHITE forState:UIControlStateSelected];
    self.ManBtn.tag = 200;
    [self.ManBtn addTarget:self action:@selector(selectBtnClick1:) forControlEvents:UIControlEventTouchUpInside];
    
    self.WomanBtn = [[UIButton alloc]init];
    [self.WomanBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [self.WomanBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
    [self.WomanBtn setTitle:@"女" forState:UIControlStateNormal];
    [self.WomanBtn setTitleColor:BLACK forState:UIControlStateNormal];
    [self.WomanBtn setTitleColor:WHITE forState:UIControlStateSelected];
    self.WomanBtn.tag = 201;
    [self.WomanBtn addTarget:self action:@selector(selectBtnClick1:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.MAWView sd_addSubviews:@[self.ManBtn,self.WomanBtn]];
    
    self.MAWView.sd_layout
    .heightIs(60*HEIGHT)
    .leftSpaceToView(self.view, 60*WIDTH)
    .rightSpaceToView(self.view, 60*WIDTH)
    .topSpaceToView(self.BirthDateTF, 40*HEIGHT);
    
    
    self.ManBtn.sd_layout
    .leftSpaceToView(self.MAWView, 50*WIDTH)
    .centerYEqualToView(self.MAWView);
    
    self.WomanBtn.sd_layout
    .rightSpaceToView(self.MAWView, 50*WIDTH)
    .centerYEqualToView(self.MAWView);
    
    [self.ManBtn setupAutoSizeWithHorizontalPadding:8 buttonHeight:24*HEIGHT];
    [self.WomanBtn setupAutoSizeWithHorizontalPadding:8 buttonHeight:24*HEIGHT];
    
    self.MakesureBtn = [[UIButton alloc]init];
    [self.view addSubview:self.MakesureBtn];
    [self.MakesureBtn setTitle:@"确定" forState:UIControlStateNormal];
    [self.MakesureBtn setTitleColor:BLACK forState:UIControlStateNormal];
    self.MakesureBtn.layer.borderWidth = 0.7*WIDTH;
    self.MakesureBtn.layer.cornerRadius = 18*WIDTH;
    self.MakesureBtn.backgroundColor = WHITE;
    
    self.MakesureBtn.sd_layout
    .topSpaceToView(self.MAWView, 30*HEIGHT)
    .centerXEqualToView(self.view);
    
    [self.MakesureBtn setupAutoSizeWithHorizontalPadding:80*WIDTH buttonHeight:40*HEIGHT];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

-(void)selectBtnClick:(UIButton *)send{

    for (int i = 0; i < 2; i++) {
        if (send.tag == 100 + i) {
            send.selected = YES;
            continue;
        }
        UIButton *btn = (UIButton *)[self.view viewWithTag:i + 100];
        btn.selected = NO;
    }
    
}


-(void)selectBtnClick1:(UIButton *)send{

    for (int i = 0; i < 2; i++) {
        if (send.tag == 200 + i) {
            send.selected = YES;
            continue;
        }
        UIButton *btn = (UIButton *)[self.view viewWithTag:i + 200];
        btn.selected = NO;
    }
    
}

@end
