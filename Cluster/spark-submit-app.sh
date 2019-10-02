time spark-submit --master "local-cluster[3,2,1024]" --class newCalendarApp Projects/eclipse-workspace/sparkNewCalendar/jars/newCalendar.jar
time spark-submit --master "local-cluster[3,2,4096]" --class flightdata Projects/eclipse-workspace/sparkFlightData/jars/flightdata.jar

