//
//  DetailView.swift
//  Scrumdinger
//
//  Created by 황민채 on 11/8/23.
//

import SwiftUI

struct DetailView: View {
    @Binding var scrum: DailyScrum

    @State private var editingScrum = DailyScrum.emptyScrum
    @State private var ispresentingEditView = false
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine) //결합하기 위해서
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person") // 하나 하나 리스트 요소로 꺼내오기
                }
            }
        }
        .navigationTitle(scrum.title)
        .toolbar {
            Button("Edit") {
                ispresentingEditView = true
                editingScrum = scrum
            }
        }
        .sheet(isPresented: $ispresentingEditView) {
            NavigationStack {
                DetailEditView(scrum: $editingScrum)
                    .navigationTitle(scrum.title)
                toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            ispresentingEditView = false
                            scrum = editingScrum
                        }
                    }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(scrum: .constant(DailyScrum.sampleData[0]))
        }
    }
}
