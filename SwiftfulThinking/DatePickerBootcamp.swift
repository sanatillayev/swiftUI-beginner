//
//  DatePickerBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 10/08/23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var date: Date = Date()
    let starting: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let ending: Date = Date()
    
    var body: some View {
        
        var dateFormatter: DateFormatter{
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            return formatter
        }
         
        VStack {
            Text("Selected date is ")
            Text(dateFormatter.string(from: date))
                .font(.headline)
            DatePicker("Select a date", selection: $date, in: starting...ending, displayedComponents: [.date])
            
    //        DatePicker(selection: $date, in: starting...ending, displayedComponents: [.date], label: {
    //            Text("Selected text")
    //        })
            
    //        DatePicker(selection: <#T##Binding<Date>#>, displayedComponents: <#T##DatePickerComponents#>, label: <#T##() -> View#>)
    //        DatePicker("Select the date", selection: $date)
                .font(.headline)
                .padding()
                .background(Color.gray.opacity(0.15))
                .cornerRadius(10)
            .padding()
//            .datePickerStyle(.wheel)
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
