//
//  DetailViewController.h
//  FounderNinja
//
//  Created by Latchezar Mladenov on 10/26/16.
//  Copyright © 2016 Latchezar Mladenov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FounderNinja+CoreDataModel.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Event *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

