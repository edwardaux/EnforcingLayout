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
@property (nonatomic, strong) IBOutlet NSView *subview;
@end

@implementation BDDebugView

-(void)updateConstraints {
	[super updateConstraints];

	// remove the Interface Builder placeholder constraints
	[self removeConstraints:[self constraints]];
	[self.subview removeConstraints:[self.subview constraints]];
	
	//  pin button one
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b1 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20.0]];
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:20.0]];
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b1 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:-60.0]];
	
	// pin button two
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b2 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20.0]];
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.b1 attribute:NSLayoutAttributeBottom multiplier:1.0 constant:20.0]];
	
	// pin subview
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.subview attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.b2 attribute:NSLayoutAttributeBottom multiplier:1.0 constant:20.0]];
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.subview attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20.0]];
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.subview attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:-20.0]];
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.subview attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:-20.0]];
	
	// pin button three
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b3 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.subview attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20.0]];
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b3 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.subview attribute:NSLayoutAttributeTop multiplier:1.0 constant:20.0]];
	
	// button heights
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:21.0]];
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:21.0]];
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b3 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:21.0]];
	
	// button widths
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b2 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.b1 attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0.0]];
	[self addConstraint:[NSLayoutConstraint constraintWithItem:self.b3 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.b1 attribute:NSLayoutAttributeWidth multiplier:1.0 constant:0.0]];
}

@end
