//
//  OrderDetail.swift
//  TapiokaMilkTea
//
//  Created by hiroshi on 2020/11/29.
//

import SwiftUI

struct OrderDetailView: View {
    var order: OrderEntity
    
    var body: some View {
        VStack {
            Text(order.flavorName)
                .font(.title)
            if order.nataDeCoco {
                Text("nata de coco")
            }
        }
    }
}

struct OrderDetail_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetailView(order: orderStore.orders[0])
    }
}
