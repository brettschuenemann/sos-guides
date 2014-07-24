/*
 * Copyright (c) 2014, GoInstant Inc., a salesforce.com company
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.
 *
 * Redistributions in binary form must reproduce the above copyright notice, this
 * list of conditions and the following disclaimer in the documentation and/or
 * other materials provided with the distribution.
 *
 * Neither the name of the {organization} nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import "SOSApplication.h"
#import <SOS/SOS.h>


@implementation SOSApplication

// Setup your SOS options here. For the purposes of this example we'll leave everything default.
// Later examples will extend this functionality to customize SOS behavior.
+ (void)setup {
}

+ (void)startSession {

  SOSOptions *opts = [self getSessionOptions];
  [[SOSSessionManager sharedInstance] startSessionWithOptions:opts completion:^(NSError *error, SOSSessionManager *sos) {
    if (error) {

      // Show the error.
      UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                      message:[error localizedDescription]
                                                     delegate:nil
                                            cancelButtonTitle:@"Ok"
                                            otherButtonTitles:nil];

      [alert show];
    }
  }];
}

// Return an options object used to start an SOS session.
// Be sure to replace the Account/Application information with your GoInstant Account/Application.
// The email will also have to match a valid user account in your Service Cloud org.
+ (SOSOptions *)getSessionOptions {

  // This settings object can be found in SOSExamples/Settings.plist
  NSString *path = [[NSBundle mainBundle] pathForResource:@"SOSSettings" ofType:@"plist"];
  NSDictionary *settings = [[NSDictionary alloc] initWithContentsOfFile:path];

  return [SOSOptions optionsWithAccount:settings[@"Account"]
                            application:settings[@"Application"]
                                  email:settings[@"Email"]];
}

@end
