import SwiftUI

struct BucketListItemView: View {
    var item: CDBucketListItem
    
    var body: some View {
        TripForm {
            Section {
                VStack(alignment: .leading) {
                    TripGroupBox {
                        HStack {
                            Text(item.displayDetails)
                            Spacer()
                        }
                    }
                    TripGroupBox {
                        HStack {
                            Text("Reservations made: ")
                            Spacer()
                            if item.hasReservation {
                                Text("YES")
                            } else {
                                Text("NO")
                            }
                        }
                        HStack {
                            Text("Already in plan: ")
                            Spacer()
                            if item.isInPlan {
                                Text("YES")
                            } else {
                                Text("NO")
                            }
                        }
                    }
                }
            } header: {
                Text("Bucket List Item Details")
            }
        }
        .navigationTitle(item.displayTitle)
    }
}

#Preview {
    BucketListItemView(item: .preview)
        .environment(\.managedObjectContext,
                      PersistenceController.preview.container.viewContext)
}
