/*
Smultron version 3.1, 2007-05-19
Written by Peter Borg, pgw3@mac.com
Find the latest version at http://smultron.sourceforge.net

Copyright 2004-2007 Peter Borg
 
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at
 
http://www.apache.org/licenses/LICENSE-2.0
 
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
*/


#import "SMLStatusBarTextFieldCell.h"

@implementation SMLStatusBarTextFieldCell


- (id)initTextCell:(NSString *)text
{
    if (self = [super initTextCell:text]) {
		
//		statusBarGradient = [[CTGradient statusBarGradient] retain];
		
		[self setTitle:@" "];
		attributes = [[NSMutableDictionary dictionaryWithDictionary:[[self attributedStringValue] attributesAtIndex:0 effectiveRange:NULL]] mutableCopy];
		[attributes setValue:[NSFont systemFontOfSize:[NSFont smallSystemFontSize]]  forKey:NSFontAttributeName];
		[attributes setValue:[NSColor colorWithCalibratedWhite:0.05 alpha:0.9] forKey:@"NSColor"];
        return self;
    }
    return nil;
}


- (void)drawWithFrame:(NSRect)inFrame inView:(NSView *)inView
{
    // kengo:comment out
    //[statusBarGradient fillRect:inFrame angle:90];
	
    NSRect centeredRect = inFrame;
    centeredRect.size = [[self stringValue] sizeWithAttributes:attributes];
    centeredRect.origin.x += ((inFrame.size.width - centeredRect.size.width) / 2.0);
    centeredRect.origin.y = ((inFrame.size.height - centeredRect.size.height) / 2.0) - 1;
	
    [[self stringValue] drawInRect:centeredRect withAttributes:attributes];
}


- (void)dealloc
{
    attributes = nil;
}
@end
