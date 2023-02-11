import SwiftUI

class ActivitiesMockStore {
    
        static let activities: [ActivitiesItem] = [
            ActivitiesItem(id: 0, activityName: "All", activityNameLabel: "New Releases", activityImage: "", selectedActivity: false)
        ]
    
    
    static let activityData: [ActivitiesData] = [
        
        
        ActivitiesData(id: 0, activitiesPlaces:
            [ActivitiesPlaces(id: 0, activityPlace: "1984", activityPlaceImage: "Unknown-2", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "Description", pointImage: "Unknown-2", pointDescription: "Nineteen Eighty-Four (also published as 1984) is a dystopian social science fiction novel and cautionary tale by English writer George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwell's ninth and final book completed in his lifetime. Thematically, it centres on the consequences of totalitarianism, mass surveillance and repressive regimentation of people and behaviours within society.[2][3] Orwell, a democratic socialist, modelled the authoritarian state in the novel on Stalinist Russia and Nazi Germany.[2][3][4] More broadly, the novel examines the role of truth and facts within societies and the ways in which they can be manipulated."),
                                                                                                                       
            ActivitiesFamousPoints(id: 1, pointName: "Information", pointImage: "all-american", pointDescription: "Full name: GIOVANNI MAGNICONTE\nHEIGHT: 6'2\nWEIGHT: 250 lbs.\nEYES: Blue \nHAIR: White, formerly blond"),
            
            ActivitiesFamousPoints(id: 2, pointName: "Information", pointImage: "all-american", pointDescription: "UNIVERSE: Earth-148611 \nOTHER ALIASES: John, Jack, Mr. Magnificent \nPLACE OF ORIGIN: Newburgh, New York\nEDUCATION: College graduate \nIDENTITY: Publicly known")
            ]),
             
             ActivitiesPlaces(id: 1, activityPlace: "The Shining", activityPlaceImage: "Unknown-3", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "BIOGRAPHY", pointImage: "clean1", pointDescription: "Lucas Bishop was born in the 21st Century A.D. of an alternate future timeline in which the mutant-hunting robot Sentinels had taken control of North America. In this timeline, Professor Charles Xavier and most of the members of the mutant team he founded, the X-Men, had been killed. Surviving mutants were hunted down and either killed or imprisoned within relocation camps."),
             
                 ActivitiesFamousPoints(id: 1, pointName: "Information", pointImage: "clean1", pointDescription: "Full name: LUCAS BISHOP\nHEIGHT: 6'6\nWEIGHT: 275 lbs.\nEYES: Brown, red when using powers \nHAIR: Black"),
                                                                                                                
            ActivitiesFamousPoints(id: 2, pointName: "Information", pointImage: "clean1", pointDescription: "UNIVERSE: Marvel Universe \nOTHER ALIASES: None \nPLACE OF ORIGIN: Mutant relocation camp in Brooklyn, New York on an alternate 21st Century Earth\nEDUCATION: Unrevealed \nIDENTITY: No dual identity")
                                                                                
                                                                                    
             ]),
             
             ActivitiesPlaces(id: 2, activityPlace: "Carrie", activityPlaceImage: "Unknown", famousPointsArray: [ActivitiesFamousPoints(id: 0, pointName: "BIOGRAPHY", pointImage: "man", pointDescription: "As the world's foremost analytical chemist, Kasloff felt someone with his scientific ability should be treated like a king. Embarking upon a life of crime using a liquid solvent he developed, Kasloff soon realized that he needed an experienced criminal's help to execute his heists. Kasloff concluded that he would earn the underworld's respect if he defeated Human Torch, so he developed a suit of flame-resistant super-asbestos and confronted the Torch."),
                 
              ActivitiesFamousPoints(id: 1, pointName: "Information", pointImage: "man", pointDescription: "Full name: PROFESSOR ORSON KASLOFF\nHEIGHT: 5'9\nWEIGHT: 160 lbs.\nEYES: Brown \nHAIR: Black"),
                                                                                                                                            
              ActivitiesFamousPoints(id: 2, pointName: "Information", pointImage: "man", pointDescription: "UNIVERSE: Marvel Universe \nOTHER ALIASES: None \nPLACE OF ORIGIN: Unrevealed \nEDUCATION: Ph.D. in analytical chemistry \nIDENTITY: Known to authorities")
             ])],
                      
            activityResources:
        
        [ActivityResource(id: 0, resourceName: "COMICS", resourceDescription: "MARVEL", resources:
            [ActivityResourcesItem(id: 0, resourceName: "", resourceImage: "clean", resourceDescription: "Comics"),
            ActivityResourcesItem(id: 1, resourceName: "", resourceImage: "thor", resourceDescription: "Comics"),
            ActivityResourcesItem(id: 2, resourceName: "", resourceImage: "xmen", resourceDescription: "Comics")]),
            
     ActivityResource(id: 1, resourceName: "MOVIES", resourceDescription: "Journey into the Marvel!", resources: [ActivityResourcesItem(id: 1, resourceName: "", resourceImage: "noway", resourceDescription: "MOVIES"),
            ActivityResourcesItem(id: 2, resourceName: "", resourceImage: "thor4", resourceDescription: "MOVIES"),
                ActivityResourcesItem(id: 3, resourceName: "", resourceImage: "gg3", resourceDescription: "MOVIES")]),
            
         ActivityResource(id: 2, resourceName: "TV SHOWS", resourceDescription: "Explore the characters and stories that shape Marvel TV!", resources: [ActivityResourcesItem(id: 1, resourceName: "", resourceImage: "moonknight", resourceDescription: "TV SHOWS"),
                                 ActivityResourcesItem(id: 2, resourceName: "", resourceImage: "shehulk", resourceDescription: "TV SHOWS"),
                                 ActivityResourcesItem(id: 3, resourceName: "", resourceImage: "loki", resourceDescription: "TV SHOWS")])
                            ]),

    
    ]
    static let shoppingCartData: [ActivitiesCartItem] = [
           ActivitiesCartItem(itemID: "1", itemName: "1984", itemPrice: 5, itemColor: "Novel", itemManufacturer: "George Orwel", itemImage: "Unknown-2"),
           ActivitiesCartItem(itemID: "2", itemName: "The Shining", itemPrice: 7, itemColor: "Novel", itemManufacturer: "Stephen King", itemImage: "Unknown-3"),
           ActivitiesCartItem(itemID: "3", itemName: "Carrie", itemPrice: 8, itemColor: "Novel", itemManufacturer: "Stephen King", itemImage: "Unknown")
       ]
 
    
}

