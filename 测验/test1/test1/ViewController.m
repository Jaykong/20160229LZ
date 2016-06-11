//
//  ViewController.m
//  test1
//
//  Created by Uno on 2016/6/10.
//  Copyright © 2016年 BrookZero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) NSString *str1;
@property (strong,nonatomic) NSString *str2;
@property (strong,nonatomic) NSString *str3;
@property (strong,nonatomic) NSString *str4;
@property (strong,nonatomic) NSString *str5;
@property (strong,nonatomic) NSArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)str1 {
    _str1 = @"広地豊際伸催敷流全入壊者月北。健一子夢訪育者式京名断外。名権者人特粗来必嗣共歌棋国代成議緊事。大畑必江堂首権明権化雄的用問世追。給本明年決標菓病多統立追健急格技。";
    return _str1;
}
-(NSString *)str2 {
    _str2 = @"求応批統育単婦線業内強者。田論道傷能問島竹物図在使来雲密個。去庁円売潟渡心望祭読録第。情際野話県降悠必記読界医。北高購隊楽母保雪智熊旅立田去入。呼禁情償氷来図暑講名件絶下。";
    return _str2;
}
-(NSString *)str3 {
    _str3 = @"直回家食問炭集戦正芸岡不遊死。紀六歩冷中農尚古桜出弘耳当生正降田秘嗅。属団性商形出丸整両戦軍変聞特速成民禁。斉謙衰気会戒印森音込連感覧項混寄本将士協。滞択認決書砂健幅案入負台所試。";
    return _str3;
}
-(NSString *)str4 {
    _str4 = @"跡出算吉焉臭見数理覚秘審学財者好経載。滋優育阪足飛物面予石目貢。愛本範記浜無将問提業振米。件供見書蛯助塊記事発部倉普込宿思百青。審表兵紙闘五危難薬写競京療長憎意写盗貢平。";
    return _str4;
}
-(NSString *)str5 {
    _str5 = @"変際税家省信止氏伴月後旅作気朝迎田考倒。学歯母速厳上押円来賠大教陥。気健調丸証豊受護戦政田性秋科提校。転属勢半見史横反元欲果治因弊口読将警。意金者了中社非北問決習都薫現京録役点福。";
    return _str5;
}

-(NSArray *)array {
    _array = [NSArray arrayWithObjects:self.str1,self.str2,self.str3,self.str4,self.str5, nil];
    return _array;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *string = [[UITableViewCell alloc] init];
    string.textLabel.textColor = [UIColor greenColor];
    string.textLabel.numberOfLines = 100;
    switch (indexPath.row) {
        case 0:{
            string.textLabel.text = self.array[0];
        }
            break;
        case 1:{
            string.textLabel.text = self.array[1];
        }
            break;
        case 2:{
            string.textLabel.text = self.array[2];
        }
            break;
        case 3:{
            string.textLabel.text = self.array[3];
        }
            break;
        default:{
            string.textLabel.text = self.array[4];
        }
            break;
    }
    return string;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    cell.textLabel.text = [self.array objectAtIndex:indexPath.row];
    CGSize size = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height;
}
@end
