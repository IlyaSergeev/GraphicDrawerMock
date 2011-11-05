//
//  GDDefaultModel.m
//  GraphicsDrawer
//
//  Created by Илья on 05.11.11.
//  Copyright (c) 2011 Ilya Sergeev Home. All rights reserved.
//

#import "GDDefaultModel.h"

@implementation GDDefaultModel

- (NSNumber*)nextDouble
{
	return [NSNumber numberWithDouble:(double)rand()/RAND_MAX];
}

- (NSArray *)doCalculations
{
	//insert your logic here!!!
	return [NSArray arrayWithObjects:
			[self nextDouble], 
			[self nextDouble], 
			[self nextDouble], 
			[self nextDouble], 
			[self nextDouble], 
			[self nextDouble], 
			[self nextDouble], 
			nil];
}

@end
