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
                                              @{@"Starea de agregare" : @"Este o formă a materiei caracterizată prin anumite proprietăți fizice calitative, care se traduc printr-o anumită comportare la scară macroscopică."},
                                              @{@"Starile de agregare?": @"Solid, Lichid, Gaz"},
                                              @{@"Transformarile" : @"Transformari si stari de agregare\n\nTopirea și solidificarea\n\n\n Trecerea unei substanțe din stare solidă în lichidă se numește topire. Solidificarea este fenomenul invers topirii și constă în trecerea unei substanțe din stare lichidă în cea solidă.\nÎn general, topirea are loc prin absorbție de caldură (încălzire), iar solidificarea are loc prin cedare de caldură (răcire).\n\nLegile topirii și solidificării:\n1. Temperatura de topire rămâne constantă, dacă presiunea ramâne constantă. La fel și pentru solidificare;\n2. Temperatura de topire coincide cu cea de solidificare;\n3. În timpul topirii (respectiv a solidificării) volumul substanței se modifica astfel: majoritatea substanțelor își măresc volumul la topire și și-l micsorează la solidificare; excepții: apa, fonta și bismutul se comportă invers."},
                                              @{@"imagine": @"starideagregare.png"},
                                              @{@"video": @"https://www.youtube.com/watch?v=l1ByclJYJx8"}
                                            ]
                                      },
                                    
                                      @{
                                      @"Evaporare":
                                          @[
                                              @{@"Evaporarea" : @"Este procesul prin care atomii sau moleculele unui corp în stare lichidă acumulează suficientă energie pentru a ajunge în stare gazoasă"},
                                              @{@"Definitia2": @""},
                                              @{@"Despre Evaporare": @"Evaporația este una din cele două forme ale vaporizării, cealaltă formă fiind fierberea. Procesul invers evaporării este condensarea.\nTermenul de „evaporare” este sinonim cu cel de „evaporație”. Deși dicționarele nu fac o diferențiere între cele două noțiuni, fizicienii, care sunt preocupați mai mult de studiul mecanismului procesului, tind să prefere forma „evaporare”; pe de altă parte, meteorologii și hidrologii tind să utilizeze forma „evaporație” pentru a defini cantitatea de apă care se evaporă de la suprafața solului sau a unui corp de apă.\nProcesul prin care apa de pe o suprafață acoperită cu vegetație este evacuată în atmosferă este definit ca evapotranspirație (forma „evapotranspirare” nu există). Această diferențiere nu există în alte limbi."},
                                              @{@"imagine": @"evaporarea.jpg"},
                                              @{@"video": @""}
                                            ]
                                      },
                                      @{
                                      @"Test":
                                          @[
                                              @{@"Ce este evaporarea?" : @"ceva $mek"},
                                              @{@"La cate grade fierbe apa?": @"69"},
                                              @{@"De ce nu?":@"pentru ca"},
                                              @{@"Oare de ce nu?":@"pentru ca nu"},
                                              @{@"La cate grade?":@"30 de grade"},
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
                                              @{@"imagine": @"stariDeAgregare.jpg"},
                                              @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                              ]
                                      },
                                      @{
                                      @"Transformare izobara":
                                          @[
                                              @{@"Definitia 1" : @"Lorem ipsum pix"},
                                              @{@"Definitia 2": @"Lorem ipsum stilou"},
                                              @{@"Descrierea": @"Trolololo"},
                                              @{@"imagine": @"stariDeAgregare.jpg"},
                                              @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
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
                                                  @{@"imagine": @"stariDeAgregare.jpg"},
                                                  @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Forta elastica":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"},
                                                  @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
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
                                                    @{@"imagine": @"stariDeAgregare.jpg"},
                                                    @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                    ]
                                            },
                                        @{
                                            @"Forta centripeta":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"},
                                                    @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
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
                                                  @{@"imagine": @"stariDeAgregare.jpg"},
                                                  @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Refractia":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"},
                                                  @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Curcubeul":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"},
                                                  @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Dispersia luminii":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"},
                                                  @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
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
                                                    @{@"imagine": @"stariDeAgregare.jpg"},
                                                    @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                    ]
                                            },
                                        @{
                                            @"Lupa":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"},
                                                    @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
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
                                                  @{@"imagine": @"stariDeAgregare.jpg"},
                                                  @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Legea lui Ohm":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"},
                                                  @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Legile lui Kirchoff":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"},
                                                  @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                  ]
                                          },
                                      
                                      @{
                                          @"Forta electromotoare":
                                              @[
                                                  @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                  @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                  @{@"Descrierea": @"Trolololo"},
                                                  @{@"imagine": @"stariDeAgregare.jpg"},
                                                  @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
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
                                                    @{@"imagine": @"stariDeAgregare.jpg"},
                                                    @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                    ]
                                            },
                                        @{
                                            @"Legea lui Faraday":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"},
                                                    @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
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
                                                    @{@"imagine": @"stariDeAgregare.jpg"},
                                                    @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
                                                    ]
                                            },
                                        @{
                                            @"Ecuatiile Electrodinamicii":
                                                @[
                                                    @{@"Definitia 1" : @"Lorem ipsum pix"},
                                                    @{@"Definitia 2": @"Lorem ipsum stilou"},
                                                    @{@"Descrierea": @"Trolololo"},
                                                    @{@"imagine": @"stariDeAgregare.jpg"},
                                                    @{@"video": @"http://www.youtube.com/watch?v=fDXWW5vX-64"}
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
