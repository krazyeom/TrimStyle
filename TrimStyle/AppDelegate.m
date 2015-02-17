//
//  AppDelegate.m
//  TrimStyle
//
//  Created by Steve Yeom on 9/17/14.
//  Copyright (c) 2014 2nd Jobs. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  NSPasteboard*  pasteboard  = [NSPasteboard generalPasteboard];
  NSString *tempString = [pasteboard  stringForType:NSPasteboardTypeString];
  
  [pasteboard declareTypes:[NSArray arrayWithObject:NSStringPboardType] owner:nil];
  [pasteboard setString:tempString forType:NSStringPboardType];
  
  [NSApp terminate:self];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}

@end
