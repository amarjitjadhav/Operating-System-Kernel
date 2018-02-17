code Main

  -- OS Class: Project 3
  --
  -- <PUT YOUR NAME HERE>
  --

-----------------------------  Main  ---------------------------------

  function main ()
     -- FatalError ("Need to implement")
	print("Assignment 3..\n ")
	InitializeScheduler()
	SleepingBarber()     
	--GamingParlour()
	ThreadFinish()
  endFunction
---------------------------SleepingBarber----------------------------
const
	CHAIRS= 5

enum E,S,B,F,L,start,end,X,o

var 
	CustomersThread: array [10] of Thread = new array of Thread { 10 of new Thread }
	BarberThread: Thread
	customers: int=0
	barbers: int=0
	mutex: int=1
	waiting:int=0 
	CustomerSemaphore: Semaphore=new Semaphore            -- points to barbor
	BarberSemaphore: Semaphore=new Semaphore              -- points to customer
	MutexSemaphore: Semaphore=new Semaphore               -- binary semaphore For locking
	status: array[11] of int
	chairsArray:array[5] of int
	barberstatus: int
	index: int=0

 function SleepingBarber()

	print("       Barber     1  2  3  4  5  6  7  8  9  10\n")

	CustomerSemaphore.Init(customers)
	BarberSemaphore.Init(barbers)
	MutexSemaphore.Init(mutex)

	BarberThread=new Thread

	status= new array of int {11 of '?'}
	chairsArray=new array of int {5 of o }   

	BarberThread.Init("Barber")

	CustomersThread[0].Init ("C1")
        CustomersThread[0].Fork (Customer, 1)

	CustomersThread[1].Init ("C2")
        CustomersThread[1].Fork (Customer, 2)

	CustomersThread[2].Init ("C3")
        CustomersThread[2].Fork (Customer, 3)

        CustomersThread[3].Init ("C4")
        CustomersThread[3].Fork (Customer, 4)

	CustomersThread[4].Init ("C5")
        CustomersThread[4].Fork (Customer, 5)

        CustomersThread[5].Init ("C6")
        CustomersThread[5].Fork (Customer, 6)

        CustomersThread[6].Init ("C7")
        CustomersThread[6].Fork (Customer, 7)

        CustomersThread[7].Init ("C8")
        CustomersThread[7].Fork (Customer, 8)

	CustomersThread[8].Init ("C9")
        CustomersThread[8].Fork (Customer, 9)

        CustomersThread[9].Init ("C10")
        CustomersThread[9].Fork (Customer, 10)

	
	BarberThread.Fork(Barber,1)
	ThreadFinish()

  endFunction

 function Barber(p:int)
	-- p is thread ID here

	while true
		CustomerSemaphore.Down()         		-- go to sleep If semaphore value is 0
		MutexSemaphore.Down()                           -- customer is waiting 
		chairsArray[index]=o
		index=(index-1) % CHAIRS
		waiting=waiting-1
		BarberSemaphore.Up()                            -- barbor is ready to For haircut
		MutexSemaphore.Up()                             -- release waiting
		CutHair(p)                                      -- cut hair of customer having thread id P
	endWhile

 endFunction

 function Customer(p:int)
		
		MutexSemaphore.Down()
		status[p]=E	
		PrintAllStatus(p)
		if( waiting < CHAIRS)
		
			chairsArray[index]=X
			index=(index+1) % CHAIRS
			waiting=waiting+1                         -- increment the count of waiting customers

			status[p]=S
                        PrintAllStatus(p)
                      
			CustomerSemaphore.Up()                    -- wake up barbor 
			MutexSemaphore.Up()                       -- waiting customers can be accessed
			BarberSemaphore.Down()                    -- go to sleep If free barbor is 0
			GetHairCut(p)                             -- begin haircut
                        status[p]=L
                        MutexSemaphore.Down()
                        PrintAllStatus(p)
        	        MutexSemaphore.Up()
		else
			status[p]=L                                   
			PrintAllStatus(p)                         -- print the status of leaving customer
			MutexSemaphore.Up()                       -- barbor shop is full so Leave
		endIf
endFunction 

 function CutHair(p:int)
	var i:int

        status[p]=start
	MutexSemaphore.Down()
	PrintAllStatus(p)
	MutexSemaphore.Up()
	for i=i to 100
--		currentThread.Yield()
	endFor
		currentThread.Yield()
	status[p]=end
     
	MutexSemaphore.Down()
	PrintAllStatus(p)
	MutexSemaphore.Up()

endFunction

 function GetHairCut(p:int)
	status[p]=B
	MutexSemaphore.Down()
	PrintAllStatus(p)
	MutexSemaphore.Up()

	status[p]=F
	MutexSemaphore.Down()
	PrintAllStatus(p)
	MutexSemaphore.Up()
	
	currentThread.Yield()
endFunction

function PrintAllStatus(j: int)
var
	  i:int
          p: int
	
	for i=0 to 4
	  switch chairsArray[i]
	    case X:
		print("X")
		break
	    case o:
		print("o")
		break
	 endSwitch
	endFor
	--print("          ")
	switch barberstatus
		case start:
		print("  start   ")
		break
		case end:
		print("  end     ")
		break
	--default: print("          ")
	endSwitch	
        if j != 0
           print ("          ")
        endIf
	for p = 1 to j
            print ("   ")
        endFor  
          switch status [j]
            case E:
              print ("E  ")
              break
            case S:
              print ("S  ")
              break
            case B:
              print ("B  ")
              break
	    case F:
	      print ("F  ")
	      break
            case L:
	      print ("L  ")
	      break

	    case start:
	      print ("  Start   ")
	      break
	    case end:
	     print ("  End     ")
	      break
default: print ("   ")
          endSwitch
        --endFor
        nl ()
      endFunction


endCode
