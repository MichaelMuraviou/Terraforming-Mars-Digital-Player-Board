//
//  ContentView.swift
//  Terraforming Mars Digital Player Board
//
//  Created by Michael Muraviou on 9/6/21.
//

import SwiftUI

struct ContentView: View {
    // resource variables
    @State var terraformingRank = 0
    @State var credits = 0
    @State var creditProduction = 0
    @State var steel = 0
    @State var steelProduction = 0
    @State var titanium = 0
    @State var titaniumProduction = 0
    @State var plants = 0
    @State var plantProduction = 0
    @State var energy = 0
    @State var energyProduction = 0
    @State var heat = 0
    @State var heatProduction = 0
    @State var creditsInput = ""
    @State var steelInput = ""
    @State var titaniumInput = ""
    
    
    var body: some View {
            ScrollView {
                VStack {
                    VStack {
                        VStack {
                            HStack {
                                VStack {
                                    //allow user to pay for a card
                                    //get amount of each resource to pay
                                    TextField("Credits to pay:", text: $creditsInput)
                                        .multilineTextAlignment(.center
                                        )
                                        .keyboardType(.decimalPad)
                                    TextField("Steel to pay:", text: $steelInput)
                                        .multilineTextAlignment(.center)
                                        .keyboardType(.decimalPad)
                                    TextField("Titanium to pay", text: $titaniumInput)
                                        .multilineTextAlignment(.center
                                        )
                                        .keyboardType(.decimalPad)
                                    //pay for card
                                    Button(action: {
                                        credits -= Int(creditsInput) ?? 0
                                        steel -= Int(steelInput) ?? 0
                                        titanium -= Int(titaniumInput) ?? 0
                                        //dimisses keyboard from hackingwithswift.com/quick-start/swiftui/how-to-dismiss-the-keyboard-for-a-textfield
                                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)

                                    }) {
                                            Text("Pay for Card")
                                                .padding()
                                                .foregroundColor(.red)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 20)
                                                        .stroke(Color.red)
                                                )
                                                .padding()
                                        }
                                    Text("Terraforming Rank: \(terraformingRank)")
                                        .padding()
                                    Button(action: {
                                        terraformingRank += 1
                                    }) {
                                        Image(systemName:"plus.circle")
                                            .foregroundColor(.red)
                                    }
                                }
                            }
                            VStack {
                                HStack {
                                    HStack {
                                        HStack {
                                            VStack {
                                                Text("Credits")
                                                Text("\(credits)")
                                                    .padding()
                                                HStack {
                                                    Button(action:
                                                        {
                                                            credits += 1
                                                        }) {
                                                        HStack {
                                                            Image(systemName: "plus.circle")
                                                                //change icon color
                                                                .foregroundColor(.red)
                                                            Text("1")
                                                                .foregroundColor(Color.white)
                                                        }
                                                    }
                                                    Button(action: {
                                                        credits -= 1
                                                    }) {
                                                            Image(systemName: "minus.circle")
                                                                .foregroundColor(.red)
                                                    }
                                                }
                                            }.padding()
                                            VStack {
                                                Text("Credit Production")
                                                Text("\(creditProduction)")
                                                    .padding()
                                                HStack {
                                                    Button(action:
                                                            {
                                                                creditProduction += 1
                                                            }) {
                                                        HStack {
                                                            Image(systemName: "plus.circle")
                                                                .foregroundColor(.red)
                                                            Text("1")
                                                                .foregroundColor(Color.white)
                                                        }
                                                    }
                                                    Button(action:
                                                            {
                                                                creditProduction -= 1
                                                    }) {
                                                        Image(systemName:"minus.circle")
                                                            .foregroundColor(.red)
                                                    }
                                                }
                                            }
                                        }.padding()
                                    }
                                }
                                HStack {
                                    HStack {
                                        VStack {
                                            Text("Steel")
                                            Text("\(steel)")
                                                .padding()
                                            HStack {
                                                Button(action: {
                                                    steel += 1
                                                }) {
                                                    Image(systemName: "plus.circle")
                                                        .foregroundColor(Color.red)
                                                    Text("1")
                                                        .foregroundColor(Color.white)
                                                }
                                                Button(action: {
                                                    steel -= 1
                                                }) {
                                                    Image(systemName: "minus.circle")
                                                        .foregroundColor(.red)
                                                }
                                            }
                                        }
                                    }
                                    VStack {
                                        VStack {
                                            Text("Steel Production")
                                            Text("\(steelProduction)")
                                                .padding()
                                        }
                                        HStack {
                                            Button(action: {
                                                steelProduction += 1
                                            }) {
                                                Image(systemName: "plus.circle")
                                                    .foregroundColor(.red)
                                                Text("1")
                                                    .foregroundColor(Color.white)
                                            }
                                            Button(action: {
                                                steelProduction -= 1
                                            }) {
                                                Image(systemName: "minus.circle")
                                                    .foregroundColor(.red)
                                            }
                                        }
                                    }
                                }
                            }.padding()
                    }
                    HStack {
                        VStack {
                            Text("Titanium")
                            Text("\(titanium)")
                                .padding()
                            HStack {
                                Button(action: {
                                    titanium += 1
                                }) {
                                    Image(systemName:"plus.circle")
                                        .foregroundColor(.red)
                                    Text("1")
                                        .foregroundColor(Color.white)
                                }
                                Button(action: {
                                    titanium -= 1
                                }) {
                                    Image(systemName: "minus.circle")
                                        .foregroundColor(.red)
                                }
                            }
                        }
                        VStack {
                            VStack {
                                Text("Titanium Production")
                                Text("\(titaniumProduction)")
                                    .padding()
                            }
                            HStack {
                                Button(action: {
                                    titaniumProduction += 1
                                }) {
                                    Image(systemName: "plus.circle")
                                        .foregroundColor(.red)
                                    Text("1")
                                        .foregroundColor(Color.white)
                                }
                                Button(action: {
                                    titaniumProduction -= 1
                                }) {
                                    Image(systemName: "minus.circle")
                                        .foregroundColor(.red)
                                }
                            }
                        }
                    }.padding()
                }
                HStack {
                    VStack {
                        Text("Plants")
                        Text("\(plants)")
                            .padding()
                        HStack {
                            Button(action: {
                                plants += 1
                            }) {
                                Image(systemName:"plus.circle")
                                    .foregroundColor(.red)
                                Text("1")
                                    .foregroundColor(Color.white)
                            }
                            Button(action: {
                                plants -= 1
                            }) {
                                Image(systemName: "minus.circle")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                    VStack {
                        VStack {
                            Text("Plant Production")
                            Text("\(plantProduction)")
                                .padding()
                        }
                        HStack {
                            Button(action: {
                                plantProduction += 1
                            }) {
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.red)
                                Text("1")
                                    .foregroundColor(Color.white)
                            }
                            Button(action: {
                                plantProduction -= 1
                            }) {
                                Image(systemName: "minus.circle")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }.padding()
            }
        HStack {
            VStack {
                    Text("Energy")
                    Text("\(energy)")
                        .padding()
                    HStack {
                        Button(action: {
                            energy += 1
                        }) {
                            Image(systemName:"plus.circle")
                                .foregroundColor(.red)
                            Text("1")
                                .foregroundColor(Color.white)
                            }
                        Button(action: {
                            energy -= 1
                        }) {
                            Image(systemName: "minus.circle")
                                .foregroundColor(.red)
                        }
                    }
                }
                VStack {
                    VStack {
                        Text("Energy Production")
                        Text("\(energyProduction)")
                            .padding()
                    }
                    HStack {
                        Button(action: {
                            energyProduction += 1
                        }) {
                            Image(systemName: "plus.circle")
                                .foregroundColor(.red)
                            Text("1")
                                .foregroundColor(Color.white)
                        }
                        Button(action: {
                            energyProduction -= 1
                        }) {
                            Image(systemName: "minus.circle")
                                .foregroundColor(.red)
                        }
                    }
                }.padding()
            }
            HStack {
                VStack {
                    Text("Heat")
                    Text("\(heat)")
                        .padding()
                    HStack {
                        Button(action: {
                            heat += 1
                        }) {
                            Image(systemName:"plus.circle")
                                .foregroundColor(.red)
                            Text("1")
                                .foregroundColor(Color.white)
                        }
                        Button(action: {
                            heat -= 1
                        }) {
                            Image(systemName: "minus.circle")
                                .foregroundColor(.red)
                        }
                    }
                }
                VStack {
                    VStack {
                        Text("Heat Production")
                        Text("\(heatProduction)")
                            .padding()
                    }
                    HStack {
                        Button(action: {
                            heatProduction += 1
                        }) {
                            Image(systemName: "plus.circle")
                                .foregroundColor(.red)
                            Text("1")
                                .foregroundColor(Color.white)
                        }
                        Button(action: {
                            heatProduction -= 1
                        }) {
                            Image(systemName: "minus.circle")
                                .foregroundColor(.red)
                        }
                    }
                }
            }
            VStack {
                Text("Produce:")
                    .padding()
                Button(action: {
                    credits += creditProduction + terraformingRank
                    steel += steelProduction
                    titanium += titaniumProduction
                    plants += plantProduction
                    heat += energy + heatProduction
                    energy = energyProduction
                }) {
                    Image(systemName:"plus.square")
                        .foregroundColor(.red)
                }.padding()
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
