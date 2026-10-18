//
//  ContentView.swift
//  lectureTwo
//
//  Created by Mac on 2026-09-30.
//

import SwiftUI
enum MuscleGroup:CaseIterable{
    case chest
    case legs
    case back
    case shoulders
    case arms
}

//computed property
extension MuscleGroup{
    var displayName:String{
        switch self {
        case .chest:
            return "chest grp"
        case .legs:
            return "legs grp"
        case .back:
            return "back grp"
        case .shoulders:
            return "shoukders grp"
        case .arms :
            return "arms grp"
        }
    }
}
struct Workout{
    // stored property
    let name:String
    let muscleGroup:MuscleGroup
    let duratiiom:Int
    
        //lazyproperty
    lazy var iit :String = {
        
        return "iit"
    }()
}
struct ContentView: View {
    
    let workouts=[
        Workout(name:"Benchpress",muscleGroup:MuscleGroup.chest, duratiiom: 45),
        Workout(name:"Incline Benchpress",muscleGroup:MuscleGroup.chest, duratiiom: 45),
        Workout(name:"squats",muscleGroup:MuscleGroup.legs, duratiiom: 60),
        Workout(name:"pull ups",muscleGroup:MuscleGroup.back, duratiiom: 30)
        
        
    ]
    
    @ViewBuilder
    var greeting1: some View{
        Section{
            ForEach(workouts,id: \.name) { workout in
                VStack(alignment:.leading){
                    Text(workout.name)
                        .bold()
    
                    Text("\(workout.muscleGroup)")
    
                    Text("\(workout.duratiiom)")
                    

    
                }

            }
        }

    }
    
    @ViewBuilder
    var greeting2: some View{
        Section{
//                let filteredItems=workouts.filter(isLongWorkout)
            
            let filteredItems = workouts.filter {
                workout in workout.duratiiom>=50
            }
            
//                let filteredItems=workouts.filter{
//                    $0.duratiiom>=50
//                }
//
            ForEach(filteredItems,id: \.name) { workout in
                
                VStack(alignment:.leading){
                   
                        Text(workout.name)
                            .bold()
                        
                        Text("\(workout.muscleGroup)")
                        
                        Text("\(workout.duratiiom)")
                        
                    
    
                }

            }
        }
    }
    
    func isLongWorkout(workout:Workout) ->  Bool {
        workout.duratiiom>=50
    }
    
    
//    for int i=0,i<workouts.count,i++{
//        workouts[i]
//    }
    

//    ForEach item in workouts{
//        item
//    }
    
    var body: some View{

        List{
            greeting1
            
            greeting2

        }
        
//        ForEach(MuscleGroup.allCases,id: \.self){group in
////            Text(group.displayName)
//            
//            
//        
//        }
//        
//        Divider()
        
//        List(workouts, id: \.name){workout in
//                    VStack(alignment:.leading){
//                        Text(workout.name)
//                            .bold()
//
//                        Text("\(workout.muscleGroup)")
//
//                        Text("\(workout.duratiiom)")
//
////                        if(workout.duratiiom>50){
////                            Text("this is a long workout")
////                        }
//
//                    }
//
//
//                }
        
        
    }
}

#Preview {
    ContentView()
}
