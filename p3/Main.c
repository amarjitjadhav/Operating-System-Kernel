code Main

  -- OS Class: Project 3
  --
  -- <Amarjit Jadhav>
  --

-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()
      print("About to test Game parlor\n")
	GamingParlors ()
	--SleepingBarber()
	ThreadFinish ()
  endFunction

------------------------------- Gaming Parlor--------------------------

-- Here group of customers come in to a gaming parlor to play games.
-- They go to the front desk to obtain one or more dice, which are used by the group while they are playing their
-- game, and then returned to the front desk. 
-- The front desk is in charge of lending out the dice and collecting them after each game is finished.

-- each group of customers is modeled as a thread.so there are 8 thread.

  var
    mon: GameMonitor
    group: array [8] of Thread = new array of Thread {8 of new Thread }

  function GamingParlors ()

      mon = new GameMonitor
      mon.Init ()

      group[0].Init ("A")
      group[0].Fork (GroupPlaying, 4)
      
      group[1].Init ("B")
      group[1].Fork (GroupPlaying, 4)

      group[2].Init ("C")
      group[2].Fork (GroupPlaying, 5)

      group[3].Init ("D")
      group[3].Fork (GroupPlaying, 5)

      group[4].Init ("E")
      group[4].Fork (GroupPlaying, 2)

      group[5].Init ("F")
      group[5].Fork (GroupPlaying, 2)

      group[6].Init ("G")
      group[6].Fork (GroupPlaying, 1)

      group[7].Init ("H")
      group[7].Fork (GroupPlaying, 1)
     endFunction

  function GroupPlaying (numOfDice: int)
     var
        i: int
      for i = 1 to 5
        -- Group is asking
        mon. RequestDice (numOfDice)
        -- Group is Playing
	currentThread.Yield()
	-- Return the resources(Dices)
        mon. ReturnDice (numOfDice)
	currentThread.Yield()
      endFor
  endFunction

  class GameMonitor
    superclass Object
    fields
	moniterLock:Mutex
	front: Condition
	restGroup : Condition
	numOfDiceAvail : int
	numOfWaitingGroups : int

    methods
      Init ()
      RequestDice (numOfDiceNeeded: int)
      ReturnDice (numOfDiceReturned: int)
      PrintStatus (str:String, count:int)
  endClass

  behavior GameMonitor

    method Init()

	front = new Condition
	restGroup = new Condition
	front.Init()
	restGroup.Init()
	numOfDiceAvail = 8
	numOfWaitingGroups = 0
	moniterLock = new Mutex
	moniterLock.Init()

   endMethod

    method RequestDice (numOfDiceNeeded: int)
         
        moniterLock.Lock()           			       -- Moniter's mutex is acquired 
	self.PrintStatus("requests", numOfDiceNeeded)	
	numOfWaitingGroups = numOfWaitingGroups + 1            -- Group is waiting For the Dice
	if numOfWaitingGroups > 1 
		restGroup.Wait(&moniterLock)                   -- If other groups are waiting in line then wait at the end of a line
	endIf
	while numOfDiceAvail < numOfDiceNeeded                 -- We are at the front of wait line so check weather there are enough Dice
       		front.Wait(&moniterLock)                       -- available. If not then wait.
	endWhile 	
	numOfDiceAvail = numOfDiceAvail - numOfDiceNeeded      -- Take the dice to Play
	numOfWaitingGroups = numOfWaitingGroups - 1
	restGroup.Signal(&moniterLock)                         -- wake up other groups who are waiting For Dice
    	self.PrintStatus("proceeds with", numOfDiceNeeded)	       
	moniterLock.Unlock()                                   -- Moniters lock released
      endMethod

    method ReturnDice (numOfDiceReturned: int)
            
      	moniterLock.Lock()                			-- moniters lock acquired
	numOfDiceAvail = numOfDiceAvail + numOfDiceReturned 
	self.PrintStatus("release and adds back", numOfDiceReturned)
	front.Signal(&moniterLock)
	moniterLock.Unlock()              			-- moniters lock released

    endMethod


    method PrintStatus(str: String, count: int)

	print(currentThread.name)
	print(" ")
	print(str)
	print(" ")
	printInt(count)
	nl ()
	print ("-----------------------------------Number of dice now avail = ")
	printInt (numOfDiceAvail)
	nl()
    endMethod

  endBehavior


----------------------------------------------------------------------------------------------------------------

------------------------------------------------SleepingBarber--------------------------------------------------

-- In the following implimentation I am considering 10 customers as a Thread, one barber Thread
-- There are two semaphores one fr the customer and one For the Barber.
-- The third semaphore i.e. Mutex_Sem is binary semaphore used For lock purpose.
-- with 5 chairs, "X" means customer sitting on chair and "_" means empty chair.

