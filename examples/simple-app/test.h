//
//  test.h
//  chromium-tabs
//
// Copyright (c) 2010 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE-chromium file.
//

#import <Foundation/Foundation.h>
// ChromiumTabs

// Describes the |CTBrowser| class which represents one set of tabs (a window).
#import <ChromiumTabs/CTBrowser.h>

// Describes the |CTBrowserWindowController| class which represents a window with
// tabs. It also manages one |CTBrowser| instance (owns the reference).
#import <ChromiumTabs/CTBrowserWindowController.h>

// Describes the |CTTabContents| class which represents the contents of a tab,
// including icon, title and state (loading, crashed, etc).
#import <ChromiumTabs/CTTabContents.h>

// Toolbar view and view controller
#import <ChromiumTabs/CTToolbarView.h>
#import <ChromiumTabs/CTToolbarController.h>

// Utilities
#import <ChromiumTabs/CTUtil.h>

@interface test : NSObject {
@private
    
}

@end
