//
//  Lectii.m
//  Aplicatie
//
//  Created by Alexandru Vochescu on 07/08/14.
//  Copyright (c) 2014 Alexandru Vochescu. All rights reserved.
//

#import "Lectii.h"

@implementation Lectii

-(void)initializare
{
    self.lectii = @{@"Termodinamica" :
                        @[
                            @{@"Stari de agregare" :
                                  @[
                                      @{
                                      @"Introducere":
                                          @{
                                              @"Definitia 1" : @"Lorem ipsum pix",
                                              @"Definitia 2": @"Lorem ipsum stilou",
                                              @"Descrierea": @"Trolololo",
                                              @"imagine": @"stariDeAgregare.jpg"
                                            }
                                      },
                                    
                                      @{
                                      @"Evaporare":
                                          @{
                                              @"Definitia 1" : @"Lorem ipsum pix",
                                              @"Definitia 2": @"Lorem ipsum stilou",
                                              @"Descrierea": @"Trolololo",
                                              @"imagine": @"stariDeAgregare.jpg"
                                            }
                                      }
                                    ]
                              },
                            @{
                              @"Transformari de stare":
                                  @[
                                      @{
                                      @"Introducere":
                                          @{
                                              @"Definitia 1" : @"Lorem ipsum pix",
                                              @"Definitia 2": @"Lorem ipsum stilou",
                                              @"Descrierea": @"Trolololo",
                                              @"imagine": @"stariDeAgregare.jpg"
                                              }
                                      },
                                      @{
                                      @"Transformare izobara":
                                          @{
                                              @"Definitia 1" : @"Lorem ipsum pix",
                                              @"Definitia 2": @"Lorem ipsum stilou",
                                              @"Descrierea": @"Trolololo",
                                              @"imagine": @"stariDeAgregare.jpg"
                                              }
                                      }
                                      
                                    ]
                              }
                        ]
                    ,
                    @"Mecanica" :
                        @{
                        
                        }
                };
//    NSDictionary *dict = [self.lectii objectForKey:@"Termodinamica"];
//    dict.count;
//    for(NSString *key in dict )
//    {
//        id value = [dict valueForKey:key];
//        if ( [value isKindOfClass:[NSDictionary class]])
//        {
//        
//        }
//    }
}

@end
