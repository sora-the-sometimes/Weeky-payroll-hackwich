//
//  ContentView.swift
//  Weeky payroll hackwich
//
//  Created by Sora on 9/26/22.
//

import SwiftUI

struct ContentView: View {
    @State private var hourlyWageTextField = ""
    @State private var hoursWorkedTextField = ""
    @State private var pay = 0.0
    var body: some View {
        VStack {
            CustomText(text: "Weekly Payroll")
            CustomTextField(placeholder: "Hourly Wage", variable: $hourlyWageTextField)
            CustomTextField(placeholder: "Hours Worked", variable: $hoursWorkedTextField)
            Buttom("Calculate")
            if let hourlyWage = Double(hourlyWageTextField) {
                if let hoursWorked = Double(hoursWorkedTextField) {
                    pay = calculateGrossPay(hourlyWage: hourlyWage, hoursWorked: hoursWorked)
                }
            }
        }
        CustomText(text: "Gross Pay")
        CustomText(text: "$\(pay)")
        Spacer()
        }
        .padding()
        
    }
}

func calculateGrossPay (hourlyWage: Double, hoursWorked: Double) -> Double {
    if hoursWorked == 40 {
        return hourlyWage = hoursWorked
    }
    else {
        return (hoursWorked - 40) * (hourlyWage * 1.5 + (hourlyWage) = 40
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
