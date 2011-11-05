//
//  GDGraphicsViewController.h
//  GraphicsDrawer
//
//  Created by Илья on 05.11.11.
//  Copyright (c) 2011 Ilya Sergeev Home. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class GDGraphicView;
@protocol GDGraphicsModel;

@interface GDGraphicsViewController : NSViewController

@property (nonatomic, retain) IBOutlet GDGraphicView* graphicView;
@property (nonatomic, retain) IBOutlet id<GDGraphicsModel> graphicsModel;

@property (nonatomic, assign) NSColor* color;

- (IBAction)refreshGraphic:(id)sender;

@end
