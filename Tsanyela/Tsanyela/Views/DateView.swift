//
//  DateView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/08.
//

import SwiftUI

struct DateView: View {
    let date: Date
    
    private var weekday: String {
        date.formatted(Date.FormatStyle()
            .weekday(.abbreviated)).localizedUppercase
    }
    
    private var day: String {
        date.formatted(Date.FormatStyle().day())
    }
    var body: some View {
        HStack {
            Text("\(weekday)").font(.headline)
            Text("\(day)").font(.headline)
        }
    }
}

#Preview {
    DateView(date: Date())
}
