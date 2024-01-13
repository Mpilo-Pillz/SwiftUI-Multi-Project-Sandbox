//
//  StaffListView.swift
//  Tsanyela
//
//  Created by Mpilo Pillz on 2024/01/13.
//

import SwiftUI

struct StaffListView: View {
    @StateObject private var staff = Staff()
    
    var body: some View {
        NavigationStack {
            List(staff.staff) { staff in
                NavigationLink(value: staff) {
                    StaffItemView(staffItem: staff)
                }
            }.navigationDestination(for: StaffItem.self) { staff in
                StaffView(staffItem: staff)
            }
            .navigationTitle("Staff")
            .toolbar {
                ToolbarItem{
                    Button {
                        print("TODO implement")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    StaffListView()
}
