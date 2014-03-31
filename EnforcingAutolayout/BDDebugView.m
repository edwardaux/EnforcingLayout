//
//  BDDebugView.m
//  EnforcingAutolayout
//
//  Created by Craig Edwards on 1/04/2014.
//  Copyright (c) 2014 BlackDog Foundry. All rights reserved.
//

#import "BDDebugView.h"

@interface BDDebugView ()
@property (nonatomic, strong) IBOutlet NSButton *b1;
@property (nonatomic, strong) IBOutlet NSButton *b2;
@property (nonatomic, strong) IBOutlet NSButton *b3;
@end

@implementation BDDebugView

-(void)updateConstraints {
	[super updateConstraints];
	NSLog(@"Before %@", self.constraints);
	
	// according to Interface builder this constraint is already there.  However, if you dump out the constraints, it
	// doesn't exist (and so the third button doesn't have its width linked to the first button).  If we manually add
	// it here, then everything works just fine.
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b3
																									 attribute:NSLayoutAttributeWidth
																									 relatedBy:NSLayoutRelationEqual
																											toItem:self.b2
																									 attribute:NSLayoutAttributeWidth
																									multiplier:1.0
																										constant:0.0]];
	NSLog(@"After  %@", self.constraints);
}
@end
