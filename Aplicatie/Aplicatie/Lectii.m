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
                                          @[
                                              @{@"Definitia 1" : @"Lorem ipsum pix"},
                                              @{@"Definitia 2": @"Lorem ipsum stilou"},
                                              @{@"Descrierea": @"Trolololo"},
                                              @{@"imagine": @"stariDeAgregare.jpg"}
                                            ]
                                      },
                                    
                                      @{
                                      @"Evaporare":
                                          @[
                                              @{@"Definitia 1" : @"Lorem ipsum pix"},
                                              @{@"Definitia 2": @"Lorem ipsum stilou"},
                                              @{@"Descrierea": @"Trolololo"},
                                              @{@"imagine": @"stariDeAgregare.jpg"}
                                            ]
                                      }
                                    ]
                              },
                            @{
                              @"Transformari de stare":
                                  @[
                                      @{
                                      @"Introducere":
                                          @[
                                              @{@"Definitia 1" : @"Lorem ipsum pix"},
                                              @{@"Definitia 2": @"Lorem ipsum stilou"},
                                              @{@"Descrierea": @"Trolololo"},
                                              @{@"imagine": @"stariDeAgregare.jpg"}
                                              ]
                                      },
                                      @{
                                      @"Transformare izobara":
                                          @[
                                              @{@"Definitia 1" : @"Lorem ipsum pix"},
                                              @{@"Definitia 2": @"Lorem ipsum stilou"},
                                              @{@"Descrierea": @"Trolololo"},
                                              @{@"imagine": @"stariDeAgregare.jpg"}
                                              ]
                                      }
                                      
                                    ]
                              }
                        ]
                    ,
                    @"Mecanica" :
                        @[
                            @{@"Forte" :
                                  @[
                                      @{
                                          @"Forta de frecare":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Forta elastica":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"}
                                                  ]
                                          }
                                      ]
                              },
                            @{
                                @"Cuplu de forte":
                                    @[
                                        @{
                                            @"Forta centrifuga":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"}
                                                    ]
                                            },
                                        @{
                                            @"Forta centripeta":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"}
                                                    ]
                                            }
                                        
                                        ]
                                }
                            ]
                    ,
                    @"Optica" :
                        @[
                            @{@"Reflectie si Refractie" :
                                  @[
                                      @{
                                          @"Reflexia":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Refractia":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Curcubeul":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Dispersia luminii":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"}
                                                  ]
                                          },
                                      
                                      ]
                              },
                            @{
                                @"Instrumente optice":
                                    @[
                                        @{
                                            @"Binoclul":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"}
                                                    ]
                                            },
                                        @{
                                            @"Lupa":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"}
                                                    ]
                                            }
                                        
                                        ]
                                }
                            ]
                    ,
                    @"Electricitate" :
                        @[
                            @{@"Circuit electric" :
                                  @[
                                      @{
                                          @"Curent electric":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Legea lui Ohm":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Legile lui Kirchoff":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Forta electromotoare":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"}
                                                  ]
                                          },
                                      
                                      ]
                              },
                            @{
                                @"Electromagnetism":
                                    @[
                                        @{
                                            @"Inductia electromagnetica":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"}
                                                    ]
                                            },
                                        @{
                                            @"Legea lui Faraday":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"}
                                                    ]
                                            }
                                        
                                        ]
                                },
                            @{
                                @"Electrodinamica":
                                    @[
                                        @{
                                            @"Forta Lorentz":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"}
                                                    ]
                                            },
                                        @{
                                            @"Ecuatiile Electrodinamicii":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"}
                                                    ]
                                            }
                                        
                                        ]
                                },
                            ]
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
