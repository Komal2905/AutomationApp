//
//  FocusViewController.swift
//  AutomationApp
//
//  Created by ProjectHeena on 4/29/16.
//  Copyright © 2016 ProjectHeena. All rights reserved.
//

import UIKit
import SwiftCharts
import Alamofire
import Charts


class FocusViewController: UIViewController , ChartViewDelegate{

    @IBOutlet weak var barChartView: BarChartView!
    
    
    @IBOutlet weak var lineChartView: LineChartView!
    
    
    
    @IBOutlet weak var pieChartView: PieChartView!
    
    var barChartMonths: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // datasourse for Chart
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
        
        let unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
        
        barChartMonths = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        let barChartunitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 4.0, 18.0, 2.0, 4.0, 5.0, 4.0]
        
        setChart(months, values: unitsSold)
        
        
        setBarChart(months, values: barChartunitsSold)

                //multiLineChart()
        
        
    }

    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    func setChart(dataPoints: [String], values: [Double]) {
        
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
       
        
        let pieChartDataSet = PieChartDataSet(yVals: dataEntries, label: "Units Sold")
        
        
        let pieChartData = PieChartData(xVals: dataPoints, dataSet: pieChartDataSet)
       
        //pieChartDataSet.drawFilledEnabled = true
        
        
        //barChartView.drawCubicEnabled = YES
        
        
        pieChartView.data = pieChartData
        //pieChartView.drawRect(CGRect(x: 10, y: 10, width: 10, height: 10))
        
        var colors: [UIColor] = []
        
        for i in 0..<dataPoints.count {
            let red = Double(arc4random_uniform(256))
            let green = Double(arc4random_uniform(256))
            let blue = Double(arc4random_uniform(256))
            
            let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
            colors.append(color)
        }
        
        pieChartDataSet.colors = colors
        
        
    
        
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Sold")
        let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        lineChartView.data = lineChartData
        
    }

    
    
    func setBarChart(dataPoints: [String], values: [Double]) {
        barChartView.noDataText = "You need to provide data for the chart."
        
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "Units Sold")
        let chartData = BarChartData(xVals: barChartMonths, dataSet: chartDataSet)
        barChartView.data = chartData
        
        barChartView.descriptionText = ""
        
        chartDataSet.colors = [UIColor(red: 230/255, green: 126/255, blue: 34/255, alpha: 1)]
        //        chartDataSet.colors = ChartColorTemplates.colorful()
        
        barChartView.xAxis.labelPosition = .Bottom
        
        //        barChartView.backgroundColor = UIColor(red: 189/255, green: 195/255, blue: 199/255, alpha: 1)
        
        //        barChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
        barChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .EaseInBounce)
        
        let ll = ChartLimitLine(limit: 10.0, label: "Target")
        barChartView.rightAxis.addLimitLine(ll)
        
    }
    
    func chartValueSelected(chartView: ChartViewBase, entry: ChartDataEntry, dataSetIndex: Int, highlight: ChartHighlight) {
        print("\(entry.value) in \(barChartMonths[entry.xIndex])")
    }
    

    
    
    
    func multiLineChart()
    {
        let chartConfig = ChartConfigXY(
            xAxisConfig: ChartAxisConfig(from: 2, to: 14, by: 2),
            yAxisConfig: ChartAxisConfig(from: 0, to: 14, by: 2)
        )
        
        let chart = LineChart(
            frame: CGRectMake(0, 0, 290, 135),
            chartConfig: chartConfig,
            xTitle: "X axis",
            yTitle: "Y axis",
            lines: [
                (chartPoints: [(1.5, 2.6), (4.2, 5.1), (7.3, 7.0), (8.1, 8.5), (14.0, 14.0)], color:UIColorFromRGB(140))
            ]
        )
        
        self.view.addSubview(chart.view)
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
