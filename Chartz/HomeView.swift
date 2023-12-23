//
//  ContentView.swift
//  Chartz
//
//  Created by Brandon Rodriguez on 12/19/23.
//

import SwiftUI
import Charts

struct HomeView: View {
    
    @State private var chartType = "Bar"
    
    private let chartTypes = ["Bar", "Point", "Line", "Area"]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Picker("Chartz", selection: $chartType) {
                        
                        ForEach(chartTypes, id: \.self) {
                            
                            Text($0)
                            
                        }
                        
                    }
                    .pickerStyle(.segmented)

                    if chartType == "Bar" {
                        
                        Chart {
                        
                            RuleMark(y: .value("Goal", 10_000))
                                .lineStyle(StrokeStyle(lineWidth: 1, dash: [5]))
                                .annotation(alignment: .leading) {
                        
                                    Text("Goal")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                        
                                }
                        
                            ForEach(MockData.moneyMonths) { moneyMonths in
                        
                                BarMark(x: .value("Month", moneyMonths.date, unit: .month), y: .value("Cash", moneyMonths.cash))
                                    .foregroundStyle(.pink.gradient)
                        
                            }
                        
                        }
                        .frame(height: 400)
                        .chartPlotStyle { plotContent in
                        
                            plotContent
                                .background(.mint.gradient.opacity(0.3))
                        
                        }
                        
                    } else if chartType == "Point" {
                        
                        Chart {
                        
                            RuleMark(y: .value("Goal", 10_000))
                                .lineStyle(StrokeStyle(lineWidth: 1, dash: [5]))
                                .annotation(alignment: .leading) {
                        
                                    Text("Goal")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                        
                                }
                        
                            ForEach(MockData.moneyMonths) { moneyMonths in
                        
                                PointMark(x: .value("Month", moneyMonths.date, unit: .month), y: .value("Cash", moneyMonths.cash))
                                    .foregroundStyle(.pink.gradient)
                        
                            }
                        
                        }
                        .frame(height: 400)
                        .chartPlotStyle { plotContent in
                        
                            plotContent
                                .background(.mint.gradient.opacity(0.3))
                        
                        }
                        
                    } else if chartType == "Line" {
                        
                        Chart {
                        
                            RuleMark(y: .value("Goal", 10_000))
                                .lineStyle(StrokeStyle(lineWidth: 1, dash: [5]))
                                .annotation(alignment: .leading) {
                        
                                    Text("Goal")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                        
                                }
                        
                            ForEach(MockData.moneyMonths) { moneyMonths in
                        
                                LineMark(x: .value("Month", moneyMonths.date, unit: .month), y: .value("Cash", moneyMonths.cash))
                                    .foregroundStyle(.pink.gradient)
                        
                            }
                        
                        }
                        .frame(height: 400)
                        .chartPlotStyle { plotContent in
                        
                            plotContent
                                .background(.mint.gradient.opacity(0.3))
                        
                        }
                        
                    } else {
                        
                        Chart {
                        
                            RuleMark(y: .value("Goal", 10_000))
                                .lineStyle(StrokeStyle(lineWidth: 1, dash: [5]))
                                .annotation(alignment: .leading) {
                        
                                    Text("Goal")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                        
                                }
                        
                            ForEach(MockData.moneyMonths) { moneyMonths in
                        
                                AreaMark(x: .value("Month", moneyMonths.date, unit: .month), y: .value("Cash", moneyMonths.cash))
                                    .foregroundStyle(.pink.gradient)
                        
                            }
                        
                        }
                        .frame(height: 400)
                        .chartPlotStyle { plotContent in
                        
                            plotContent
                                .background(.mint.gradient.opacity(0.3))
                        
                        }
                        
                    }
                    
                }
                
            }
            .navigationTitle("Chartz")
            .padding(.horizontal)
            .animation(.easeInOut, value: chartType)
            
        }
        
    }
    
}

#Preview {
    HomeView()
}
