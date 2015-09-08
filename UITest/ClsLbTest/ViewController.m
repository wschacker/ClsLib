//
//  ViewController.m
//  ClsLbTest
//
//  Created by wangjl on 9/7/15.
//  Copyright (c) 2015 wangjl. All rights reserved.
//

#import "ViewController.h"
#import "CommentTableViewCell.h"


/**
 * Cell identifier for the sample cell
 */
static NSString *CommentTableViewCellIdentifier = @"CommentTableViewCellIdentifier";
@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation ViewController
- (instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    
    self.title = @"TableView Sample";
    
    self.dataArray = [NSMutableArray array];
    
    // Load sample data into the array
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"SampleData" ofType:@"plist"];
    [self.dataArray addObjectsFromArray:[NSArray arrayWithContentsOfFile:filePath]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
    self.tableViewMain = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableViewMain.delegate = self;
    self.tableViewMain.dataSource = self;
    [self.tableViewMain registerClass:[CommentTableViewCell class] forCellReuseIdentifier:CommentTableViewCellIdentifier];
    [self.view addSubview:self.tableViewMain];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CommentTableViewCell *cell = (CommentTableViewCell *)[tableView dequeueReusableCellWithIdentifier:CommentTableViewCellIdentifier forIndexPath:indexPath];
    
    // Load data
    NSDictionary *dataDict = self.dataArray[indexPath.row];
    // Sample image
    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"pic%i", arc4random_uniform(10) + 1]];
    [cell setupCellWithData:dataDict andImage:image];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    __weak typeof(self) weakSelf = self;
    CGSize defaultSize = DEFAULT_CELL_SIZE;
    
    // Create our size
    CGSize cellSize = [CommentTableViewCell sizeForCellWithDefaultSize:defaultSize setupCellBlock:^id(id<ResizingCellProtocol> cellToSetup) {
        // set values - there's no need to set the image here
        // because we have height and width constraints set, so
        // nil image will end up measuring to that size. If you don't
        // set the image contraints, it will end up being it's 1x intrinsic
        // size of the image, so you should set a default image when you
        // create the cell.
        NSDictionary *dataDict = weakSelf.dataArray[indexPath.row];
        [((CommentTableViewCell *)cellToSetup) setupCellWithData:dataDict andImage:nil];
        
        // return cell
        return cellToSetup;
    }];
    
    return cellSize.height;
}

@end
