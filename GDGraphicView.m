//
//  GraphicView.m
//  GraphicsDrawer
//
//  Created by Илья on 05.11.11.
//  Copyright (c) 2011 Ilya Sergeev Home. All rights reserved.
//

#import "GDGraphicView.h"

@implementation GDGraphicView

@synthesize values = _values;
@synthesize color = _color;

- (void)dealloc
{
	[_values release];
	[_color release];
	
	[super dealloc];
}

#pragma mark -
#pragma mark Drawing

- (NSBezierPath*)besierPath:(NSRect)bounds
{
	NSUInteger loggerCount = self.values.count;
	if (loggerCount <= 1) return nil;
	
	NSBezierPath* path = [NSBezierPath bezierPath];
	NSPoint nextPoint = bounds.origin;	
	[path moveToPoint: nextPoint];
	
	double dx = bounds.size.width / (double)(loggerCount-1);
	double maxY = bounds.size.height;
	double startY = bounds.origin.y;
	
	for (int i = 0; i < loggerCount; ++i)
	{
		nextPoint.y = startY + maxY * [[self.values objectAtIndex:i] floatValue];		
		[path lineToPoint:nextPoint];		
		nextPoint.x += dx;
	}
	return path;
}

- (void)drawRect:(NSRect)dirtyRect;
{
	[self.color set];
	[NSBezierPath setDefaultLineWidth:1];
	
	NSBezierPath* path = [self besierPath:dirtyRect];
	[path stroke];
}

@end
