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
	//MOCK!!! Delete this and insert your own logic.
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