const
	CHAIRS= 5

enum E,S,B,F,L,start,end,X,n
var 
	Customer_Thread: array [10] of Thread = new array of Thread { 10 of new Thread }
	Barber_Thread: Thread

	waiting:int=0 
	status: array[13] of int
	chairsArray:array[5] of int
	barberstatus: int
	index: int=0

	CustomerSem: Semaphore=new Semaphore
	BarberSem: Semaphore=new Semaphore
	Mutex_Sem: Semaphore=new Semaphore  	

  function SleepingBarber()

	print("       Barber     1  2  3  4  5  6  7  8  9  10\n")

	CustomerSem.Init(0)
	BarberSem.Init(0)
	Mutex_Sem.Init(1)
	Barber_Thread=new Thread
	status= new array of int {13 of '?'}
	chairsArray=new array of int {5 of n }   

	Barber_Thread.Init("Barber")
        Barber_Thread.Fork(Barber,0)	

	Customer_Thread[0].Init ("C1")
        Customer_Thread[0].Fork (CustomerEnter, 1)

	Customer_Thread[1].Init ("C2")
        Customer_Thread[1].Fork (CustomerEnter, 2)

	Customer_Thread[2].Init ("C3")
        Customer_Thread[2].Fork (CustomerEnter, 3)

        Customer_Thread[3].Init ("C4")
        Customer_Thread[3].Fork (CustomerEnter, 4)

	Customer_Thread[4].Init ("C5")
        Customer_Thread[4].Fork (CustomerEnter, 5)

        Customer_Thread[5].Init ("C6")
        Customer_Thread[5].Fork (CustomerEnter, 6)

        Customer_Thread[6].Init ("C7")
        Customer_Thread[6].Fork (CustomerEnter, 7)

        Customer_Thread[7].Init ("C8")
        Customer_Thread[7].Fork (CustomerEnter, 8)

        Customer_Thread[8].Init ("C9")
        Customer_Thread[8].Fork (CustomerEnter, 9)

        Customer_Thread[9].Init ("C10")
        Customer_Thread[9].Fork (CustomerEnter, 10)
	
        Customer_Thread[8].Init ("C11")
        Customer_Thread[8].Fork (CustomerEnter, 11)

        Customer_Thread[9].Init ("C12")
        Customer_Thread[9].Fork (CustomerEnter, 12)	

	
	--ThreadFinish()

  endFunction

 function Barber(p:int)
	
	while true
		CustomerSem.Down()
		Mutex_Sem.Down()
		chairsArray[index]=n
		index=(index-1) % CHAIRS
		waiting=waiting-1
		BarberSem.Up()
		Mutex_Sem.Up()
		CutHair(p)
	endWhile

 endFunction

 function CustomerEnter(p:int)
		
		Mutex_Sem.Down()
		status[p]=E
		PrintStatus(p)
		if( waiting < CHAIRS)                              -- Check weather the chairs are full or not. If all are full then Leave
			chairsArray[index]=X
			index=(index+1) % CHAIRS
			waiting=waiting+1
			status[p]=S
                        PrintStatus(p)	
			CustomerSem.Up()
			Mutex_Sem.Up()
			BarberSem.Down()
			GetHairCut(p)
                        status[p]=L
                        Mutex_Sem.Down()
        		PrintStatus(p)
        		Mutex_Sem.Up()
		else
			status[p]=L
			PrintStatus(p)
			Mutex_Sem.Up()
		endIf
endFunction 

 function CutHair(p:int)
	var i:int
	
        status[p]=start
	Mutex_Sem.Down()
	PrintStatus(p)
	Mutex_Sem.Up()

	for i=i to 100
		currentThread.Yield() 		 
	endFor

	currentThread.Yield()

	status[p]=end
	Mutex_Sem.Down()
	PrintStatus(p)
	Mutex_Sem.Up()
	 
endFunction

 function GetHairCut(p:int)
	var i:int
	status[p]=B
	Mutex_Sem.Down()
	PrintStatus(p)
	Mutex_Sem.Up()

	status[p]=F
	Mutex_Sem.Down()
	PrintStatus(p)
	Mutex_Sem.Up()
	for i=i to 60
                currentThread.Yield()
        endFor
endFunction

function PrintStatus(j: int)
var
	  i:int
          p: int
	
	for i=0 to 4
	  switch chairsArray[i]
	    case X:
		print("X")
		break
	    case n:
		print("_")
		break
	 endSwitch
	endFor

	switch barberstatus
		case start:
		print("  start   ")
		break
		case end:
		print("  end     ")
		break
	
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
        nl ()
      endFunction


endCode

