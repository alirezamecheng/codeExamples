using Dates
logfile = open("logfile.log","w")
startDate = Dates.now()
println(logfile,"Start Date = ",startDate)
println(logfile,"Date","|","time","|","Elapsed time")

while true
	now = Dates.now()
	println(logfile,Dates.Time(Dates.now()),"|",Dates.today(),"|",Dates.canonicalize(Dates.CompoundPeriod(now-startDate)))
	println(Dates.Time(Dates.now()),"|",Dates.today(),"|",Dates.canonicalize(Dates.CompoundPeriod(now-startDate)))
	sleep(60)
	flush(stdout)
	flush(logfile)
end 
