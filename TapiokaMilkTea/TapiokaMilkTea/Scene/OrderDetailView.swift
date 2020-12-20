//
//  OrderDetail.swift
//  TapiokaMilkTea
//
//  Created by hiroshi on 2020/11/29.
//

import SwiftUI

struct OrderDetailView: View {
    var order: OrderEntity
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text(order.flavorName)
                .font(.title)
            if order.nataDeCoco {
                Text("Nata de coco")
            }
            if order.iceCream != 0 {
                Text(order.iceCreamName)
            }
            Text(order.other)
            Text("\(order.date, formatter: dateFormatter)")
                .font(.caption)
        }
    }
}

struct OrderDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            OrderDetailView(order: orderStore.orders[0])
            OrderDetailView(order: orderStore.orders[1])
        }
    }
}
