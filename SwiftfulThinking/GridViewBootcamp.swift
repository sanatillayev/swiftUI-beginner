//
//  GridViewBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillayev on 04/03/24.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        
        Grid(alignment: .bottom, horizontalSpacing: 10, verticalSpacing: 6) {
            ForEach(0..<4) {columnIndex in
                GridRow {
                    ForEach(0..<4) {rowIndex in
                        let cellNumber = columnIndex * 4 + rowIndex + 1
                    
                        if cellNumber == 7 {
                            Color.clear
                                .gridCellUnsizedAxes([.vertical, .horizontal])
                        }else {
                            cell(cellNumber)
                        }
                    }
                }
            }
        }
//        Grid {
//            GridRow {
//                cell(1)
//                cell(1)
//                cell(1)
//                cell(1)
//
//            }
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//            GridRow {
//                cell(2)
//                cell(2)
//                cell(2)
//                cell(2)
//
//            }
//        }
    }
    
    
    private func cell(_ num: Int)-> some View {
        Text("\(num)")
            .font(.largeTitle)
            .padding()
            .background{ Color.blue }
    }
}

#Preview {
    GridViewBootcamp()
}
