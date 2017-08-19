import XCTest
@testable import WXKDarkSky

class WXKDarkSkyTests: XCTestCase {
    func testDecoder() {
		let testJSON = """
{"latitude":37.8267,"longitude":-122.4233,"timezone":"America/Los_Angeles","offset":-7,"currently":{"time":1503161013,"summary":"Mostly Cloudy","icon":"partly-cloudy-day","nearestStormDistance":3,"nearestStormBearing":31,"precipIntensity":0,"precipProbability":0,"temperature":58.48,"apparentTemperature":58.48,"dewPoint":56.32,"humidity":0.93,"windSpeed":4.71,"windGust":6.56,"windBearing":237,"visibility":7.72,"cloudCover":0.74,"pressure":1013.18,"ozone":297.67,"uvIndex":2},"minutely":{"summary":"Mostly cloudy for the hour.","icon":"partly-cloudy-day","data":[{"time":1503160980,"precipIntensity":0,"precipProbability":0},{"time":1503161040,"precipIntensity":0,"precipProbability":0},{"time":1503161100,"precipIntensity":0,"precipProbability":0},{"time":1503161160,"precipIntensity":0,"precipProbability":0},{"time":1503161220,"precipIntensity":0,"precipProbability":0},{"time":1503161280,"precipIntensity":0,"precipProbability":0},{"time":1503161340,"precipIntensity":0,"precipProbability":0},{"time":1503161400,"precipIntensity":0,"precipProbability":0},{"time":1503161460,"precipIntensity":0,"precipProbability":0},{"time":1503161520,"precipIntensity":0,"precipProbability":0},{"time":1503161580,"precipIntensity":0,"precipProbability":0},{"time":1503161640,"precipIntensity":0,"precipProbability":0},{"time":1503161700,"precipIntensity":0,"precipProbability":0},{"time":1503161760,"precipIntensity":0,"precipProbability":0},{"time":1503161820,"precipIntensity":0,"precipProbability":0},{"time":1503161880,"precipIntensity":0,"precipProbability":0},{"time":1503161940,"precipIntensity":0,"precipProbability":0},{"time":1503162000,"precipIntensity":0,"precipProbability":0},{"time":1503162060,"precipIntensity":0,"precipProbability":0},{"time":1503162120,"precipIntensity":0,"precipProbability":0},{"time":1503162180,"precipIntensity":0,"precipProbability":0},{"time":1503162240,"precipIntensity":0,"precipProbability":0},{"time":1503162300,"precipIntensity":0,"precipProbability":0},{"time":1503162360,"precipIntensity":0,"precipProbability":0},{"time":1503162420,"precipIntensity":0,"precipProbability":0},{"time":1503162480,"precipIntensity":0,"precipProbability":0},{"time":1503162540,"precipIntensity":0,"precipProbability":0},{"time":1503162600,"precipIntensity":0,"precipProbability":0},{"time":1503162660,"precipIntensity":0,"precipProbability":0},{"time":1503162720,"precipIntensity":0,"precipProbability":0},{"time":1503162780,"precipIntensity":0,"precipProbability":0},{"time":1503162840,"precipIntensity":0,"precipProbability":0},{"time":1503162900,"precipIntensity":0,"precipProbability":0},{"time":1503162960,"precipIntensity":0,"precipProbability":0},{"time":1503163020,"precipIntensity":0,"precipProbability":0},{"time":1503163080,"precipIntensity":0,"precipProbability":0},{"time":1503163140,"precipIntensity":0,"precipProbability":0},{"time":1503163200,"precipIntensity":0,"precipProbability":0},{"time":1503163260,"precipIntensity":0,"precipProbability":0},{"time":1503163320,"precipIntensity":0,"precipProbability":0},{"time":1503163380,"precipIntensity":0,"precipProbability":0},{"time":1503163440,"precipIntensity":0,"precipProbability":0},{"time":1503163500,"precipIntensity":0,"precipProbability":0},{"time":1503163560,"precipIntensity":0,"precipProbability":0},{"time":1503163620,"precipIntensity":0,"precipProbability":0},{"time":1503163680,"precipIntensity":0,"precipProbability":0},{"time":1503163740,"precipIntensity":0,"precipProbability":0},{"time":1503163800,"precipIntensity":0,"precipProbability":0},{"time":1503163860,"precipIntensity":0,"precipProbability":0},{"time":1503163920,"precipIntensity":0,"precipProbability":0},{"time":1503163980,"precipIntensity":0,"precipProbability":0},{"time":1503164040,"precipIntensity":0,"precipProbability":0},{"time":1503164100,"precipIntensity":0,"precipProbability":0},{"time":1503164160,"precipIntensity":0,"precipProbability":0},{"time":1503164220,"precipIntensity":0,"precipProbability":0},{"time":1503164280,"precipIntensity":0,"precipProbability":0},{"time":1503164340,"precipIntensity":0,"precipProbability":0},{"time":1503164400,"precipIntensity":0,"precipProbability":0},{"time":1503164460,"precipIntensity":0,"precipProbability":0},{"time":1503164520,"precipIntensity":0,"precipProbability":0},{"time":1503164580,"precipIntensity":0,"precipProbability":0}]},"hourly":{"summary":"Partly cloudy until tomorrow morning.","icon":"partly-cloudy-night","data":[{"time":1503158400,"summary":"Mostly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":60.54,"apparentTemperature":60.54,"dewPoint":57.31,"humidity":0.89,"windSpeed":3.59,"windGust":7.18,"windBearing":256,"visibility":8.81,"cloudCover":0.7,"pressure":1013.63,"ozone":297.83,"uvIndex":1},{"time":1503162000,"summary":"Mostly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":58.48,"apparentTemperature":58.48,"dewPoint":56.71,"humidity":0.94,"windSpeed":5.23,"windGust":6.33,"windBearing":232,"visibility":7.31,"cloudCover":0.76,"pressure":1013.02,"ozone":297.6,"uvIndex":2},{"time":1503165600,"summary":"Mostly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":60.4,"apparentTemperature":60.4,"dewPoint":56.86,"humidity":0.88,"windSpeed":5.58,"windGust":7.1,"windBearing":230,"visibility":8.25,"cloudCover":0.68,"pressure":1012.76,"ozone":297.48,"uvIndex":4},{"time":1503169200,"summary":"Partly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":62.45,"apparentTemperature":62.45,"dewPoint":56.9,"humidity":0.82,"windSpeed":6.56,"windGust":7.94,"windBearing":231,"visibility":8.91,"cloudCover":0.57,"pressure":1012.34,"ozone":297.45,"uvIndex":6},{"time":1503172800,"summary":"Partly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":64.57,"apparentTemperature":64.57,"dewPoint":57.2,"humidity":0.77,"windSpeed":7.86,"windGust":10.36,"windBearing":237,"visibility":9.33,"cloudCover":0.43,"pressure":1011.88,"ozone":297.48,"uvIndex":7},{"time":1503176400,"summary":"Partly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":65.64,"apparentTemperature":65.64,"dewPoint":57.4,"humidity":0.75,"windSpeed":9.07,"windGust":11.98,"windBearing":240,"visibility":9.29,"cloudCover":0.31,"pressure":1011.43,"ozone":297.45,"uvIndex":7},{"time":1503180000,"summary":"Partly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":65.9,"apparentTemperature":65.9,"dewPoint":57.49,"humidity":0.74,"windSpeed":9.66,"windGust":13.12,"windBearing":241,"visibility":9.33,"cloudCover":0.26,"pressure":1010.95,"ozone":297.23,"uvIndex":6},{"time":1503183600,"summary":"Clear","icon":"clear-day","precipIntensity":0,"precipProbability":0,"temperature":65.73,"apparentTemperature":65.73,"dewPoint":57.44,"humidity":0.75,"windSpeed":10.06,"windGust":14.19,"windBearing":239,"visibility":9.61,"cloudCover":0.24,"pressure":1010.67,"ozone":296.98,"uvIndex":4},{"time":1503187200,"summary":"Clear","icon":"clear-day","precipIntensity":0,"precipProbability":0,"temperature":64.92,"apparentTemperature":64.92,"dewPoint":57.61,"humidity":0.77,"windSpeed":9.96,"windGust":13.9,"windBearing":237,"visibility":9.34,"cloudCover":0.24,"pressure":1010.5,"ozone":296.79,"uvIndex":2},{"time":1503190800,"summary":"Partly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":63.34,"apparentTemperature":63.34,"dewPoint":57.56,"humidity":0.81,"windSpeed":9.6,"windGust":13.06,"windBearing":235,"visibility":9.69,"cloudCover":0.27,"pressure":1010.27,"ozone":296.78,"uvIndex":1},{"time":1503194400,"summary":"Partly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":61.25,"apparentTemperature":61.25,"dewPoint":57.51,"humidity":0.88,"windSpeed":8.98,"windGust":11.77,"windBearing":233,"visibility":8.65,"cloudCover":0.27,"pressure":1009.96,"ozone":296.82,"uvIndex":0},{"time":1503198000,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":59.57,"apparentTemperature":59.59,"dewPoint":57.47,"humidity":0.93,"windSpeed":8.51,"windGust":11.27,"windBearing":231,"visibility":8.61,"cloudCover":0.29,"pressure":1009.84,"ozone":296.98,"uvIndex":0},{"time":1503201600,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.6,"apparentTemperature":58.68,"dewPoint":57.48,"humidity":0.96,"windSpeed":7.88,"windGust":10.12,"windBearing":227,"visibility":7.73,"cloudCover":0.32,"pressure":1010.04,"ozone":297.21,"uvIndex":0},{"time":1503205200,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0.0018,"precipProbability":0.01,"precipType":"rain","temperature":58.18,"apparentTemperature":58.28,"dewPoint":57.47,"humidity":0.97,"windSpeed":7.55,"windGust":9.51,"windBearing":222,"visibility":6.73,"cloudCover":0.35,"pressure":1010.18,"ozone":297.39,"uvIndex":0},{"time":1503208800,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.11,"apparentTemperature":58.21,"dewPoint":57.42,"humidity":0.98,"windSpeed":7.21,"windGust":9.3,"windBearing":219,"visibility":6.03,"cloudCover":0.38,"pressure":1010.26,"ozone":297.64,"uvIndex":0},{"time":1503212400,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.06,"apparentTemperature":58.12,"dewPoint":57.2,"humidity":0.97,"windSpeed":7.23,"windGust":9.11,"windBearing":214,"visibility":9.68,"cloudCover":0.47,"pressure":1010.52,"ozone":297.85,"uvIndex":0},{"time":1503216000,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.11,"apparentTemperature":58.15,"dewPoint":57.13,"humidity":0.97,"windSpeed":6.65,"windGust":9.33,"windBearing":209,"visibility":10,"cloudCover":0.58,"pressure":1010.28,"ozone":298.05,"uvIndex":0},{"time":1503219600,"summary":"Mostly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.02,"apparentTemperature":58.06,"dewPoint":57.02,"humidity":0.96,"windSpeed":6.15,"windGust":9.32,"windBearing":203,"visibility":10,"cloudCover":0.65,"pressure":1010.08,"ozone":298.35,"uvIndex":0},{"time":1503223200,"summary":"Mostly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":57.89,"apparentTemperature":57.91,"dewPoint":56.87,"humidity":0.96,"windSpeed":5.64,"windGust":8.83,"windBearing":194,"visibility":10,"cloudCover":0.63,"pressure":1009.92,"ozone":298.56,"uvIndex":0},{"time":1503226800,"summary":"Mostly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":57.89,"apparentTemperature":57.89,"dewPoint":56.73,"humidity":0.96,"windSpeed":5.1,"windGust":8.11,"windBearing":187,"visibility":10,"cloudCover":0.6,"pressure":1009.82,"ozone":298.94,"uvIndex":0},{"time":1503230400,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58,"apparentTemperature":58,"dewPoint":56.59,"humidity":0.95,"windSpeed":4.53,"windGust":7.54,"windBearing":188,"visibility":10,"cloudCover":0.58,"pressure":1009.87,"ozone":299.74,"uvIndex":0},{"time":1503234000,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":57.71,"apparentTemperature":57.71,"dewPoint":56.44,"humidity":0.96,"windSpeed":4.05,"windGust":7.27,"windBearing":188,"visibility":10,"cloudCover":0.59,"pressure":1010.18,"ozone":301.34,"uvIndex":0},{"time":1503237600,"summary":"Mostly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":57.05,"apparentTemperature":57.05,"dewPoint":56.16,"humidity":0.97,"windSpeed":3.65,"windGust":7.17,"windBearing":191,"visibility":10,"cloudCover":0.61,"pressure":1010.68,"ozone":303.29,"uvIndex":0},{"time":1503241200,"summary":"Mostly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":56.84,"apparentTemperature":56.84,"dewPoint":56.08,"humidity":0.97,"windSpeed":3.59,"windGust":7.19,"windBearing":195,"visibility":10,"cloudCover":0.61,"pressure":1011.08,"ozone":305.02,"uvIndex":0},{"time":1503244800,"summary":"Partly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":57.83,"apparentTemperature":57.83,"dewPoint":56.39,"humidity":0.95,"windSpeed":3.88,"windGust":7.24,"windBearing":202,"visibility":10,"cloudCover":0.57,"pressure":1011.38,"ozone":306.21,"uvIndex":1},{"time":1503248400,"summary":"Partly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":59.78,"apparentTemperature":59.78,"dewPoint":56.65,"humidity":0.89,"windSpeed":4.18,"windGust":7.36,"windBearing":216,"visibility":10,"cloudCover":0.5,"pressure":1011.6,"ozone":307.06,"uvIndex":2},{"time":1503252000,"summary":"Partly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":61.92,"apparentTemperature":61.92,"dewPoint":56.88,"humidity":0.84,"windSpeed":5.03,"windGust":7.79,"windBearing":223,"visibility":10,"cloudCover":0.43,"pressure":1011.7,"ozone":307.57,"uvIndex":4},{"time":1503255600,"summary":"Partly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":63.9,"apparentTemperature":63.9,"dewPoint":57.07,"humidity":0.78,"windSpeed":6.14,"windGust":8.77,"windBearing":231,"visibility":10,"cloudCover":0.34,"pressure":1011.64,"ozone":307.48,"uvIndex":6},{"time":1503259200,"summary":"Clear","icon":"clear-day","precipIntensity":0,"precipProbability":0,"temperature":65.52,"apparentTemperature":65.52,"dewPoint":57.25,"humidity":0.75,"windSpeed":8.02,"windGust":10.07,"windBearing":230,"visibility":10,"cloudCover":0.22,"pressure":1011.45,"ozone":307.01,"uvIndex":8},{"time":1503262800,"summary":"Clear","icon":"clear-day","precipIntensity":0,"precipProbability":0,"temperature":66.31,"apparentTemperature":66.31,"dewPoint":57.35,"humidity":0.73,"windSpeed":9.13,"windGust":11.25,"windBearing":237,"visibility":9.89,"cloudCover":0.13,"pressure":1011.23,"ozone":306.66,"uvIndex":8},{"time":1503266400,"summary":"Clear","icon":"clear-day","precipIntensity":0,"precipProbability":0,"temperature":66.4,"apparentTemperature":66.4,"dewPoint":57.34,"humidity":0.73,"windSpeed":9.76,"windGust":12.26,"windBearing":242,"visibility":9.72,"cloudCover":0.11,"pressure":1010.9,"ozone":306.45,"uvIndex":6},{"time":1503270000,"summary":"Clear","icon":"clear-day","precipIntensity":0,"precipProbability":0,"temperature":66.06,"apparentTemperature":66.06,"dewPoint":57.25,"humidity":0.73,"windSpeed":10.43,"windGust":13.11,"windBearing":238,"visibility":10,"cloudCover":0.12,"pressure":1010.54,"ozone":306.29,"uvIndex":4},{"time":1503273600,"summary":"Clear","icon":"clear-day","precipIntensity":0,"precipProbability":0,"temperature":65.2,"apparentTemperature":65.2,"dewPoint":57.18,"humidity":0.75,"windSpeed":10.39,"windGust":13.43,"windBearing":243,"visibility":10,"cloudCover":0.13,"pressure":1010.36,"ozone":306.32,"uvIndex":2},{"time":1503277200,"summary":"Clear","icon":"clear-day","precipIntensity":0,"precipProbability":0,"temperature":63.71,"apparentTemperature":63.71,"dewPoint":57.18,"humidity":0.79,"windSpeed":9.84,"windGust":12.91,"windBearing":244,"visibility":10,"cloudCover":0.13,"pressure":1010.43,"ozone":306.5,"uvIndex":1},{"time":1503280800,"summary":"Clear","icon":"clear-day","precipIntensity":0,"precipProbability":0,"temperature":61.8,"apparentTemperature":61.8,"dewPoint":57.21,"humidity":0.85,"windSpeed":8.9,"windGust":11.84,"windBearing":245,"visibility":10,"cloudCover":0.14,"pressure":1010.7,"ozone":306.81,"uvIndex":0},{"time":1503284400,"summary":"Clear","icon":"clear-night","precipIntensity":0,"precipProbability":0,"temperature":60.17,"apparentTemperature":60.17,"dewPoint":57.26,"humidity":0.9,"windSpeed":8.1,"windGust":10.82,"windBearing":245,"visibility":10,"cloudCover":0.17,"pressure":1011.06,"ozone":307.28,"uvIndex":0},{"time":1503288000,"summary":"Clear","icon":"clear-night","precipIntensity":0,"precipProbability":0,"temperature":59.17,"apparentTemperature":59.19,"dewPoint":57.3,"humidity":0.94,"windSpeed":7.6,"windGust":9.97,"windBearing":244,"visibility":10,"cloudCover":0.21,"pressure":1011.55,"ozone":307.99,"uvIndex":0},{"time":1503291600,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.67,"apparentTemperature":58.71,"dewPoint":57.33,"humidity":0.95,"windSpeed":7.19,"windGust":9.16,"windBearing":241,"visibility":10,"cloudCover":0.28,"pressure":1012.13,"ozone":308.78,"uvIndex":0},{"time":1503295200,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.55,"apparentTemperature":58.6,"dewPoint":57.33,"humidity":0.96,"windSpeed":6.86,"windGust":8.5,"windBearing":239,"visibility":10,"cloudCover":0.35,"pressure":1012.56,"ozone":309.24,"uvIndex":0},{"time":1503298800,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.6,"apparentTemperature":58.65,"dewPoint":57.32,"humidity":0.95,"windSpeed":6.6,"windGust":8.09,"windBearing":236,"visibility":10,"cloudCover":0.45,"pressure":1012.72,"ozone":308.93,"uvIndex":0},{"time":1503302400,"summary":"Partly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.65,"apparentTemperature":58.69,"dewPoint":57.28,"humidity":0.95,"windSpeed":6.41,"windGust":7.82,"windBearing":233,"visibility":10,"cloudCover":0.57,"pressure":1012.73,"ozone":308.26,"uvIndex":0},{"time":1503306000,"summary":"Mostly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.57,"apparentTemperature":58.61,"dewPoint":57.27,"humidity":0.95,"windSpeed":6.2,"windGust":7.54,"windBearing":231,"visibility":10,"cloudCover":0.65,"pressure":1012.71,"ozone":307.67,"uvIndex":0},{"time":1503309600,"summary":"Mostly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.42,"apparentTemperature":58.47,"dewPoint":57.25,"humidity":0.96,"windSpeed":5.97,"windGust":7.09,"windBearing":230,"visibility":10,"cloudCover":0.66,"pressure":1012.62,"ozone":307.48,"uvIndex":0},{"time":1503313200,"summary":"Mostly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.45,"apparentTemperature":58.5,"dewPoint":57.25,"humidity":0.96,"windSpeed":5.75,"windGust":6.63,"windBearing":229,"visibility":10,"cloudCover":0.66,"pressure":1012.5,"ozone":307.46,"uvIndex":0},{"time":1503316800,"summary":"Mostly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.55,"apparentTemperature":58.59,"dewPoint":57.25,"humidity":0.95,"windSpeed":5.54,"windGust":6.47,"windBearing":229,"visibility":10,"cloudCover":0.65,"pressure":1012.55,"ozone":307.58,"uvIndex":0},{"time":1503320400,"summary":"Mostly Cloudy","icon":"partly-cloudy-night","precipIntensity":0,"precipProbability":0,"temperature":58.3,"apparentTemperature":58.36,"dewPoint":57.28,"humidity":0.96,"windSpeed":5.34,"windGust":6.78,"windBearing":229,"visibility":10,"cloudCover":0.65,"pressure":1012.89,"ozone":308.17,"uvIndex":0},{"time":1503324000,"summary":"Mostly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":57.67,"apparentTemperature":57.75,"dewPoint":57.18,"humidity":0.98,"windSpeed":5.16,"windGust":7.39,"windBearing":230,"visibility":10,"cloudCover":0.65,"pressure":1013.4,"ozone":308.91,"uvIndex":0},{"time":1503327600,"summary":"Mostly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":57.37,"apparentTemperature":57.47,"dewPoint":57.14,"humidity":0.99,"windSpeed":5.15,"windGust":8.02,"windBearing":230,"visibility":10,"cloudCover":0.65,"pressure":1013.87,"ozone":309.35,"uvIndex":0},{"time":1503331200,"summary":"Mostly Cloudy","icon":"partly-cloudy-day","precipIntensity":0,"precipProbability":0,"temperature":57.99,"apparentTemperature":58.09,"dewPoint":57.37,"humidity":0.98,"windSpeed":5.35,"windGust":8.56,"windBearing":231,"visibility":10,"cloudCover":0.64,"pressure":1014.29,"ozone":309.18,"uvIndex":1}]},"daily":{"summary":"No precipitation throughout the week, with temperatures bottoming out at 65°F on Tuesday.","icon":"clear-day","data":[{"time":1503126000,"summary":"Partly cloudy throughout the day.","icon":"partly-cloudy-day","sunriseTime":1503149418,"sunsetTime":1503197944,"moonPhase":0.93,"precipIntensity":0.0003,"precipIntensityMax":0.0018,"precipIntensityMaxTime":1503205200,"precipProbability":0.03,"precipType":"rain","temperatureMin":58.11,"temperatureMinTime":1503208800,"temperatureMax":65.9,"temperatureMaxTime":1503180000,"apparentTemperatureMin":58.21,"apparentTemperatureMinTime":1503208800,"apparentTemperatureMax":65.9,"apparentTemperatureMaxTime":1503180000,"dewPoint":57.03,"humidity":0.87,"windSpeed":6.02,"windGust":14.19,"windGustTime":1503183600,"windBearing":238,"visibility":8.84,"cloudCover":0.49,"pressure":1011.97,"ozone":297.65,"uvIndex":7,"uvIndexTime":1503172800},{"time":1503212400,"summary":"Partly cloudy until afternoon.","icon":"partly-cloudy-day","sunriseTime":1503235870,"sunsetTime":1503284265,"moonPhase":0.97,"precipIntensity":0,"precipIntensityMax":0,"precipProbability":0,"temperatureMin":56.84,"temperatureMinTime":1503241200,"temperatureMax":66.4,"temperatureMaxTime":1503266400,"apparentTemperatureMin":56.84,"apparentTemperatureMinTime":1503241200,"apparentTemperatureMax":66.4,"apparentTemperatureMaxTime":1503266400,"dewPoint":56.97,"humidity":0.88,"windSpeed":6.34,"windGust":13.43,"windGustTime":1503273600,"windBearing":226,"visibility":10,"cloudCover":0.38,"pressure":1010.9,"ozone":304.53,"uvIndex":8,"uvIndexTime":1503259200},{"time":1503298800,"summary":"Mostly cloudy throughout the day.","icon":"partly-cloudy-day","sunriseTime":1503322322,"sunsetTime":1503370584,"moonPhase":0,"precipIntensity":0.0003,"precipIntensityMax":0.0012,"precipIntensityMaxTime":1503306000,"precipProbability":0.01,"precipType":"rain","temperatureMin":57.37,"temperatureMinTime":1503327600,"temperatureMax":65.38,"temperatureMaxTime":1503352800,"apparentTemperatureMin":57.47,"apparentTemperatureMinTime":1503327600,"apparentTemperatureMax":65.38,"apparentTemperatureMaxTime":1503352800,"dewPoint":57.44,"humidity":0.9,"windSpeed":7.14,"windGust":13.05,"windGustTime":1503356400,"windBearing":236,"visibility":10,"cloudCover":0.56,"pressure":1013.81,"ozone":306.7,"uvIndex":7,"uvIndexTime":1503345600},{"time":1503385200,"summary":"Partly cloudy until evening.","icon":"partly-cloudy-day","sunriseTime":1503408774,"sunsetTime":1503456903,"moonPhase":0.04,"precipIntensity":0.0003,"precipIntensityMax":0.0011,"precipIntensityMaxTime":1503414000,"precipProbability":0.01,"precipType":"rain","temperatureMin":57.05,"temperatureMinTime":1503414000,"temperatureMax":64.81,"temperatureMaxTime":1503439200,"apparentTemperatureMin":57.07,"apparentTemperatureMinTime":1503414000,"apparentTemperatureMax":64.81,"apparentTemperatureMaxTime":1503439200,"dewPoint":56.82,"humidity":0.89,"windSpeed":6.22,"windGust":11.88,"windGustTime":1503442800,"windBearing":234,"cloudCover":0.47,"pressure":1015.57,"ozone":302.38,"uvIndex":7,"uvIndexTime":1503432000},{"time":1503471600,"summary":"Clear throughout the day.","icon":"clear-day","sunriseTime":1503495226,"sunsetTime":1503543220,"moonPhase":0.07,"precipIntensity":0,"precipIntensityMax":0,"precipProbability":0,"temperatureMin":55.88,"temperatureMinTime":1503500400,"temperatureMax":65,"temperatureMaxTime":1503525600,"apparentTemperatureMin":55.88,"apparentTemperatureMinTime":1503500400,"apparentTemperatureMax":65,"apparentTemperatureMaxTime":1503525600,"dewPoint":55.88,"humidity":0.88,"windSpeed":4.9,"windGust":11.11,"windGustTime":1503532800,"windBearing":241,"cloudCover":0,"pressure":1013.45,"ozone":285.94,"uvIndex":9,"uvIndexTime":1503518400},{"time":1503558000,"summary":"Partly cloudy until afternoon.","icon":"partly-cloudy-day","sunriseTime":1503581678,"sunsetTime":1503629537,"moonPhase":0.11,"precipIntensity":0,"precipIntensityMax":0,"precipProbability":0,"temperatureMin":55.87,"temperatureMinTime":1503640800,"temperatureMax":65.31,"temperatureMaxTime":1503615600,"apparentTemperatureMin":55.87,"apparentTemperatureMinTime":1503640800,"apparentTemperatureMax":65.31,"apparentTemperatureMaxTime":1503615600,"dewPoint":55.57,"humidity":0.87,"windSpeed":5.69,"windGust":16.58,"windGustTime":1503619200,"windBearing":241,"cloudCover":0.2,"pressure":1010.18,"ozone":281.57,"uvIndex":9,"uvIndexTime":1503604800},{"time":1503644400,"summary":"Partly cloudy until afternoon.","icon":"partly-cloudy-day","sunriseTime":1503668129,"sunsetTime":1503715853,"moonPhase":0.14,"precipIntensity":0,"precipIntensityMax":0,"precipProbability":0,"temperatureMin":54.21,"temperatureMinTime":1503669600,"temperatureMax":66.92,"temperatureMaxTime":1503702000,"apparentTemperatureMin":54.21,"apparentTemperatureMinTime":1503669600,"apparentTemperatureMax":66.92,"apparentTemperatureMaxTime":1503702000,"dewPoint":54.16,"humidity":0.84,"windSpeed":4.28,"windGust":9.86,"windGustTime":1503705600,"windBearing":218,"cloudCover":0.16,"pressure":1008.34,"ozone":286.12,"uvIndex":9,"uvIndexTime":1503694800},{"time":1503730800,"summary":"Clear throughout the day.","icon":"clear-day","sunriseTime":1503754581,"sunsetTime":1503802168,"moonPhase":0.17,"precipIntensity":0,"precipIntensityMax":0,"precipProbability":0,"temperatureMin":55.25,"temperatureMinTime":1503756000,"temperatureMax":68.57,"temperatureMaxTime":1503784800,"apparentTemperatureMin":55.25,"apparentTemperatureMinTime":1503756000,"apparentTemperatureMax":68.57,"apparentTemperatureMaxTime":1503784800,"dewPoint":54.76,"humidity":0.83,"windSpeed":4.21,"windGust":11.2,"windGustTime":1503792000,"windBearing":221,"cloudCover":0,"pressure":1010.51,"ozone":284.88,"uvIndex":9,"uvIndexTime":1503777600}]},"flags":{"sources":["isd","nearest-precip","nwspa","cmc","gfs","hrrr","madis","nam","sref","darksky"],"isd-stations":["724943-99999","745039-99999","745045-99999","745060-23239","745065-99999","994016-99999","994033-99999","994036-99999","997734-99999","998197-99999","998476-99999","998477-99999","998479-99999","998496-99999","999999-23239","999999-23272"],"units":"us"}}
"""
		
        // This just runs some tests to make sure that the results from the JSONDecoder are what we'd expect to see.
		let data = testJSON.data(using: .utf8)!
		let decoder = JSONDecoder()
		let response = try! decoder.decode(WXKDarkSkyResponse.self, from: data)
		
		// Is the latitude what we'd expect?
		let latitude = response.latitude
		XCTAssertEqual(latitude, 37.8267)
		
		// What about the current temperature?
		if let currently = response.currently {
			if let temperature = currently.temperature {
				XCTAssertEqual(temperature, 58.48)
			} else {
				XCTFail()
			}
		} else {
			XCTFail()
		}
		
		// And what about "tomorrow's" high temperature?
		if let daily = response.daily {
			let tomorrow = daily.data[1]
			if let tomorrowHigh = tomorrow.temperatureMax {
				XCTAssertEqual(tomorrowHigh, 66.4)
			} else {
				XCTFail()
			}
		} else {
			XCTFail()
		}
    }


    static var allTests = [
        ("testDecoder", testDecoder),
    ]
}