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

- (NSColor *)color
{
	return self.graphicView.color;
}

- (void)setColor:(NSColor *)color
{
	self.graphicView.color = color;
	self.graphicView.needsDisplay = YES;
}

- (void)dealloc
{
	[_graphicView release];
	[_graphicsModel release];
	
	[super dealloc];
}

- (IBAction)refreshGraphic:(id)sender;
{
	self.graphicView.values = [self.graphicsModel doCalculations];
	self.graphicView.needsDisplay = YES;
}

- (void)loadView
{
	[super loadView];
	[self refreshGraphic:self];
}

- (void)setGraphicView:(GDGraphicView *)newGraphicView
{
	if (_graphicView != newGraphicView)
	{
		[_graphicView release];
		_graphicView = [newGraphicView retain];
	}
	[self refreshGraphic:self];
}

- (void)setGraphicsModel:(id<GDGraphicsModel>)newGraphicsModel
{
	if (_graphicsModel != newGraphicsModel)
	{
		[_graphicsModel release];
		_graphicsModel = [newGraphicsModel retain];
	}
	[self refreshGraphic:self];
}

@end
