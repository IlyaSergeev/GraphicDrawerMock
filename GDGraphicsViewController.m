//
//  GDGraphicsViewController.m
//  GraphicsDrawer
//
//  Created by Илья on 05.11.11.
//  Copyright (c) 2011 Ilya Sergeev Home. All rights reserved.
//

#import "GDGraphicsViewController.h"
#import "GDGraphicsModel.h"
#import "GDGraphicView.h"

@implementation GDGraphicsViewController

@synthesize graphicView = _graphicView;
@synthesize graphicsModel = _graphicsModel;

- (void)dealloc
{
	[_graphicView release];
	[_graphicsModel release];
	
	[super dealloc];
}

- (void)refreshGraphic
{
	self.graphicView.values = [self.graphicsModel doCalculations];
	self.graphicView.needsDisplay = YES;
}

- (void)loadView
{
	[super loadView];
	[self refreshGraphic];
}

- (void)setGraphicView:(GDGraphicView *)newGraphicView
{
	if (_graphicView != newGraphicView)
	{
		[_graphicView release];
		_graphicView = [newGraphicView retain];
	}
	[self refreshGraphic];
}

- (void)setGraphicsModel:(id<GDGraphicsModel>)newGraphicsModel
{
	if (_graphicsModel != newGraphicsModel)
	{
		[_graphicsModel release];
		_graphicsModel = [newGraphicsModel retain];
	}
	[self refreshGraphic];
}

@end
