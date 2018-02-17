! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareMutex
	.export	_Method_P_Kernel_HoareMutex_1
	.export	_Method_P_Kernel_HoareMutex_2
	.export	_Method_P_Kernel_HoareMutex_3
	.export	_Method_P_Kernel_HoareMutex_4
	.export	_Method_P_Kernel_HoareMutex_5
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	76
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_220:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_219:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_218:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_217:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_216:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_215:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_214:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_213:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_212:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_211:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_210:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_209:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_208:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_207:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_206:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_205:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_204:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_203:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_202:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_201:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_200:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_199:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_198:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_197:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_196:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_195:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_194:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_193:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_192:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_191:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_190:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_189:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_188:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_187:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_186:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_185:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_184:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_183:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_182:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_181:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_180:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_179:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_178:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_177:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_176:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_175:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_174:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_173:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_172:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_171:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_170:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_169:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_168:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_167:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_166:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_165:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_164:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_163:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_162:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_161:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_160:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_159:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_158:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_157:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_156:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_155:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_154:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_153:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_152:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_151:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_149:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_148:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_147:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_146:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_145:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_144:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_143:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_142:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_141:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_140:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_139:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_138:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_137:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_136:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_135:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_134:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_133:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_132:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_131:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_130:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_129:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_128:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_127:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_126:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_125:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_124:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_123:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_122:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_121:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_120:
	.word	8			! length
	.ascii	"thread 9"
	.align
_StringConst_119:
	.word	8			! length
	.ascii	"thread 8"
	.align
_StringConst_118:
	.word	8			! length
	.ascii	"thread 7"
	.align
_StringConst_117:
	.word	8			! length
	.ascii	"thread 6"
	.align
_StringConst_116:
	.word	8			! length
	.ascii	"thread 5"
	.align
_StringConst_115:
	.word	8			! length
	.ascii	"thread 4"
	.align
_StringConst_114:
	.word	8			! length
	.ascii	"thread 3"
	.align
_StringConst_113:
	.word	8			! length
	.ascii	"thread 2"
	.align
_StringConst_112:
	.word	8			! length
	.ascii	"thread 1"
	.align
_StringConst_111:
	.word	8			! length
	.ascii	"thread 0"
	.align
_StringConst_110:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_109:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_108:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_107:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_106:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_105:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_104:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_103:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_102:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_101:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_100:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_99:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_98:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_97:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_96:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_95:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_94:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_93:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_92:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_91:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_89:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_88:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_87:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_86:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_85:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_84:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_83:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_82:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_80:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_79:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_78:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_77:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_76:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_75:
	.word	23			! length
	.ascii	"Attempt to give a lock "
	.align
_StringConst_74:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_73:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_72:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_71:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_70:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_69:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_68:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_67:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_66:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_65:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_64:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_63:
	.word	15			! length
	.ascii	"newCurrentPos ="
	.align
_StringConst_62:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_61:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_59:
	.word	25			! length
	.ascii	"Virtual Address of buffer"
	.align
_StringConst_58:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_57:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Virtual Address of buffer"
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_53:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_52:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_51:
	.word	25			! length
	.ascii	"virtual addr of filename "
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
	.align
_StringConst_49:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_48:
	.word	24			! length
	.ascii	"virtual addr of filename"
	.align
_StringConst_47:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_46:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_45:
	.word	24			! length
	.ascii	"Handle_Sys_Join invoked!"
	.align
_StringConst_44:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked!"
	.align
_StringConst_43:
	.word	25			! length
	.ascii	"Handle_Sys_Yield invoked!"
	.align
_StringConst_42:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_41:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_40:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked!"
	.align
_StringConst_39:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_38:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_37:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_36:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_35:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_34:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_33:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_27:
	.word	19			! length
	.ascii	"Unrecoverable error"
	.align
_StringConst_26:
	.word	20			! length
	.ascii	"File not found error"
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_24:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x9177a42f,r4		! myHashVal = -1854430161
	cmp	r3,r4
	be	_Label_229
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_229:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_230
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_230
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_230
_Label_230:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3160:
	push	r0
	sub	r1,1,r1
	bne	_Label_3160
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_231 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3161:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3161
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_235 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_236 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_235  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_237 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_238 = _temp_237 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_238 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3162:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3162
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_240 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_241 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_240  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_242 = _function_228_IdleFunction
	set	_function_228_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_243 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_242  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_244
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_245
	.word	-12
	.word	4
	.word	_Label_246
	.word	-16
	.word	4
	.word	_Label_247
	.word	-20
	.word	4
	.word	_Label_248
	.word	-24
	.word	4
	.word	_Label_249
	.word	-28
	.word	4
	.word	_Label_250
	.word	-32
	.word	4
	.word	_Label_251
	.word	-36
	.word	4
	.word	_Label_252
	.word	-40
	.word	4
	.word	_Label_253
	.word	-44
	.word	4
	.word	_Label_254
	.word	-48
	.word	4
	.word	_Label_255
	.word	-52
	.word	4
	.word	_Label_256
	.word	-56
	.word	4
	.word	_Label_257
	.word	-60
	.word	4
	.word	0
_Label_244:
	.ascii	"InitializeScheduler\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_228_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_228_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3163:
	push	r0
	sub	r1,1,r1
	bne	_Label_3163
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_258:
!	jmp	_Label_259
_Label_259:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_263 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_261 else goto _Label_262
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_262
	jmp	_Label_261
_Label_261:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_264
_Label_262:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_264:
! END WHILE...
	jmp	_Label_258
_Label_260:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_228_IdleFunction:
	.word	_sourceFileName
	.word	_Label_265
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_266
	.word	8
	.word	4
	.word	_Label_267
	.word	-12
	.word	4
	.word	_Label_268
	.word	-16
	.word	4
	.word	0
_Label_265:
	.ascii	"IdleFunction\0"
	.align
_Label_266:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_268:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3164:
	push	r0
	sub	r1,1,r1
	bne	_Label_3164
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_271 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_271 ) then goto _Label_270		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_270
!	jmp	_Label_269
_Label_269:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_273 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_273 [0 ] into _temp_274
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_272 = _temp_274		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_272  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_270:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_275 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_276:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_280 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_279  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_279 then goto _Label_278 else goto _Label_277
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_277
	jmp	_Label_278
_Label_277:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_281 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_282 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_276
_Label_278:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_285 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_285 ) then goto _Label_284		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_284
!	jmp	_Label_283
_Label_283:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_287 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_287 [0 ] into _temp_288
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_286 = _temp_288		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_290 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_289 = *_temp_290  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_289) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = _temp_289 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_284:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_292
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_293
	.word	8
	.word	4
	.word	_Label_294
	.word	-16
	.word	4
	.word	_Label_295
	.word	-20
	.word	4
	.word	_Label_296
	.word	-24
	.word	4
	.word	_Label_297
	.word	-28
	.word	4
	.word	_Label_298
	.word	-32
	.word	4
	.word	_Label_299
	.word	-36
	.word	4
	.word	_Label_300
	.word	-40
	.word	4
	.word	_Label_301
	.word	-44
	.word	4
	.word	_Label_302
	.word	-48
	.word	4
	.word	_Label_303
	.word	-52
	.word	4
	.word	_Label_304
	.word	-9
	.word	1
	.word	_Label_305
	.word	-56
	.word	4
	.word	_Label_306
	.word	-60
	.word	4
	.word	_Label_307
	.word	-64
	.word	4
	.word	_Label_308
	.word	-68
	.word	4
	.word	_Label_309
	.word	-72
	.word	4
	.word	_Label_310
	.word	-76
	.word	4
	.word	_Label_311
	.word	-80
	.word	4
	.word	0
_Label_292:
	.ascii	"Run\0"
	.align
_Label_293:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_304:
	.byte	'C'
	.ascii	"_temp_279\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_310:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3165:
	push	r0
	sub	r1,1,r1
	bne	_Label_3165
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_312 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_313 = _function_227_ThreadPrintShort
	set	_function_227_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_314 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_313  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_315
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_316
	.word	-12
	.word	4
	.word	_Label_317
	.word	-16
	.word	4
	.word	_Label_318
	.word	-20
	.word	4
	.word	_Label_319
	.word	-24
	.word	4
	.word	0
_Label_315:
	.ascii	"PrintReadyList\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_319:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3166:
	push	r0
	sub	r1,1,r1
	bne	_Label_3166
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_320 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_320  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_322 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_321 = *_temp_322  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_323 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_324
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_325
	.word	-12
	.word	4
	.word	_Label_326
	.word	-16
	.word	4
	.word	_Label_327
	.word	-20
	.word	4
	.word	_Label_328
	.word	-24
	.word	4
	.word	_Label_329
	.word	-28
	.word	4
	.word	_Label_330
	.word	-32
	.word	4
	.word	0
_Label_324:
	.ascii	"ThreadStartMain\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_329:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_330:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3167:
	push	r0
	sub	r1,1,r1
	bne	_Label_3167
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_331 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_332 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_333
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_334
	.word	-12
	.word	4
	.word	_Label_335
	.word	-16
	.word	4
	.word	_Label_336
	.word	-20
	.word	4
	.word	0
_Label_333:
	.ascii	"ThreadFinish\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_336:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3168:
	push	r0
	sub	r1,1,r1
	bne	_Label_3168
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_337 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_339		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_339
!	jmp	_Label_338
_Label_338:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_340 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_342 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_341 = *_temp_342  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_339:
! CALL STATEMENT...
!   _temp_343 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_344 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_345 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_346
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_347
	.word	8
	.word	4
	.word	_Label_348
	.word	-12
	.word	4
	.word	_Label_349
	.word	-16
	.word	4
	.word	_Label_350
	.word	-20
	.word	4
	.word	_Label_351
	.word	-24
	.word	4
	.word	_Label_352
	.word	-28
	.word	4
	.word	_Label_353
	.word	-32
	.word	4
	.word	_Label_354
	.word	-36
	.word	4
	.word	_Label_355
	.word	-40
	.word	4
	.word	0
_Label_346:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_347:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_355:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3169:
	push	r0
	sub	r1,1,r1
	bne	_Label_3169
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_357		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_357
!	jmp	_Label_356
_Label_356:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_358
_Label_357:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_358:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_359
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_360
	.word	8
	.word	4
	.word	_Label_361
	.word	-12
	.word	4
	.word	0
_Label_359:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_360:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_361:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_227_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_227_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3170:
	push	r0
	sub	r1,1,r1
	bne	_Label_3170
	mov	777,r13		! source line 777
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_365		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_365
!   _temp_364 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_366
_Label_365:
!   _temp_364 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_366:
!   if _temp_364 then goto _Label_363 else goto _Label_362
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_362
	jmp	_Label_363
_Label_362:
! THEN...
	mov	786,r13		! source line 786
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_367 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_363:
! CALL STATEMENT...
!   _temp_368 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_370 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_369 = *_temp_370  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_371 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	791,r13		! source line 791
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	792,r13		! source line 792
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_380 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_379 = *_temp_380  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_374
	cmp	r1,2
	be	_Label_375
	cmp	r1,3
	be	_Label_376
	cmp	r1,4
	be	_Label_377
	cmp	r1,5
	be	_Label_378
	jmp	_Label_372
! CASE 1...
_Label_374:
! CALL STATEMENT...
!   _temp_381 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	794,r13		! source line 794
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0BR",r10
	jmp	_Label_373
! CASE 2...
_Label_375:
! CALL STATEMENT...
!   _temp_382 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	797,r13		! source line 797
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0BR",r10
	jmp	_Label_373
! CASE 3...
_Label_376:
! CALL STATEMENT...
!   _temp_383 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	800,r13		! source line 800
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0BR",r10
	jmp	_Label_373
! CASE 4...
_Label_377:
! CALL STATEMENT...
!   _temp_384 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	803,r13		! source line 803
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	804,r13		! source line 804
	mov	"\0\0BR",r10
	jmp	_Label_373
! CASE 5...
_Label_378:
! CALL STATEMENT...
!   _temp_385 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0BR",r10
	jmp	_Label_373
! DEFAULT CASE...
_Label_372:
! CALL STATEMENT...
!   _temp_386 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	809,r13		! source line 809
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_373:
! CALL STATEMENT...
!   _temp_387 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_388 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_389 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_227_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_390
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_391
	.word	8
	.word	4
	.word	_Label_392
	.word	-16
	.word	4
	.word	_Label_393
	.word	-20
	.word	4
	.word	_Label_394
	.word	-24
	.word	4
	.word	_Label_395
	.word	-28
	.word	4
	.word	_Label_396
	.word	-32
	.word	4
	.word	_Label_397
	.word	-36
	.word	4
	.word	_Label_398
	.word	-40
	.word	4
	.word	_Label_399
	.word	-44
	.word	4
	.word	_Label_400
	.word	-48
	.word	4
	.word	_Label_401
	.word	-52
	.word	4
	.word	_Label_402
	.word	-56
	.word	4
	.word	_Label_403
	.word	-60
	.word	4
	.word	_Label_404
	.word	-64
	.word	4
	.word	_Label_405
	.word	-68
	.word	4
	.word	_Label_406
	.word	-72
	.word	4
	.word	_Label_407
	.word	-76
	.word	4
	.word	_Label_408
	.word	-9
	.word	1
	.word	_Label_409
	.word	-80
	.word	4
	.word	0
_Label_390:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_391:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_408:
	.byte	'C'
	.ascii	"_temp_364\0"
	.align
_Label_409:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_226_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_226_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3171:
	push	r0
	sub	r1,1,r1
	bne	_Label_3171
	mov	1164,r13		! source line 1164
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_410 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1168,r13		! source line 1168
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1169,r13		! source line 1169
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_226_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_411
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_412
	.word	8
	.word	4
	.word	_Label_413
	.word	-12
	.word	4
	.word	0
_Label_411:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_412:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_3172:
	push	r0
	sub	r1,1,r1
	bne	_Label_3172
	mov	1174,r13		! source line 1174
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_414 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1180,r13		! source line 1180
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_415
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_416
	.word	8
	.word	4
	.word	_Label_417
	.word	-12
	.word	4
	.word	0
_Label_415:
	.ascii	"ProcessFinish\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3173:
	push	r0
	sub	r1,1,r1
	bne	_Label_3173
	mov	1346,r13		! source line 1346
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0AS",r10
	mov	1354,r13		! source line 1354
	mov	"\0\0SE",r10
!   _temp_418 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1356,r13		! source line 1356
	mov	"\0\0SE",r10
!   _temp_419 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_419  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0SE",r10
!   _temp_420 = _function_225_StartUserProcess
	set	_function_225_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (thread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_420  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_421
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_422
	.word	-12
	.word	4
	.word	_Label_423
	.word	-16
	.word	4
	.word	_Label_424
	.word	-20
	.word	4
	.word	_Label_425
	.word	-24
	.word	4
	.word	0
_Label_421:
	.ascii	"InitFirstProcess\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"thread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_225_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_225_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3174:
	push	r0
	sub	r1,1,r1
	bne	_Label_3174
	mov	1364,r13		! source line 1364
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0AS",r10
	mov	1373,r13		! source line 1373
	mov	"\0\0SE",r10
!   _temp_426 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   Send message GetANewProcess
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = pcb + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_427 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_428 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_428 = pcb  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_429 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   addrSpace = _temp_429		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0AS",r10
	mov	1380,r13		! source line 1380
	mov	"\0\0SE",r10
!   _temp_430 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-48]
!   _temp_431 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_430  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! IF STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_432
	load	[r14+-68],r1
	cmp	r1,r0
	be	_Label_432
	jmp	_Label_433
_Label_432:
! THEN...
	mov	1382,r13		! source line 1382
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_434 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1382,r13		! source line 1382
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_433:
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_436		(int)
	load	[r14+-76],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_436
!	jmp	_Label_435
_Label_435:
! THEN...
	mov	1387,r13		! source line 1387
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_437 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1387,r13		! source line 1387
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_436:
! SEND STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0SE",r10
!   _temp_438 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0AS",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = addrSpace + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_439 = *_temp_440  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   initUserStackTop = _temp_439 * 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_441 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_441 [999 ] into _temp_442
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   initSystemStackTop = _temp_442		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1395,r13		! source line 1395
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_443 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+8]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_225_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_444
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_445
	.word	8
	.word	4
	.word	_Label_446
	.word	-12
	.word	4
	.word	_Label_447
	.word	-16
	.word	4
	.word	_Label_448
	.word	-20
	.word	4
	.word	_Label_449
	.word	-24
	.word	4
	.word	_Label_450
	.word	-28
	.word	4
	.word	_Label_451
	.word	-32
	.word	4
	.word	_Label_452
	.word	-36
	.word	4
	.word	_Label_453
	.word	-40
	.word	4
	.word	_Label_454
	.word	-44
	.word	4
	.word	_Label_455
	.word	-48
	.word	4
	.word	_Label_456
	.word	-52
	.word	4
	.word	_Label_457
	.word	-56
	.word	4
	.word	_Label_458
	.word	-60
	.word	4
	.word	_Label_459
	.word	-64
	.word	4
	.word	_Label_460
	.word	-68
	.word	4
	.word	_Label_461
	.word	-72
	.word	4
	.word	_Label_462
	.word	-76
	.word	4
	.word	_Label_463
	.word	-80
	.word	4
	.word	_Label_464
	.word	-84
	.word	4
	.word	_Label_465
	.word	-88
	.word	4
	.word	_Label_466
	.word	-92
	.word	4
	.word	0
_Label_444:
	.ascii	"StartUserProcess\0"
	.align
_Label_445:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_460:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_461:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_462:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_463:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_466:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3175:
	push	r0
	sub	r1,1,r1
	bne	_Label_3175
	mov	1761,r13		! source line 1761
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_467
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_467:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3176:
	push	r0
	sub	r1,1,r1
	bne	_Label_3176
	mov	1779,r13		! source line 1779
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0IF",r10
!   _temp_471 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_472 = _temp_471 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_470 = *_temp_472  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_470 == 0 then goto _Label_469		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_469
!	jmp	_Label_468
_Label_468:
! THEN...
	mov	1793,r13		! source line 1793
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0SE",r10
!   _temp_474 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_475 = _temp_474 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_473 = *_temp_475  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_473) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_469:
! RETURN STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_476
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_477
	.word	-12
	.word	4
	.word	_Label_478
	.word	-16
	.word	4
	.word	_Label_479
	.word	-20
	.word	4
	.word	_Label_480
	.word	-24
	.word	4
	.word	_Label_481
	.word	-28
	.word	4
	.word	_Label_482
	.word	-32
	.word	4
	.word	0
_Label_476:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1806,r13		! source line 1806
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_483
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_483:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3177:
	push	r0
	sub	r1,1,r1
	bne	_Label_3177
	mov	1820,r13		! source line 1820
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1826,r13		! source line 1826
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_484 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_485
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_486
	.word	-12
	.word	4
	.word	0
_Label_485:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3178:
	push	r0
	sub	r1,1,r1
	bne	_Label_3178
	mov	1832,r13		! source line 1832
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_487 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1839,r13		! source line 1839
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_488
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_489
	.word	-12
	.word	4
	.word	0
_Label_488:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3179:
	push	r0
	sub	r1,1,r1
	bne	_Label_3179
	mov	1844,r13		! source line 1844
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1850,r13		! source line 1850
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_490 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1851,r13		! source line 1851
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_491
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_492
	.word	-12
	.word	4
	.word	0
_Label_491:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3180:
	push	r0
	sub	r1,1,r1
	bne	_Label_3180
	mov	1856,r13		! source line 1856
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_493 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_494
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_495
	.word	-12
	.word	4
	.word	0
_Label_494:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3181:
	push	r0
	sub	r1,1,r1
	bne	_Label_3181
	mov	1868,r13		! source line 1868
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_496 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1875,r13		! source line 1875
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1875,r13		! source line 1875
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_497
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_498
	.word	-12
	.word	4
	.word	0
_Label_497:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3182:
	push	r0
	sub	r1,1,r1
	bne	_Label_3182
	mov	1880,r13		! source line 1880
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_499 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1887,r13		! source line 1887
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_500
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_501
	.word	-12
	.word	4
	.word	0
_Label_500:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3183:
	push	r0
	sub	r1,1,r1
	bne	_Label_3183
	mov	1892,r13		! source line 1892
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_502 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_503
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_504
	.word	-12
	.word	4
	.word	0
_Label_503:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_224_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_224_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3184:
	push	r0
	sub	r1,1,r1
	bne	_Label_3184
	mov	1904,r13		! source line 1904
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_505 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_506 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_510 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_509 = *_temp_510  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_509 == 0 then goto _Label_508		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_508
!	jmp	_Label_507
_Label_507:
! THEN...
	mov	1915,r13		! source line 1915
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_512 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_511 = *_temp_512  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_511) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_513
_Label_508:
! ELSE...
	mov	1917,r13		! source line 1917
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_514 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1917,r13		! source line 1917
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_513:
! SEND STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1925,r13		! source line 1925
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_224_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_515
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_516
	.word	8
	.word	4
	.word	_Label_517
	.word	-12
	.word	4
	.word	_Label_518
	.word	-16
	.word	4
	.word	_Label_519
	.word	-20
	.word	4
	.word	_Label_520
	.word	-24
	.word	4
	.word	_Label_521
	.word	-28
	.word	4
	.word	_Label_522
	.word	-32
	.word	4
	.word	_Label_523
	.word	-36
	.word	4
	.word	0
_Label_515:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_516:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3185:
	push	r0
	sub	r1,1,r1
	bne	_Label_3185
	mov	1930,r13		! source line 1930
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1951,r13		! source line 1951
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3186
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_524
_Label_3186:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_524
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_524
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_538,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_538:
	jmp	_Label_530	! 1:	
	jmp	_Label_537	! 2:	
	jmp	_Label_527	! 3:	
	jmp	_Label_526	! 4:	
	jmp	_Label_529	! 5:	
	jmp	_Label_528	! 6:	
	jmp	_Label_531	! 7:	
	jmp	_Label_532	! 8:	
	jmp	_Label_533	! 9:	
	jmp	_Label_534	! 10:	
	jmp	_Label_535	! 11:	
	jmp	_Label_536	! 12:	
! CASE 4...
_Label_526:
! RETURN STATEMENT...
	mov	1953,r13		! source line 1953
	mov	"\0\0RE",r10
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_539  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_539  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_527:
! CALL STATEMENT...
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_528:
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_540  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_540  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_529:
! RETURN STATEMENT...
	mov	1960,r13		! source line 1960
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1960,r13		! source line 1960
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_541  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_541  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_530:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1962,r13		! source line 1962
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_531:
! RETURN STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1965,r13		! source line 1965
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_542  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_542  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_532:
! RETURN STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_543  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_543  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_533:
! RETURN STATEMENT...
	mov	1969,r13		! source line 1969
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_544  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_544  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_534:
! RETURN STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_545  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_545  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_535:
! RETURN STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_546  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_546  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_536:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_537:
! CALL STATEMENT...
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_524:
! CALL STATEMENT...
!   _temp_547 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_547  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_548 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_548  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1984,r13		! source line 1984
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_525:
! RETURN STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_549
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_550
	.word	8
	.word	4
	.word	_Label_551
	.word	12
	.word	4
	.word	_Label_552
	.word	16
	.word	4
	.word	_Label_553
	.word	20
	.word	4
	.word	_Label_554
	.word	24
	.word	4
	.word	_Label_555
	.word	-12
	.word	4
	.word	_Label_556
	.word	-16
	.word	4
	.word	_Label_557
	.word	-20
	.word	4
	.word	_Label_558
	.word	-24
	.word	4
	.word	_Label_559
	.word	-28
	.word	4
	.word	_Label_560
	.word	-32
	.word	4
	.word	_Label_561
	.word	-36
	.word	4
	.word	_Label_562
	.word	-40
	.word	4
	.word	_Label_563
	.word	-44
	.word	4
	.word	_Label_564
	.word	-48
	.word	4
	.word	0
_Label_549:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_550:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_551:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_552:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_554:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	3,r1
_Label_3187:
	push	r0
	sub	r1,1,r1
	bne	_Label_3187
	mov	1991,r13		! source line 1991
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_565 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_566 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_567
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_568
	.word	8
	.word	4
	.word	_Label_569
	.word	-12
	.word	4
	.word	_Label_570
	.word	-16
	.word	4
	.word	0
_Label_567:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3188:
	push	r0
	sub	r1,1,r1
	bne	_Label_3188
	mov	2002,r13		! source line 2002
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_571 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_571  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2003,r13		! source line 2003
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	2004,r13		! source line 2004
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_572
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_573
	.word	-12
	.word	4
	.word	0
_Label_572:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_3189:
	push	r0
	sub	r1,1,r1
	bne	_Label_3189
	mov	2009,r13		! source line 2009
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_574 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_575
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_576
	.word	-12
	.word	4
	.word	0
_Label_575:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_3190:
	push	r0
	sub	r1,1,r1
	bne	_Label_3190
	mov	2017,r13		! source line 2017
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_577 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_578
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_579
	.word	-12
	.word	4
	.word	0
_Label_578:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	3,r1
_Label_3191:
	push	r0
	sub	r1,1,r1
	bne	_Label_3191
	mov	2026,r13		! source line 2026
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_580 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2028,r13		! source line 2028
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2029,r13		! source line 2029
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_581 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2031,r13		! source line 2031
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_582
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_583
	.word	8
	.word	4
	.word	_Label_584
	.word	-12
	.word	4
	.word	_Label_585
	.word	-16
	.word	4
	.word	0
_Label_582:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_583:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	65,r1
_Label_3192:
	push	r0
	sub	r1,1,r1
	bne	_Label_3192
	mov	2040,r13		! source line 2040
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-224,r4
	mov	23,r3
_Label_3193:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3193
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-224]
! SEND STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0SE",r10
!   _temp_587 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-108]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
	mov	2056,r13		! source line 2056
	mov	"\0\0SE",r10
!   _temp_588 = &strBuffer
	add	r14,-248,r1
	store	r1,[r14+-104]
!   _temp_589 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_590 = *_temp_591  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_590) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = _temp_590 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_588  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_589  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_594		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_594
!	jmp	_Label_593
_Label_593:
! THEN...
	mov	2061,r13		! source line 2061
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_594:
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
	mov	2065,r13		! source line 2065
	mov	"\0\0SE",r10
!   _temp_595 = &strBuffer
	add	r14,-248,r1
	store	r1,[r14+-84]
!   _temp_596 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_595  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_597
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_597
	jmp	_Label_598
_Label_597:
! THEN...
	mov	2067,r13		! source line 2067
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_598:
! ASSIGNMENT STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0AS",r10
	mov	2070,r13		! source line 2070
	mov	"\0\0SE",r10
!   _temp_599 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-76]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_599  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! IF STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_601		(int)
	load	[r14+-120],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_601
!	jmp	_Label_600
_Label_600:
! THEN...
	mov	2072,r13		! source line 2072
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_601:
! SEND STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0SE",r10
!   _temp_602 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_605 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_604 = *_temp_605  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_604) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _temp_604 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_603 = _temp_606		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-68]
!   _temp_607 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_603  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_608 = *_temp_609  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_608) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _temp_608 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_610 = newAddrSpace  (sizeInBytes=92)
	add	r14,-224,r5
	load	[r14+-40],r4
	mov	23,r3
_Label_3194:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3194
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   _temp_612 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-32]
!   _temp_613 = _temp_612 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_611 = *_temp_613  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_611 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! ASSIGNMENT STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_614 [999 ] into _temp_615
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_615		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2084,r13		! source line 2084
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! SEND STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0SE",r10
!   _temp_616 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2087,r13		! source line 2087
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_617 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+8]
!   Call the function
	mov	2088,r13		! source line 2088
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2089,r13		! source line 2089
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_618
	.word	4		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_619
	.word	8
	.word	4
	.word	_Label_620
	.word	-12
	.word	4
	.word	_Label_621
	.word	-16
	.word	4
	.word	_Label_622
	.word	-20
	.word	4
	.word	_Label_623
	.word	-24
	.word	4
	.word	_Label_624
	.word	-28
	.word	4
	.word	_Label_625
	.word	-32
	.word	4
	.word	_Label_626
	.word	-36
	.word	4
	.word	_Label_627
	.word	-40
	.word	4
	.word	_Label_628
	.word	-44
	.word	4
	.word	_Label_629
	.word	-48
	.word	4
	.word	_Label_630
	.word	-52
	.word	4
	.word	_Label_631
	.word	-56
	.word	4
	.word	_Label_632
	.word	-60
	.word	4
	.word	_Label_633
	.word	-64
	.word	4
	.word	_Label_634
	.word	-68
	.word	4
	.word	_Label_635
	.word	-72
	.word	4
	.word	_Label_636
	.word	-76
	.word	4
	.word	_Label_637
	.word	-80
	.word	4
	.word	_Label_638
	.word	-84
	.word	4
	.word	_Label_639
	.word	-88
	.word	4
	.word	_Label_640
	.word	-92
	.word	4
	.word	_Label_641
	.word	-96
	.word	4
	.word	_Label_642
	.word	-100
	.word	4
	.word	_Label_643
	.word	-104
	.word	4
	.word	_Label_644
	.word	-108
	.word	4
	.word	_Label_645
	.word	-112
	.word	4
	.word	_Label_646
	.word	-116
	.word	4
	.word	_Label_647
	.word	-120
	.word	4
	.word	_Label_648
	.word	-124
	.word	4
	.word	_Label_649
	.word	-128
	.word	4
	.word	_Label_650
	.word	-132
	.word	4
	.word	_Label_651
	.word	-224
	.word	92
	.word	_Label_652
	.word	-248
	.word	24
	.word	_Label_653
	.word	-252
	.word	4
	.word	0
_Label_618:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_619:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_646:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_647:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_648:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_649:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_650:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_651:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_652:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_653:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	20,r1
_Label_3195:
	push	r0
	sub	r1,1,r1
	bne	_Label_3195
	mov	2094,r13		! source line 2094
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_654 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_654  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2100,r13		! source line 2100
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2101,r13		! source line 2101
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
	mov	2102,r13		! source line 2102
	mov	"\0\0SE",r10
!   _temp_655 = &strBuffer
	add	r14,-68,r1
	store	r1,[r14+-40]
!   _temp_656 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_658 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_657 = *_temp_658  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_657) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = _temp_657 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_655  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_656  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=a  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	2103,r13		! source line 2103
	mov	"\0\0IF",r10
!   if a >= 0 then goto _Label_661		(int)
	load	[r14+-72],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_661
!	jmp	_Label_660
_Label_660:
! THEN...
	mov	2104,r13		! source line 2104
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_661:
! CALL STATEMENT...
!   _temp_662 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_662  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2107,r13		! source line 2107
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_663 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2108,r13		! source line 2108
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_664 = &strBuffer
	add	r14,-68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2109,r13		! source line 2109
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2110,r13		! source line 2110
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_665
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_666
	.word	8
	.word	4
	.word	_Label_667
	.word	-12
	.word	4
	.word	_Label_668
	.word	-16
	.word	4
	.word	_Label_669
	.word	-20
	.word	4
	.word	_Label_670
	.word	-24
	.word	4
	.word	_Label_671
	.word	-28
	.word	4
	.word	_Label_672
	.word	-32
	.word	4
	.word	_Label_673
	.word	-36
	.word	4
	.word	_Label_674
	.word	-40
	.word	4
	.word	_Label_675
	.word	-44
	.word	4
	.word	_Label_676
	.word	-68
	.word	24
	.word	_Label_677
	.word	-72
	.word	4
	.word	0
_Label_665:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_666:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_676:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_677:
	.byte	'I'
	.ascii	"a\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	20,r1
_Label_3196:
	push	r0
	sub	r1,1,r1
	bne	_Label_3196
	mov	2116,r13		! source line 2116
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_678 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_678  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	2122,r13		! source line 2122
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2123,r13		! source line 2123
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
	mov	2124,r13		! source line 2124
	mov	"\0\0SE",r10
!   _temp_679 = &strbuffer
	add	r14,-68,r1
	store	r1,[r14+-40]
!   _temp_680 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_682 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_681 = *_temp_682  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_681) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_683 = _temp_681 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_679  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_680  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=a  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0IF",r10
!   if a >= 0 then goto _Label_685		(int)
	load	[r14+-72],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_685
!	jmp	_Label_684
_Label_684:
! THEN...
	mov	2126,r13		! source line 2126
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_685:
! CALL STATEMENT...
!   _temp_686 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_686  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2129,r13		! source line 2129
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_687 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_687  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2130,r13		! source line 2130
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_688 = &strbuffer
	add	r14,-68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_688  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2131,r13		! source line 2131
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2132,r13		! source line 2132
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_689
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_690
	.word	8
	.word	4
	.word	_Label_691
	.word	-12
	.word	4
	.word	_Label_692
	.word	-16
	.word	4
	.word	_Label_693
	.word	-20
	.word	4
	.word	_Label_694
	.word	-24
	.word	4
	.word	_Label_695
	.word	-28
	.word	4
	.word	_Label_696
	.word	-32
	.word	4
	.word	_Label_697
	.word	-36
	.word	4
	.word	_Label_698
	.word	-40
	.word	4
	.word	_Label_699
	.word	-44
	.word	4
	.word	_Label_700
	.word	-68
	.word	24
	.word	_Label_701
	.word	-72
	.word	4
	.word	0
_Label_689:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_690:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_700:
	.byte	'A'
	.ascii	"strbuffer\0"
	.align
_Label_701:
	.byte	'I'
	.ascii	"a\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	6,r1
_Label_3197:
	push	r0
	sub	r1,1,r1
	bne	_Label_3197
	mov	2138,r13		! source line 2138
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_702 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2140,r13		! source line 2140
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2141,r13		! source line 2141
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_703 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2142,r13		! source line 2142
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2143,r13		! source line 2143
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2144,r13		! source line 2144
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_704 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2145,r13		! source line 2145
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_705 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_705  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2146,r13		! source line 2146
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   Call the function
	mov	2147,r13		! source line 2147
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_706
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_707
	.word	8
	.word	4
	.word	_Label_708
	.word	12
	.word	4
	.word	_Label_709
	.word	16
	.word	4
	.word	_Label_710
	.word	-12
	.word	4
	.word	_Label_711
	.word	-16
	.word	4
	.word	_Label_712
	.word	-20
	.word	4
	.word	_Label_713
	.word	-24
	.word	4
	.word	0
_Label_706:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_707:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_708:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_709:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	6,r1
_Label_3198:
	push	r0
	sub	r1,1,r1
	bne	_Label_3198
	mov	2153,r13		! source line 2153
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_714 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2155,r13		! source line 2155
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2156,r13		! source line 2156
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_715 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2157,r13		! source line 2157
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2158,r13		! source line 2158
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2159,r13		! source line 2159
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_716 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2160,r13		! source line 2160
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_717 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   Call the function
	mov	2162,r13		! source line 2162
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_718
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_719
	.word	8
	.word	4
	.word	_Label_720
	.word	12
	.word	4
	.word	_Label_721
	.word	16
	.word	4
	.word	_Label_722
	.word	-12
	.word	4
	.word	_Label_723
	.word	-16
	.word	4
	.word	_Label_724
	.word	-20
	.word	4
	.word	_Label_725
	.word	-24
	.word	4
	.word	0
_Label_718:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_719:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_720:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_721:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	4,r1
_Label_3199:
	push	r0
	sub	r1,1,r1
	bne	_Label_3199
	mov	2168,r13		! source line 2168
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_726 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2170,r13		! source line 2170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2171,r13		! source line 2171
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_727 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2172,r13		! source line 2172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2173,r13		! source line 2173
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2174,r13		! source line 2174
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_728 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2175,r13		! source line 2175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2176,r13		! source line 2176
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2177,r13		! source line 2177
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_729
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_730
	.word	8
	.word	4
	.word	_Label_731
	.word	12
	.word	4
	.word	_Label_732
	.word	-12
	.word	4
	.word	_Label_733
	.word	-16
	.word	4
	.word	_Label_734
	.word	-20
	.word	4
	.word	0
_Label_729:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_730:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_731:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	3,r1
_Label_3200:
	push	r0
	sub	r1,1,r1
	bne	_Label_3200
	mov	2183,r13		! source line 2183
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_735 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2185,r13		! source line 2185
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2186,r13		! source line 2186
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_736 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2187,r13		! source line 2187
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2188,r13		! source line 2188
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2189,r13		! source line 2189
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2189,r13		! source line 2189
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_737
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_738
	.word	8
	.word	4
	.word	_Label_739
	.word	-12
	.word	4
	.word	_Label_740
	.word	-16
	.word	4
	.word	0
_Label_737:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_738:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_223_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_223_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3201:
	push	r0
	sub	r1,1,r1
	bne	_Label_3201
	mov	2780,r13		! source line 2780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2784,r13		! source line 2784
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_741 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_741  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0AS",r10
!   _temp_742 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_742) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_744 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_744) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_743 = *_temp_744  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_742 = _temp_743  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
!   _temp_745 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_745) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_747 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_747) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_746 = *_temp_747  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_745 = _temp_746  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
!   _temp_748 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_748) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_750 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_750) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_749 = *_temp_750  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_748 = _temp_749  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_223_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_751
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_752
	.word	8
	.word	4
	.word	_Label_753
	.word	12
	.word	4
	.word	_Label_754
	.word	-16
	.word	4
	.word	_Label_755
	.word	-9
	.word	1
	.word	_Label_756
	.word	-20
	.word	4
	.word	_Label_757
	.word	-24
	.word	4
	.word	_Label_758
	.word	-10
	.word	1
	.word	_Label_759
	.word	-28
	.word	4
	.word	_Label_760
	.word	-32
	.word	4
	.word	_Label_761
	.word	-11
	.word	1
	.word	_Label_762
	.word	-36
	.word	4
	.word	_Label_763
	.word	-12
	.word	1
	.word	_Label_764
	.word	-40
	.word	4
	.word	_Label_765
	.word	-44
	.word	4
	.word	0
_Label_751:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_752:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_753:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_755:
	.byte	'C'
	.ascii	"_temp_749\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_758:
	.byte	'C'
	.ascii	"_temp_746\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_761:
	.byte	'C'
	.ascii	"_temp_743\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_763:
	.byte	'C'
	.ascii	"_temp_741\0"
	.align
_Label_764:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_765:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_222_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_222_printFCB,r1
	push	r1
	mov	3,r1
_Label_3202:
	push	r0
	sub	r1,1,r1
	bne	_Label_3202
	mov	2790,r13		! source line 2790
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_767 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_766 = *_temp_767  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_766  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2791,r13		! source line 2791
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2792,r13		! source line 2792
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_222_printFCB:
	.word	_sourceFileName
	.word	_Label_768
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_769
	.word	8
	.word	4
	.word	_Label_770
	.word	-12
	.word	4
	.word	_Label_771
	.word	-16
	.word	4
	.word	0
_Label_768:
	.ascii	"printFCB\0"
	.align
_Label_769:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_221_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_221_printOpen,r1
	push	r1
	mov	4,r1
_Label_3203:
	push	r0
	sub	r1,1,r1
	bne	_Label_3203
	mov	2795,r13		! source line 2795
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_772 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_772  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2796,r13		! source line 2796
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_773 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_773  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2797,r13		! source line 2797
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_774 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_774  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2798,r13		! source line 2798
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_221_printOpen:
	.word	_sourceFileName
	.word	_Label_775
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_776
	.word	8
	.word	4
	.word	_Label_777
	.word	-12
	.word	4
	.word	_Label_778
	.word	-16
	.word	4
	.word	_Label_779
	.word	-20
	.word	4
	.word	0
_Label_775:
	.ascii	"printOpen\0"
	.align
_Label_776:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_780
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_780:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_781
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_781:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3204:
	push	r0
	sub	r1,1,r1
	bne	_Label_3204
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_783		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_783
!	jmp	_Label_782
_Label_782:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_784 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_783:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_786
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_787
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_788
	.word	12
	.word	4
	.word	_Label_789
	.word	-12
	.word	4
	.word	_Label_790
	.word	-16
	.word	4
	.word	0
_Label_786:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_787:
	.ascii	"Pself\0"
	.align
_Label_788:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3205:
	push	r0
	sub	r1,1,r1
	bne	_Label_3205
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_792		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_792
!	jmp	_Label_791
_Label_791:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_793 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_792:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_795		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_795
!	jmp	_Label_794
_Label_794:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_796 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_797 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_797 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_798 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_795:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_799
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_800
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_801
	.word	-12
	.word	4
	.word	_Label_802
	.word	-16
	.word	4
	.word	_Label_803
	.word	-20
	.word	4
	.word	_Label_804
	.word	-24
	.word	4
	.word	_Label_805
	.word	-28
	.word	4
	.word	_Label_806
	.word	-32
	.word	4
	.word	0
_Label_799:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_800:
	.ascii	"Pself\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_805:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_806:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3206:
	push	r0
	sub	r1,1,r1
	bne	_Label_3206
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_808		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_808
!	jmp	_Label_807
_Label_807:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_809 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_808:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_811		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_811
!	jmp	_Label_810
_Label_810:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_812 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_811:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_813
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_814
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_815
	.word	-12
	.word	4
	.word	_Label_816
	.word	-16
	.word	4
	.word	_Label_817
	.word	-20
	.word	4
	.word	0
_Label_813:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_814:
	.ascii	"Pself\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_817:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_818
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_818:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_819
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_819:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3207:
	push	r0
	sub	r1,1,r1
	bne	_Label_3207
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_821
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_822
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_823
	.word	-12
	.word	4
	.word	0
_Label_821:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_822:
	.ascii	"Pself\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3208:
	push	r0
	sub	r1,1,r1
	bne	_Label_3208
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_825		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_825
!	jmp	_Label_824
_Label_824:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_826 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_826  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_825:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_830		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_830
!   _temp_829 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_831
_Label_830:
!   _temp_829 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_831:
!   if _temp_829 then goto _Label_828 else goto _Label_827
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_827
	jmp	_Label_828
_Label_827:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_832
_Label_828:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_833 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_832:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_834
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_836
	.word	-16
	.word	4
	.word	_Label_837
	.word	-9
	.word	1
	.word	_Label_838
	.word	-20
	.word	4
	.word	_Label_839
	.word	-24
	.word	4
	.word	0
_Label_834:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_835:
	.ascii	"Pself\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_837:
	.byte	'C'
	.ascii	"_temp_829\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_839:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3209:
	push	r0
	sub	r1,1,r1
	bne	_Label_3209
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_841		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_841
!	jmp	_Label_840
_Label_840:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_842 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_842  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_841:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_843 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_845		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_845
!	jmp	_Label_844
_Label_844:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_846 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_847 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_848
_Label_845:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_848:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_849
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_850
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_851
	.word	-12
	.word	4
	.word	_Label_852
	.word	-16
	.word	4
	.word	_Label_853
	.word	-20
	.word	4
	.word	_Label_854
	.word	-24
	.word	4
	.word	_Label_855
	.word	-28
	.word	4
	.word	_Label_856
	.word	-32
	.word	4
	.word	0
_Label_849:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_850:
	.ascii	"Pself\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_855:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_856:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3210:
	push	r0
	sub	r1,1,r1
	bne	_Label_3210
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_859		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_859
!	jmp	_Label_858
_Label_858:
!   _temp_857 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_860
_Label_859:
!   _temp_857 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_860:
!   ReturnResult: _temp_857  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_861
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_862
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_863
	.word	-9
	.word	1
	.word	0
_Label_861:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_862:
	.ascii	"Pself\0"
	.align
_Label_863:
	.byte	'C'
	.ascii	"_temp_857\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_864
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_4	! 16:	IsHeldByCurrentThread
	jmp	_Method_P_Kernel_HoareMutex_5	! 20:	giveALock
	.word	0
! 
! Class descriptor:
! 
_Label_864:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_865
	.word	_sourceFileName
	.word	153		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_865:
	.ascii	"HoareMutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareMutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_1,r1
	push	r1
	mov	1,r1
_Label_3211:
	push	r0
	sub	r1,1,r1
	bne	_Label_3211
	mov	368,r13		! source line 368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_1:
	.word	_sourceFileName
	.word	_Label_867
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_869
	.word	-12
	.word	4
	.word	0
_Label_867:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_868:
	.ascii	"Pself\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_HoareMutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_2,r1
	push	r1
	mov	6,r1
_Label_3212:
	push	r0
	sub	r1,1,r1
	bne	_Label_3212
	mov	374,r13		! source line 374
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	377,r13		! source line 377
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_871		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_871
!	jmp	_Label_870
_Label_870:
! THEN...
	mov	379,r13		! source line 379
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_872 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_872  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	379,r13		! source line 379
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_871:
! IF STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_876		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_876
!   _temp_875 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_877
_Label_876:
!   _temp_875 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_877:
!   if _temp_875 then goto _Label_874 else goto _Label_873
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_873
	jmp	_Label_874
_Label_873:
! THEN...
	mov	383,r13		! source line 383
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_878
_Label_874:
! ELSE...
	mov	385,r13		! source line 385
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0SE",r10
!   _temp_879 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	386,r13		! source line 386
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_878:
! ASSIGNMENT STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	388,r13		! source line 388
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_2:
	.word	_sourceFileName
	.word	_Label_880
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_881
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_882
	.word	-16
	.word	4
	.word	_Label_883
	.word	-9
	.word	1
	.word	_Label_884
	.word	-20
	.word	4
	.word	_Label_885
	.word	-24
	.word	4
	.word	0
_Label_880:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_881:
	.ascii	"Pself\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_883:
	.byte	'C'
	.ascii	"_temp_875\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_885:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_HoareMutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_3,r1
	push	r1
	mov	8,r1
_Label_3213:
	push	r0
	sub	r1,1,r1
	bne	_Label_3213
	mov	393,r13		! source line 393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_887		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_887
!	jmp	_Label_886
_Label_886:
! THEN...
	mov	399,r13		! source line 399
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_888 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_888  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	399,r13		! source line 399
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_887:
! ASSIGNMENT STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0AS",r10
	mov	402,r13		! source line 402
	mov	"\0\0SE",r10
!   _temp_889 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_891		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_891
!	jmp	_Label_890
_Label_890:
! THEN...
	mov	404,r13		! source line 404
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_892 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_892 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0SE",r10
!   _temp_893 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_894
_Label_891:
! ELSE...
	mov	408,r13		! source line 408
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_894:
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_3:
	.word	_sourceFileName
	.word	_Label_895
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_896
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_897
	.word	-12
	.word	4
	.word	_Label_898
	.word	-16
	.word	4
	.word	_Label_899
	.word	-20
	.word	4
	.word	_Label_900
	.word	-24
	.word	4
	.word	_Label_901
	.word	-28
	.word	4
	.word	_Label_902
	.word	-32
	.word	4
	.word	0
_Label_895:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_896:
	.ascii	"Pself\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_901:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_902:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_HoareMutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_4,r1
	push	r1
	mov	1,r1
_Label_3214:
	push	r0
	sub	r1,1,r1
	bne	_Label_3214
	mov	415,r13		! source line 415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_905		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_905
!	jmp	_Label_904
_Label_904:
!   _temp_903 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_906
_Label_905:
!   _temp_903 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_906:
!   ReturnResult: _temp_903  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_4:
	.word	_sourceFileName
	.word	_Label_907
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_908
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_909
	.word	-9
	.word	1
	.word	0
_Label_907:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_908:
	.ascii	"Pself\0"
	.align
_Label_909:
	.byte	'C'
	.ascii	"_temp_903\0"
	.align
! 
! ===============  METHOD giveALock  ===============
! 
_Method_P_Kernel_HoareMutex_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_5,r1
	push	r1
	mov	5,r1
_Label_3215:
	push	r0
	sub	r1,1,r1
	bne	_Label_3215
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	423,r13		! source line 423
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_913) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_912  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_912 then goto _Label_911 else goto _Label_910
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_910
	jmp	_Label_911
_Label_910:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_914 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_914  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_911:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_5:
	.word	_sourceFileName
	.word	_Label_915
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_917
	.word	12
	.word	4
	.word	_Label_918
	.word	-16
	.word	4
	.word	_Label_919
	.word	-20
	.word	4
	.word	_Label_920
	.word	-9
	.word	1
	.word	_Label_921
	.word	-24
	.word	4
	.word	0
_Label_915:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"giveALock\0"
	.align
_Label_916:
	.ascii	"Pself\0"
	.align
_Label_917:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_920:
	.byte	'C'
	.ascii	"_temp_912\0"
	.align
_Label_921:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_922
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_922:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_923
	.word	_sourceFileName
	.word	171		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_923:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	1,r1
_Label_3216:
	push	r0
	sub	r1,1,r1
	bne	_Label_3216
	mov	439,r13		! source line 439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_925
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_926
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_927
	.word	-12
	.word	4
	.word	0
_Label_925:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_926:
	.ascii	"Pself\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	6,r1
_Label_3217:
	push	r0
	sub	r1,1,r1
	bne	_Label_3217
	mov	445,r13		! source line 445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	448,r13		! source line 448
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0IF",r10
	mov	449,r13		! source line 449
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_930  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_930 then goto _Label_929 else goto _Label_928
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_928
	jmp	_Label_929
_Label_928:
! THEN...
	mov	450,r13		! source line 450
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_931 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	450,r13		! source line 450
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_929:
! SEND STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   _temp_932 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	457,r13		! source line 457
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_933
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_934
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_935
	.word	12
	.word	4
	.word	_Label_936
	.word	-16
	.word	4
	.word	_Label_937
	.word	-20
	.word	4
	.word	_Label_938
	.word	-9
	.word	1
	.word	_Label_939
	.word	-24
	.word	4
	.word	0
_Label_933:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_934:
	.ascii	"Pself\0"
	.align
_Label_935:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_938:
	.byte	'C'
	.ascii	"_temp_930\0"
	.align
_Label_939:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	9,r1
_Label_3218:
	push	r0
	sub	r1,1,r1
	bne	_Label_3218
	mov	462,r13		! source line 462
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0IF",r10
	mov	467,r13		! source line 467
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_942  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_942 then goto _Label_941 else goto _Label_940
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_940
	jmp	_Label_941
_Label_940:
! THEN...
	mov	468,r13		! source line 468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_943 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_943  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	468,r13		! source line 468
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_941:
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
	mov	471,r13		! source line 471
	mov	"\0\0SE",r10
!   _temp_944 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_946		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_946
!	jmp	_Label_945
_Label_945:
! THEN...
	mov	473,r13		! source line 473
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_947 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_947 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message giveALock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0SE",r10
!   _temp_948 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_946:
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_949
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_951
	.word	12
	.word	4
	.word	_Label_952
	.word	-16
	.word	4
	.word	_Label_953
	.word	-20
	.word	4
	.word	_Label_954
	.word	-24
	.word	4
	.word	_Label_955
	.word	-28
	.word	4
	.word	_Label_956
	.word	-9
	.word	1
	.word	_Label_957
	.word	-32
	.word	4
	.word	_Label_958
	.word	-36
	.word	4
	.word	0
_Label_949:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_950:
	.ascii	"Pself\0"
	.align
_Label_951:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_956:
	.byte	'C'
	.ascii	"_temp_942\0"
	.align
_Label_957:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_958:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_959
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_959:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_960
	.word	_sourceFileName
	.word	184		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_960:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3219:
	push	r0
	sub	r1,1,r1
	bne	_Label_3219
	mov	517,r13		! source line 517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_962
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_964
	.word	-12
	.word	4
	.word	0
_Label_962:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_963:
	.ascii	"Pself\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3220:
	push	r0
	sub	r1,1,r1
	bne	_Label_3220
	mov	523,r13		! source line 523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0IF",r10
	mov	526,r13		! source line 526
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_967  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_967 then goto _Label_966 else goto _Label_965
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_965
	jmp	_Label_966
_Label_965:
! THEN...
	mov	527,r13		! source line 527
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_968 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_968  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	527,r13		! source line 527
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_966:
! ASSIGNMENT STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	529,r13		! source line 529
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0SE",r10
!   _temp_969 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	534,r13		! source line 534
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_970
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_972
	.word	12
	.word	4
	.word	_Label_973
	.word	-16
	.word	4
	.word	_Label_974
	.word	-20
	.word	4
	.word	_Label_975
	.word	-9
	.word	1
	.word	_Label_976
	.word	-24
	.word	4
	.word	0
_Label_970:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_971:
	.ascii	"Pself\0"
	.align
_Label_972:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_975:
	.byte	'C'
	.ascii	"_temp_967\0"
	.align
_Label_976:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3221:
	push	r0
	sub	r1,1,r1
	bne	_Label_3221
	mov	539,r13		! source line 539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
	mov	543,r13		! source line 543
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_979  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_979 then goto _Label_978 else goto _Label_977
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_977
	jmp	_Label_978
_Label_977:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_980 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_980  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	544,r13		! source line 544
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_978:
! ASSIGNMENT STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	546,r13		! source line 546
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0AS",r10
	mov	547,r13		! source line 547
	mov	"\0\0SE",r10
!   _temp_981 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_983		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_983
!	jmp	_Label_982
_Label_982:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_984 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_984 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0SE",r10
!   _temp_985 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_983:
! ASSIGNMENT STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	552,r13		! source line 552
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_986
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_987
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_988
	.word	12
	.word	4
	.word	_Label_989
	.word	-16
	.word	4
	.word	_Label_990
	.word	-20
	.word	4
	.word	_Label_991
	.word	-24
	.word	4
	.word	_Label_992
	.word	-28
	.word	4
	.word	_Label_993
	.word	-9
	.word	1
	.word	_Label_994
	.word	-32
	.word	4
	.word	_Label_995
	.word	-36
	.word	4
	.word	0
_Label_986:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_987:
	.ascii	"Pself\0"
	.align
_Label_988:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_993:
	.byte	'C'
	.ascii	"_temp_979\0"
	.align
_Label_994:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_995:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3222:
	push	r0
	sub	r1,1,r1
	bne	_Label_3222
	mov	557,r13		! source line 557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0IF",r10
	mov	561,r13		! source line 561
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_998  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_998 then goto _Label_997 else goto _Label_996
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_996
	jmp	_Label_997
_Label_996:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_999 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	562,r13		! source line 562
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_997:
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	564,r13		! source line 564
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0WH",r10
_Label_1000:
!	jmp	_Label_1001
_Label_1001:
	mov	565,r13		! source line 565
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
	mov	566,r13		! source line 566
	mov	"\0\0SE",r10
!   _temp_1003 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_1004
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1004
	jmp	_Label_1005
_Label_1004:
! THEN...
	mov	568,r13		! source line 568
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0BR",r10
	jmp	_Label_1002
! END IF...
_Label_1005:
! ASSIGNMENT STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1006 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1006 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0SE",r10
!   _temp_1007 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1000
_Label_1002:
! ASSIGNMENT STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	573,r13		! source line 573
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_1008
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1009
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1010
	.word	12
	.word	4
	.word	_Label_1011
	.word	-16
	.word	4
	.word	_Label_1012
	.word	-20
	.word	4
	.word	_Label_1013
	.word	-24
	.word	4
	.word	_Label_1014
	.word	-28
	.word	4
	.word	_Label_1015
	.word	-9
	.word	1
	.word	_Label_1016
	.word	-32
	.word	4
	.word	_Label_1017
	.word	-36
	.word	4
	.word	0
_Label_1008:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1009:
	.ascii	"Pself\0"
	.align
_Label_1010:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1015:
	.byte	'C'
	.ascii	"_temp_998\0"
	.align
_Label_1016:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1017:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1018
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1018:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1019
	.word	_sourceFileName
	.word	197		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1019:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3223:
	push	r0
	sub	r1,1,r1
	bne	_Label_3223
	mov	584,r13		! source line 584
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   _temp_1020 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1020) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1020 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
!   _temp_1021 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1021 [0 ] into _temp_1022
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_1022 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   _temp_1023 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1023 [999 ] into _temp_1024
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_1024 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0AS",r10
!   _temp_1025 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1025 [999 ] into _temp_1026
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_1026		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0AS",r10
!   _temp_1027 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1029 = &_temp_1028
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1029 = _temp_1029 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1031:
!   Data Move: *_temp_1029 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1029 = _temp_1029 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1030 = _temp_1030 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1030) then goto _Label_1031
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1031
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1032 = &_temp_1028
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3224
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3224:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1027 = *_temp_1032  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3225:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3225
! ASSIGNMENT STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0AS",r10
!   _temp_1033 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1035 = &_temp_1034
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1035 = _temp_1035 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1037:
!   Data Move: *_temp_1035 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1035 = _temp_1035 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1036 = _temp_1036 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1036) then goto _Label_1037
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1037
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1038 = &_temp_1034
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3226
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3226:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1033 = *_temp_1038  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3227:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3227
! RETURN STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1039
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1041
	.word	12
	.word	4
	.word	_Label_1042
	.word	-12
	.word	4
	.word	_Label_1043
	.word	-16
	.word	4
	.word	_Label_1044
	.word	-20
	.word	4
	.word	_Label_1045
	.word	-84
	.word	64
	.word	_Label_1046
	.word	-88
	.word	4
	.word	_Label_1047
	.word	-92
	.word	4
	.word	_Label_1048
	.word	-96
	.word	4
	.word	_Label_1049
	.word	-100
	.word	4
	.word	_Label_1050
	.word	-156
	.word	56
	.word	_Label_1051
	.word	-160
	.word	4
	.word	_Label_1052
	.word	-164
	.word	4
	.word	_Label_1053
	.word	-168
	.word	4
	.word	_Label_1054
	.word	-172
	.word	4
	.word	_Label_1055
	.word	-176
	.word	4
	.word	_Label_1056
	.word	-180
	.word	4
	.word	_Label_1057
	.word	-184
	.word	4
	.word	_Label_1058
	.word	-188
	.word	4
	.word	0
_Label_1039:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1040:
	.ascii	"Pself\0"
	.align
_Label_1041:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3228:
	push	r0
	sub	r1,1,r1
	bne	_Label_3228
	mov	603,r13		! source line 603
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1059 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1059  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	620,r13		! source line 620
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	621,r13		! source line 621
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1061 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1060  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1062
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1063
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1064
	.word	12
	.word	4
	.word	_Label_1065
	.word	16
	.word	4
	.word	_Label_1066
	.word	-12
	.word	4
	.word	_Label_1067
	.word	-16
	.word	4
	.word	_Label_1068
	.word	-20
	.word	4
	.word	_Label_1069
	.word	-24
	.word	4
	.word	_Label_1070
	.word	-28
	.word	4
	.word	0
_Label_1062:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1063:
	.ascii	"Pself\0"
	.align
_Label_1064:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1065:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1069:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1070:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3229:
	push	r0
	sub	r1,1,r1
	bne	_Label_3229
	mov	627,r13		! source line 627
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1073 == _P_Kernel_currentThread then goto _Label_1072		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1072
!	jmp	_Label_1071
_Label_1071:
! THEN...
	mov	644,r13		! source line 644
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1074 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	644,r13		! source line 644
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1072:
! ASSIGNMENT STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0AS",r10
	mov	650,r13		! source line 650
	mov	"\0\0SE",r10
!   _temp_1075 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1077		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1077
!	jmp	_Label_1076
_Label_1076:
! THEN...
	mov	655,r13		! source line 655
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1079		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1079
!	jmp	_Label_1078
_Label_1078:
! THEN...
	mov	656,r13		! source line 656
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1080 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	656,r13		! source line 656
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1079:
! ASSIGNMENT STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1082 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1081  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	660,r13		! source line 660
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1077:
! ASSIGNMENT STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1083
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1084
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1085
	.word	-12
	.word	4
	.word	_Label_1086
	.word	-16
	.word	4
	.word	_Label_1087
	.word	-20
	.word	4
	.word	_Label_1088
	.word	-24
	.word	4
	.word	_Label_1089
	.word	-28
	.word	4
	.word	_Label_1090
	.word	-32
	.word	4
	.word	_Label_1091
	.word	-36
	.word	4
	.word	_Label_1092
	.word	-40
	.word	4
	.word	_Label_1093
	.word	-44
	.word	4
	.word	0
_Label_1083:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1084:
	.ascii	"Pself\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1091:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1092:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1093:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3230:
	push	r0
	sub	r1,1,r1
	bne	_Label_3230
	mov	667,r13		! source line 667
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1095		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1095
!	jmp	_Label_1094
_Label_1094:
! THEN...
	mov	680,r13		! source line 680
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1096 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	680,r13		! source line 680
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1095:
! IF STATEMENT...
	mov	683,r13		! source line 683
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1099 == _P_Kernel_currentThread then goto _Label_1098		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1098
!	jmp	_Label_1097
_Label_1097:
! THEN...
	mov	684,r13		! source line 684
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1100 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	684,r13		! source line 684
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1098:
! ASSIGNMENT STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0AS",r10
	mov	690,r13		! source line 690
	mov	"\0\0SE",r10
!   _temp_1101 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	691,r13		! source line 691
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1102
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1102
	jmp	_Label_1103
_Label_1102:
! THEN...
	mov	692,r13		! source line 692
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1104 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1104  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	692,r13		! source line 692
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1103:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	694,r13		! source line 694
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	694,r13		! source line 694
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1105
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1107
	.word	-12
	.word	4
	.word	_Label_1108
	.word	-16
	.word	4
	.word	_Label_1109
	.word	-20
	.word	4
	.word	_Label_1110
	.word	-24
	.word	4
	.word	_Label_1111
	.word	-28
	.word	4
	.word	_Label_1112
	.word	-32
	.word	4
	.word	0
_Label_1105:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1106:
	.ascii	"Pself\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1112:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3231:
	push	r0
	sub	r1,1,r1
	bne	_Label_3231
	mov	699,r13		! source line 699
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0IF",r10
!   _temp_1116 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1116 [0 ] into _temp_1117
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1115 = *_temp_1117  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1115 == 606348324 then goto _Label_1114		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1114
!	jmp	_Label_1113
_Label_1113:
! THEN...
	mov	706,r13		! source line 706
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1118 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1118  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	706,r13		! source line 706
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1119
_Label_1114:
! ELSE...
	mov	707,r13		! source line 707
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0IF",r10
!   _temp_1123 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1123 [999 ] into _temp_1124
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1122 = *_temp_1124  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1122 == 606348324 then goto _Label_1121		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1121
!	jmp	_Label_1120
_Label_1120:
! THEN...
	mov	708,r13		! source line 708
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1125 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1125  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	708,r13		! source line 708
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1121:
! END IF...
_Label_1119:
! RETURN STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1126
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1127
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1128
	.word	-12
	.word	4
	.word	_Label_1129
	.word	-16
	.word	4
	.word	_Label_1130
	.word	-20
	.word	4
	.word	_Label_1131
	.word	-24
	.word	4
	.word	_Label_1132
	.word	-28
	.word	4
	.word	_Label_1133
	.word	-32
	.word	4
	.word	_Label_1134
	.word	-36
	.word	4
	.word	_Label_1135
	.word	-40
	.word	4
	.word	0
_Label_1126:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1127:
	.ascii	"Pself\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3232:
	push	r0
	sub	r1,1,r1
	bne	_Label_3232
	mov	714,r13		! source line 714
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	720,r13		! source line 720
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1136 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1136  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1137 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	723,r13		! source line 723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1139 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1139  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1140 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1140  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1145 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1146 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1145  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1141:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1146 then goto _Label_1144		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1144
_Label_1142:
	mov	727,r13		! source line 727
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1147 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1147  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1148 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1148  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1149 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1149  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1151 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1151 [i ] into _temp_1152
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1150 = *_temp_1152  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1150  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1153 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1153  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1155 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1155 [i ] into _temp_1156
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1154 = *_temp_1156  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1154  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1157 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1157  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1143:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1141
! END FOR
_Label_1144:
! CALL STATEMENT...
!   _temp_1158 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-116]
!   _temp_1159 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1158  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1159  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1160 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-108]
!   _temp_1162 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1162 [0 ] into _temp_1163
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1161 = _temp_1163		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1160  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1161  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	737,r13		! source line 737
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	738,r13		! source line 738
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1166
	cmp	r1,2
	be	_Label_1167
	cmp	r1,3
	be	_Label_1168
	cmp	r1,4
	be	_Label_1169
	cmp	r1,5
	be	_Label_1170
	jmp	_Label_1164
! CASE 1...
_Label_1166:
! CALL STATEMENT...
!   _temp_1171 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1171  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0BR",r10
	jmp	_Label_1165
! CASE 2...
_Label_1167:
! CALL STATEMENT...
!   _temp_1172 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1172  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	744,r13		! source line 744
	mov	"\0\0BR",r10
	jmp	_Label_1165
! CASE 3...
_Label_1168:
! CALL STATEMENT...
!   _temp_1173 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1173  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0BR",r10
	jmp	_Label_1165
! CASE 4...
_Label_1169:
! CALL STATEMENT...
!   _temp_1174 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1174  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0BR",r10
	jmp	_Label_1165
! CASE 5...
_Label_1170:
! CALL STATEMENT...
!   _temp_1175 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1175  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0BR",r10
	jmp	_Label_1165
! DEFAULT CASE...
_Label_1164:
! CALL STATEMENT...
!   _temp_1176 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	755,r13		! source line 755
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1165:
! CALL STATEMENT...
!   _temp_1177 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	757,r13		! source line 757
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1178 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1183 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1184 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1183  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1179:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1184 then goto _Label_1182		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1182
_Label_1180:
	mov	761,r13		! source line 761
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1185 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1186 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1186  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1187 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1187  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1189 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1189 [i ] into _temp_1190
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1188 = *_temp_1190  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1188  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1191 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1191  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1193 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1193 [i ] into _temp_1194
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1192 = *_temp_1194  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1192  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1195 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	768,r13		! source line 768
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1181:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1179
! END FOR
_Label_1182:
! ASSIGNMENT STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	770,r13		! source line 770
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1196
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1197
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1198
	.word	-12
	.word	4
	.word	_Label_1199
	.word	-16
	.word	4
	.word	_Label_1200
	.word	-20
	.word	4
	.word	_Label_1201
	.word	-24
	.word	4
	.word	_Label_1202
	.word	-28
	.word	4
	.word	_Label_1203
	.word	-32
	.word	4
	.word	_Label_1204
	.word	-36
	.word	4
	.word	_Label_1205
	.word	-40
	.word	4
	.word	_Label_1206
	.word	-44
	.word	4
	.word	_Label_1207
	.word	-48
	.word	4
	.word	_Label_1208
	.word	-52
	.word	4
	.word	_Label_1209
	.word	-56
	.word	4
	.word	_Label_1210
	.word	-60
	.word	4
	.word	_Label_1211
	.word	-64
	.word	4
	.word	_Label_1212
	.word	-68
	.word	4
	.word	_Label_1213
	.word	-72
	.word	4
	.word	_Label_1214
	.word	-76
	.word	4
	.word	_Label_1215
	.word	-80
	.word	4
	.word	_Label_1216
	.word	-84
	.word	4
	.word	_Label_1217
	.word	-88
	.word	4
	.word	_Label_1218
	.word	-92
	.word	4
	.word	_Label_1219
	.word	-96
	.word	4
	.word	_Label_1220
	.word	-100
	.word	4
	.word	_Label_1221
	.word	-104
	.word	4
	.word	_Label_1222
	.word	-108
	.word	4
	.word	_Label_1223
	.word	-112
	.word	4
	.word	_Label_1224
	.word	-116
	.word	4
	.word	_Label_1225
	.word	-120
	.word	4
	.word	_Label_1226
	.word	-124
	.word	4
	.word	_Label_1227
	.word	-128
	.word	4
	.word	_Label_1228
	.word	-132
	.word	4
	.word	_Label_1229
	.word	-136
	.word	4
	.word	_Label_1230
	.word	-140
	.word	4
	.word	_Label_1231
	.word	-144
	.word	4
	.word	_Label_1232
	.word	-148
	.word	4
	.word	_Label_1233
	.word	-152
	.word	4
	.word	_Label_1234
	.word	-156
	.word	4
	.word	_Label_1235
	.word	-160
	.word	4
	.word	_Label_1236
	.word	-164
	.word	4
	.word	_Label_1237
	.word	-168
	.word	4
	.word	_Label_1238
	.word	-172
	.word	4
	.word	_Label_1239
	.word	-176
	.word	4
	.word	_Label_1240
	.word	-180
	.word	4
	.word	_Label_1241
	.word	-184
	.word	4
	.word	_Label_1242
	.word	-188
	.word	4
	.word	_Label_1243
	.word	-192
	.word	4
	.word	_Label_1244
	.word	-196
	.word	4
	.word	0
_Label_1196:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1197:
	.ascii	"Pself\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1243:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1244:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1245
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1245:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1246
	.word	_sourceFileName
	.word	224		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1246:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11505,r1
_Label_3233:
	push	r0
	sub	r1,1,r1
	bne	_Label_3233
	mov	825,r13		! source line 825
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! i
!   i = 0		(4 bytes)
	mov	0,r1
	set	-46020,r2
	store	r1,[r14+r2]
! CALL STATEMENT...
!   _temp_1247 = _StringConst_110
	set	_StringConst_110,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1247  sizeInBytes=4
	set	-46016,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	835,r13		! source line 835
	mov	"\0\0AS",r10
!   _temp_1248 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1250 = &_temp_1249
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_1250 = _temp_1250 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1252 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_3234:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3234
!   _temp_1252 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_1254:
!   Data Move: *_temp_1250 = _temp_1252  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_3235:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3235
!   _temp_1250 = _temp_1250 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_1251 = _temp_1251 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_1251) then goto _Label_1254
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_1254
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_1255 = &_temp_1249
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3236
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3236:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1248 = *_temp_1255  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3237:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3237
! SEND STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0SE",r10
!   _temp_1256 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-184]
!   _temp_1257 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-180]
!   Move address of _temp_1257 [0 ] into _temp_1258
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-180],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-176]
!   Prepare Argument: offset=12  value=_temp_1256  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0SE",r10
!   _temp_1259 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-172]
!   _temp_1260 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-168]
!   Move address of _temp_1260 [1 ] into _temp_1261
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   Prepare Argument: offset=12  value=_temp_1259  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0SE",r10
!   _temp_1262 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-160]
!   _temp_1263 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-156]
!   Move address of _temp_1263 [2 ] into _temp_1264
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-152]
!   Prepare Argument: offset=12  value=_temp_1262  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-152],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0SE",r10
!   _temp_1265 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-148]
!   _temp_1266 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-144]
!   Move address of _temp_1266 [3 ] into _temp_1267
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Prepare Argument: offset=12  value=_temp_1265  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0SE",r10
!   _temp_1268 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-136]
!   _temp_1269 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-132]
!   Move address of _temp_1269 [4 ] into _temp_1270
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   Prepare Argument: offset=12  value=_temp_1268  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0SE",r10
!   _temp_1271 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-124]
!   _temp_1272 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-120]
!   Move address of _temp_1272 [5 ] into _temp_1273
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-116]
!   Prepare Argument: offset=12  value=_temp_1271  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0SE",r10
!   _temp_1274 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-112]
!   _temp_1275 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Move address of _temp_1275 [6 ] into _temp_1276
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_1274  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0SE",r10
!   _temp_1277 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-100]
!   _temp_1278 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Move address of _temp_1278 [7 ] into _temp_1279
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_1277  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0SE",r10
!   _temp_1280 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-88]
!   _temp_1281 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-84]
!   Move address of _temp_1281 [8 ] into _temp_1282
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_1280  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0SE",r10
!   _temp_1283 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-76]
!   _temp_1284 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-72]
!   Move address of _temp_1284 [9 ] into _temp_1285
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_1283  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1291 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1292 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1291  (sizeInBytes=4)
	load	[r14+-60],r1
	set	-46020,r2
	store	r1,[r14+r2]
_Label_1287:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1292 then goto _Label_1290		
	set	-46020,r1
	load	[r14+r1],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1290
_Label_1288:
	mov	858,r13		! source line 858
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0AS",r10
!   _temp_1293 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1293 [i ] into _temp_1294
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_1295 = _temp_1294 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1295 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0SE",r10
!   _temp_1297 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1297 [i ] into _temp_1298
!     make sure index expr is >= 0
	set	-46020,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1296 = _temp_1298		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1299 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1296  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1289:
!   i = i + 1
	set	-46020,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46020,r2
	store	r1,[r14+r2]
	jmp	_Label_1287
! END FOR
_Label_1290:
! ASSIGNMENT STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0SE",r10
!   _temp_1301 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	868,r13		! source line 868
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0SE",r10
!   _temp_1303 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0RE",r10
	set	46024,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1304
	.word	4		! total size of parameters
	.word	46020		! frame size = 46020
	.word	_Label_1305
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1306
	.word	-12
	.word	4
	.word	_Label_1307
	.word	-16
	.word	4
	.word	_Label_1308
	.word	-20
	.word	4
	.word	_Label_1309
	.word	-24
	.word	4
	.word	_Label_1310
	.word	-28
	.word	4
	.word	_Label_1311
	.word	-32
	.word	4
	.word	_Label_1312
	.word	-36
	.word	4
	.word	_Label_1313
	.word	-40
	.word	4
	.word	_Label_1314
	.word	-44
	.word	4
	.word	_Label_1315
	.word	-48
	.word	4
	.word	_Label_1316
	.word	-52
	.word	4
	.word	_Label_1317
	.word	-56
	.word	4
	.word	_Label_1318
	.word	-60
	.word	4
	.word	_Label_1319
	.word	-64
	.word	4
	.word	_Label_1320
	.word	-68
	.word	4
	.word	_Label_1321
	.word	-72
	.word	4
	.word	_Label_1322
	.word	-76
	.word	4
	.word	_Label_1323
	.word	-80
	.word	4
	.word	_Label_1324
	.word	-84
	.word	4
	.word	_Label_1325
	.word	-88
	.word	4
	.word	_Label_1326
	.word	-92
	.word	4
	.word	_Label_1327
	.word	-96
	.word	4
	.word	_Label_1328
	.word	-100
	.word	4
	.word	_Label_1329
	.word	-104
	.word	4
	.word	_Label_1330
	.word	-108
	.word	4
	.word	_Label_1331
	.word	-112
	.word	4
	.word	_Label_1332
	.word	-116
	.word	4
	.word	_Label_1333
	.word	-120
	.word	4
	.word	_Label_1334
	.word	-124
	.word	4
	.word	_Label_1335
	.word	-128
	.word	4
	.word	_Label_1336
	.word	-132
	.word	4
	.word	_Label_1337
	.word	-136
	.word	4
	.word	_Label_1338
	.word	-140
	.word	4
	.word	_Label_1339
	.word	-144
	.word	4
	.word	_Label_1340
	.word	-148
	.word	4
	.word	_Label_1341
	.word	-152
	.word	4
	.word	_Label_1342
	.word	-156
	.word	4
	.word	_Label_1343
	.word	-160
	.word	4
	.word	_Label_1344
	.word	-164
	.word	4
	.word	_Label_1345
	.word	-168
	.word	4
	.word	_Label_1346
	.word	-172
	.word	4
	.word	_Label_1347
	.word	-176
	.word	4
	.word	_Label_1348
	.word	-180
	.word	4
	.word	_Label_1349
	.word	-184
	.word	4
	.word	_Label_1350
	.word	-188
	.word	4
	.word	_Label_1351
	.word	-192
	.word	4
	.word	_Label_1352
	.word	-4356
	.word	4164
	.word	_Label_1353
	.word	-4360
	.word	4
	.word	_Label_1354
	.word	-4364
	.word	4
	.word	_Label_1355
	.word	-46008
	.word	41644
	.word	_Label_1356
	.word	-46012
	.word	4
	.word	_Label_1357
	.word	-46016
	.word	4
	.word	_Label_1358
	.word	-46020
	.word	4
	.word	0
_Label_1304:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1305:
	.ascii	"Pself\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1358:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3238:
	push	r0
	sub	r1,1,r1
	bne	_Label_3238
	mov	874,r13		! source line 874
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1359 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1359  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1364 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1365 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1364  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1360:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1365 then goto _Label_1363		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1363
_Label_1361:
	mov	883,r13		! source line 883
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1366 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1366  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	884,r13		! source line 884
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	885,r13		! source line 885
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1367 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1367  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1369 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1369 [i ] into _temp_1370
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1368 = _temp_1370		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1368  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	887,r13		! source line 887
	mov	"\0\0CA",r10
	call	_function_227_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1362:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1360
! END FOR
_Label_1363:
! CALL STATEMENT...
!   _temp_1371 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1371  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	889,r13		! source line 889
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	890,r13		! source line 890
	mov	"\0\0SE",r10
!   _temp_1372 = _function_226_PrintObjectAddr
	set	_function_226_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1373 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1372  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1374
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1375
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1376
	.word	-12
	.word	4
	.word	_Label_1377
	.word	-16
	.word	4
	.word	_Label_1378
	.word	-20
	.word	4
	.word	_Label_1379
	.word	-24
	.word	4
	.word	_Label_1380
	.word	-28
	.word	4
	.word	_Label_1381
	.word	-32
	.word	4
	.word	_Label_1382
	.word	-36
	.word	4
	.word	_Label_1383
	.word	-40
	.word	4
	.word	_Label_1384
	.word	-44
	.word	4
	.word	_Label_1385
	.word	-48
	.word	4
	.word	_Label_1386
	.word	-52
	.word	4
	.word	_Label_1387
	.word	-56
	.word	4
	.word	_Label_1388
	.word	-60
	.word	4
	.word	0
_Label_1374:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1375:
	.ascii	"Pself\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1387:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1388:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	13,r1
_Label_3239:
	push	r0
	sub	r1,1,r1
	bne	_Label_3239
	mov	897,r13		! source line 897
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0SE",r10
!   _temp_1389 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0IF",r10
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1392 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1390 else goto _Label_1391
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1391
	jmp	_Label_1390
_Label_1390:
! THEN...
	mov	907,r13		! source line 907
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0WH",r10
_Label_1393:
!   if currThread == 0 then goto _Label_1397		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1397
!   _temp_1396 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_1398
_Label_1397:
!   _temp_1396 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_1398:
!   if _temp_1396 then goto _Label_1395 else goto _Label_1394
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1394
	jmp	_Label_1395
_Label_1394:
	mov	907,r13		! source line 907
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0IF",r10
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_1401 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsHeldByCurrentThread
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1399 else goto _Label_1400
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1400
	jmp	_Label_1399
_Label_1399:
! THEN...
	mov	909,r13		! source line 909
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0AS",r10
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1402 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=currThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! END IF...
_Label_1400:
! IF STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0IF",r10
!   if currThread == 0 then goto _Label_1406		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1406
!   _temp_1405 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1407
_Label_1406:
!   _temp_1405 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1407:
!   if _temp_1405 then goto _Label_1404 else goto _Label_1403
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1403
	jmp	_Label_1404
_Label_1403:
! THEN...
	mov	913,r13		! source line 913
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_1408 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1409 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1408  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1404:
! END WHILE...
	jmp	_Label_1393
_Label_1395:
	jmp	_Label_1410
_Label_1391:
! ELSE...
	mov	917,r13		! source line 917
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0AS",r10
	mov	917,r13		! source line 917
	mov	"\0\0SE",r10
!   _temp_1411 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=currThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! END IF...
_Label_1410:
! ASSIGNMENT STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0AS",r10
!   if intIsZero (currThread) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1412 = currThread + 76
	load	[r14+-52],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1412 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0SE",r10
!   _temp_1413 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0RE",r10
!   ReturnResult: currThread  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1414
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1415
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1416
	.word	-16
	.word	4
	.word	_Label_1417
	.word	-20
	.word	4
	.word	_Label_1418
	.word	-24
	.word	4
	.word	_Label_1419
	.word	-28
	.word	4
	.word	_Label_1420
	.word	-32
	.word	4
	.word	_Label_1421
	.word	-9
	.word	1
	.word	_Label_1422
	.word	-36
	.word	4
	.word	_Label_1423
	.word	-40
	.word	4
	.word	_Label_1424
	.word	-10
	.word	1
	.word	_Label_1425
	.word	-44
	.word	4
	.word	_Label_1426
	.word	-48
	.word	4
	.word	_Label_1427
	.word	-52
	.word	4
	.word	0
_Label_1414:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1415:
	.ascii	"Pself\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1421:
	.byte	'C'
	.ascii	"_temp_1405\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1424:
	.byte	'C'
	.ascii	"_temp_1396\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1427:
	.byte	'P'
	.ascii	"currThread\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3240:
	push	r0
	sub	r1,1,r1
	bne	_Label_3240
	mov	926,r13		! source line 926
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1428 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1429 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1429 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0SE",r10
!   _temp_1430 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_1431 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1432 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1431  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_1433 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1434
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1435
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1436
	.word	12
	.word	4
	.word	_Label_1437
	.word	-12
	.word	4
	.word	_Label_1438
	.word	-16
	.word	4
	.word	_Label_1439
	.word	-20
	.word	4
	.word	_Label_1440
	.word	-24
	.word	4
	.word	_Label_1441
	.word	-28
	.word	4
	.word	_Label_1442
	.word	-32
	.word	4
	.word	0
_Label_1434:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1435:
	.ascii	"Pself\0"
	.align
_Label_1436:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1443
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1443:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1444
	.word	_sourceFileName
	.word	247		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1444:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3241:
	push	r0
	sub	r1,1,r1
	bne	_Label_3241
	mov	951,r13		! source line 951
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3242:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3242
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_1446 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1447
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1448
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1449
	.word	-12
	.word	4
	.word	_Label_1450
	.word	-16
	.word	4
	.word	0
_Label_1447:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1448:
	.ascii	"Pself\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3243:
	push	r0
	sub	r1,1,r1
	bne	_Label_3243
	mov	965,r13		! source line 965
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1451) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_1452 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1453 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	973,r13		! source line 973
	mov	"\0\0CA",r10
	call	_function_227_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1454
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1455
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1456
	.word	-12
	.word	4
	.word	_Label_1457
	.word	-16
	.word	4
	.word	_Label_1458
	.word	-20
	.word	4
	.word	0
_Label_1454:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1455:
	.ascii	"Pself\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3244:
	push	r0
	sub	r1,1,r1
	bne	_Label_3244
	mov	988,r13		! source line 988
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1459 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1459  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	992,r13		! source line 992
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1460  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	993,r13		! source line 993
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1461 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1461  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	994,r13		! source line 994
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	995,r13		! source line 995
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1462 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1462  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	996,r13		! source line 996
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1464		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1464
!	jmp	_Label_1463
_Label_1463:
! THEN...
	mov	998,r13		! source line 998
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1465 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1465  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	998,r13		! source line 998
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1466
_Label_1464:
! ELSE...
	mov	999,r13		! source line 999
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1468		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1468
!	jmp	_Label_1467
_Label_1467:
! THEN...
	mov	1000,r13		! source line 1000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1469 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1469  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1000,r13		! source line 1000
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1470
_Label_1468:
! ELSE...
	mov	1001,r13		! source line 1001
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1472		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1472
!	jmp	_Label_1471
_Label_1471:
! THEN...
	mov	1002,r13		! source line 1002
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1473 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1473  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1002,r13		! source line 1002
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1474
_Label_1472:
! ELSE...
	mov	1004,r13		! source line 1004
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1475 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1004,r13		! source line 1004
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1474:
! END IF...
_Label_1470:
! END IF...
_Label_1466:
! CALL STATEMENT...
!   _temp_1476 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1476  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1006,r13		! source line 1006
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1007,r13		! source line 1007
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1477 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1477  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1008,r13		! source line 1008
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1009,r13		! source line 1009
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1478
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1479
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1480
	.word	-12
	.word	4
	.word	_Label_1481
	.word	-16
	.word	4
	.word	_Label_1482
	.word	-20
	.word	4
	.word	_Label_1483
	.word	-24
	.word	4
	.word	_Label_1484
	.word	-28
	.word	4
	.word	_Label_1485
	.word	-32
	.word	4
	.word	_Label_1486
	.word	-36
	.word	4
	.word	_Label_1487
	.word	-40
	.word	4
	.word	_Label_1488
	.word	-44
	.word	4
	.word	_Label_1489
	.word	-48
	.word	4
	.word	0
_Label_1478:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1479:
	.ascii	"Pself\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1490
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1490:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1491
	.word	_sourceFileName
	.word	267		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1491:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	365,r1
_Label_3245:
	push	r0
	sub	r1,1,r1
	bne	_Label_3245
	mov	1021,r13		! source line 1021
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! i
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1460]
! ASSIGNMENT STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0AS",r10
!   _temp_1493 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1452]
!   NEW ARRAY Constructor...
!   _temp_1495 = &_temp_1494
	add	r14,-1448,r1
	store	r1,[r14+-204]
!   _temp_1495 = _temp_1495 + 4
	load	[r14+-204],r1
	add	r1,4,r1
	store	r1,[r14+-204]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1497 = zeros  (sizeInBytes=124)
	add	r14,-196,r4
	mov	31,r3
_Label_3246:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3246
!   _temp_1497 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-196]
	mov	10,r1
	store	r1,[r14+-200]
_Label_1499:
!   Data Move: *_temp_1495 = _temp_1497  (sizeInBytes=124)
	add	r14,-196,r5
	load	[r14+-204],r4
	mov	31,r3
_Label_3247:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3247
!   _temp_1495 = _temp_1495 + 124
	load	[r14+-204],r1
	add	r1,124,r1
	store	r1,[r14+-204]
!   _temp_1496 = _temp_1496 + -1
	load	[r14+-200],r1
	add	r1,-1,r1
	store	r1,[r14+-200]
!   if intNotZero (_temp_1496) then goto _Label_1499
	load	[r14+-200],r1
	cmp	r1,r0
	bne	_Label_1499
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1448]
!   _temp_1500 = &_temp_1494
	add	r14,-1448,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1452],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3248
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3248:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1493 = *_temp_1500  (sizeInBytes=1244)
	load	[r14+-68],r5
	load	[r14+-1452],r4
	mov	311,r3
_Label_3249:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3249
! FOR STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1505 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1506 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1505  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1460]
_Label_1501:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1506 then goto _Label_1504		
	load	[r14+-1460],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1504
_Label_1502:
	mov	1050,r13		! source line 1050
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_1507 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1507 [i ] into _temp_1508
!     make sure index expr is >= 0
	load	[r14+-1460],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0SE",r10
!   _temp_1510 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1510 [i ] into _temp_1511
!     make sure index expr is >= 0
	load	[r14+-1460],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1509 = _temp_1511		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1512 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1509  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1503:
!   i = i + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1501
! END FOR
_Label_1504:
! ASSIGNMENT STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0SE",r10
!   _temp_1514 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0SE",r10
!   _temp_1516 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0SE",r10
!   _temp_1518 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0RE",r10
	add	r15,1464,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1519
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1520
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1521
	.word	-12
	.word	4
	.word	_Label_1522
	.word	-16
	.word	4
	.word	_Label_1523
	.word	-20
	.word	4
	.word	_Label_1524
	.word	-24
	.word	4
	.word	_Label_1525
	.word	-28
	.word	4
	.word	_Label_1526
	.word	-32
	.word	4
	.word	_Label_1527
	.word	-36
	.word	4
	.word	_Label_1528
	.word	-40
	.word	4
	.word	_Label_1529
	.word	-44
	.word	4
	.word	_Label_1530
	.word	-48
	.word	4
	.word	_Label_1531
	.word	-52
	.word	4
	.word	_Label_1532
	.word	-56
	.word	4
	.word	_Label_1533
	.word	-60
	.word	4
	.word	_Label_1534
	.word	-64
	.word	4
	.word	_Label_1535
	.word	-68
	.word	4
	.word	_Label_1536
	.word	-72
	.word	4
	.word	_Label_1537
	.word	-196
	.word	124
	.word	_Label_1538
	.word	-200
	.word	4
	.word	_Label_1539
	.word	-204
	.word	4
	.word	_Label_1540
	.word	-1448
	.word	1244
	.word	_Label_1541
	.word	-1452
	.word	4
	.word	_Label_1542
	.word	-1456
	.word	4
	.word	_Label_1543
	.word	-1460
	.word	4
	.word	0
_Label_1519:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1520:
	.ascii	"Pself\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1543:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3250:
	push	r0
	sub	r1,1,r1
	bne	_Label_3250
	mov	1069,r13		! source line 1069
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1544 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1544  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1077,r13		! source line 1077
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1549 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1550 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1549  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1545:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1550 then goto _Label_1548		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1548
_Label_1546:
	mov	1078,r13		! source line 1078
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1551 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1551  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1079,r13		! source line 1079
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1080,r13		! source line 1080
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1552 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1552  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1081,r13		! source line 1081
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1553 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1553 [i ] into _temp_1554
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1547:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1545
! END FOR
_Label_1548:
! CALL STATEMENT...
!   _temp_1555 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1555  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1084,r13		! source line 1084
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1085,r13		! source line 1085
	mov	"\0\0SE",r10
!   _temp_1556 = _function_226_PrintObjectAddr
	set	_function_226_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1557 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1556  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1086,r13		! source line 1086
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1087,r13		! source line 1087
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1558
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1560
	.word	-12
	.word	4
	.word	_Label_1561
	.word	-16
	.word	4
	.word	_Label_1562
	.word	-20
	.word	4
	.word	_Label_1563
	.word	-24
	.word	4
	.word	_Label_1564
	.word	-28
	.word	4
	.word	_Label_1565
	.word	-32
	.word	4
	.word	_Label_1566
	.word	-36
	.word	4
	.word	_Label_1567
	.word	-40
	.word	4
	.word	_Label_1568
	.word	-44
	.word	4
	.word	_Label_1569
	.word	-48
	.word	4
	.word	_Label_1570
	.word	-52
	.word	4
	.word	_Label_1571
	.word	-56
	.word	4
	.word	0
_Label_1558:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1559:
	.ascii	"Pself\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1570:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1571:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3251:
	push	r0
	sub	r1,1,r1
	bne	_Label_3251
	mov	1092,r13		! source line 1092
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1099,r13		! source line 1099
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1572 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1572  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1100,r13		! source line 1100
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1577 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1578 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1577  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1573:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1578 then goto _Label_1576		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1576
_Label_1574:
	mov	1101,r13		! source line 1101
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1579 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1579  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1102,r13		! source line 1102
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1103,r13		! source line 1103
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_1580 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1580 [i ] into _temp_1581
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1575:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1573
! END FOR
_Label_1576:
! CALL STATEMENT...
!   _temp_1582 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1582  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1106,r13		! source line 1106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_1583 = _function_226_PrintObjectAddr
	set	_function_226_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1584 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1583  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1585
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1586
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1587
	.word	-12
	.word	4
	.word	_Label_1588
	.word	-16
	.word	4
	.word	_Label_1589
	.word	-20
	.word	4
	.word	_Label_1590
	.word	-24
	.word	4
	.word	_Label_1591
	.word	-28
	.word	4
	.word	_Label_1592
	.word	-32
	.word	4
	.word	_Label_1593
	.word	-36
	.word	4
	.word	_Label_1594
	.word	-40
	.word	4
	.word	_Label_1595
	.word	-44
	.word	4
	.word	_Label_1596
	.word	-48
	.word	4
	.word	_Label_1597
	.word	-52
	.word	4
	.word	0
_Label_1585:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1586:
	.ascii	"Pself\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1596:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1597:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	14,r1
_Label_3252:
	push	r0
	sub	r1,1,r1
	bne	_Label_3252
	mov	1114,r13		! source line 1114
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1598 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0IF",r10
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1601 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-48]
!   Send message IsEmpty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1599 else goto _Label_1600
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1600
	jmp	_Label_1599
_Label_1599:
! THEN...
	mov	1125,r13		! source line 1125
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0WH",r10
_Label_1602:
!   if current_Process == 0 then goto _Label_1606		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1606
!   _temp_1605 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_1607
_Label_1606:
!   _temp_1605 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_1607:
!   if _temp_1605 then goto _Label_1604 else goto _Label_1603
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1603
	jmp	_Label_1604
_Label_1603:
	mov	1125,r13		! source line 1125
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0IF",r10
	mov	1126,r13		! source line 1126
	mov	"\0\0SE",r10
!   _temp_1610 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-44]
!   Send message IsHeldByCurrentThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1608 else goto _Label_1609
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1609
	jmp	_Label_1608
_Label_1608:
! THEN...
	mov	1127,r13		! source line 1127
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0AS",r10
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1611 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=current_Process  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! END IF...
_Label_1609:
! IF STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0IF",r10
!   if current_Process == 0 then goto _Label_1615		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1615
!   _temp_1614 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1616
_Label_1615:
!   _temp_1614 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1616:
!   if _temp_1614 then goto _Label_1613 else goto _Label_1612
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1612
	jmp	_Label_1613
_Label_1612:
! THEN...
	mov	1131,r13		! source line 1131
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_1617 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1618 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1617  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1613:
! END WHILE...
	jmp	_Label_1602
_Label_1604:
	jmp	_Label_1619
_Label_1600:
! ELSE...
	mov	1135,r13		! source line 1135
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0AS",r10
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_1620 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=current_Process  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! END IF...
_Label_1619:
! ASSIGNMENT STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
!   if intIsZero (current_Process) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1621 = current_Process + 12
	load	[r14+-56],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1621 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0AS",r10
!   if intIsZero (current_Process) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1622 = current_Process + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1622 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_1623 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0RE",r10
!   ReturnResult: current_Process  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1624
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1625
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1626
	.word	-16
	.word	4
	.word	_Label_1627
	.word	-20
	.word	4
	.word	_Label_1628
	.word	-24
	.word	4
	.word	_Label_1629
	.word	-28
	.word	4
	.word	_Label_1630
	.word	-32
	.word	4
	.word	_Label_1631
	.word	-36
	.word	4
	.word	_Label_1632
	.word	-9
	.word	1
	.word	_Label_1633
	.word	-40
	.word	4
	.word	_Label_1634
	.word	-44
	.word	4
	.word	_Label_1635
	.word	-10
	.word	1
	.word	_Label_1636
	.word	-48
	.word	4
	.word	_Label_1637
	.word	-52
	.word	4
	.word	_Label_1638
	.word	-56
	.word	4
	.word	0
_Label_1624:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1625:
	.ascii	"Pself\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1632:
	.byte	'C'
	.ascii	"_temp_1614\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1635:
	.byte	'C'
	.ascii	"_temp_1605\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1638:
	.byte	'P'
	.ascii	"current_Process\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3253:
	push	r0
	sub	r1,1,r1
	bne	_Label_3253
	mov	1147,r13		! source line 1147
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1639 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1640 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1640 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_1641 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1642 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1643 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1642  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0SE",r10
!   _temp_1644 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1645
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1646
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1647
	.word	12
	.word	4
	.word	_Label_1648
	.word	-12
	.word	4
	.word	_Label_1649
	.word	-16
	.word	4
	.word	_Label_1650
	.word	-20
	.word	4
	.word	_Label_1651
	.word	-24
	.word	4
	.word	_Label_1652
	.word	-28
	.word	4
	.word	_Label_1653
	.word	-32
	.word	4
	.word	0
_Label_1645:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1646:
	.ascii	"Pself\0"
	.align
_Label_1647:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1654
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1654:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1655
	.word	_sourceFileName
	.word	290		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1655:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	16,r1
_Label_3254:
	push	r0
	sub	r1,1,r1
	bne	_Label_3254
	mov	1189,r13		! source line 1189
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   numOfWaitingFrames = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! CALL STATEMENT...
!   _temp_1656 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1656  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1196,r13		! source line 1196
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
!   _temp_1658 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
!   _temp_1660 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,44,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+44]
! SEND STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
!   _temp_1662 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: restFrameGroup = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   restFrameGroup = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
!   _temp_1664 = &restFrameGroup
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1669 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1670 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1669  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1665:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1670 then goto _Label_1668		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1668
_Label_1666:
	mov	1211,r13		! source line 1211
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1673 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1673) then goto _Label_1672
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1672
!	jmp	_Label_1671
_Label_1671:
! THEN...
	mov	1215,r13		! source line 1215
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1674 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1674  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1215,r13		! source line 1215
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1672:
!   Increment the FOR-LOOP index variable and jump back
_Label_1667:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1665
! END FOR
_Label_1668:
! RETURN STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1675
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1677
	.word	-12
	.word	4
	.word	_Label_1678
	.word	-16
	.word	4
	.word	_Label_1679
	.word	-20
	.word	4
	.word	_Label_1680
	.word	-24
	.word	4
	.word	_Label_1681
	.word	-28
	.word	4
	.word	_Label_1682
	.word	-32
	.word	4
	.word	_Label_1683
	.word	-36
	.word	4
	.word	_Label_1684
	.word	-40
	.word	4
	.word	_Label_1685
	.word	-44
	.word	4
	.word	_Label_1686
	.word	-48
	.word	4
	.word	_Label_1687
	.word	-52
	.word	4
	.word	_Label_1688
	.word	-56
	.word	4
	.word	_Label_1689
	.word	-60
	.word	4
	.word	_Label_1690
	.word	-64
	.word	4
	.word	0
_Label_1675:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1676:
	.ascii	"Pself\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1690:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3255:
	push	r0
	sub	r1,1,r1
	bne	_Label_3255
	mov	1222,r13		! source line 1222
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0SE",r10
!   _temp_1691 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1692 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1692  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1227,r13		! source line 1227
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1693 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1693  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1694 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1694  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0SE",r10
!   _temp_1695 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0SE",r10
!   _temp_1696 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1697
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1698
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1699
	.word	-12
	.word	4
	.word	_Label_1700
	.word	-16
	.word	4
	.word	_Label_1701
	.word	-20
	.word	4
	.word	_Label_1702
	.word	-24
	.word	4
	.word	_Label_1703
	.word	-28
	.word	4
	.word	_Label_1704
	.word	-32
	.word	4
	.word	0
_Label_1697:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1698:
	.ascii	"Pself\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3256:
	push	r0
	sub	r1,1,r1
	bne	_Label_3256
	mov	1236,r13		! source line 1236
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0SE",r10
!   _temp_1705 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0WH",r10
_Label_1706:
!   if numberFreeFrames >= 1 then goto _Label_1708		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1708
!	jmp	_Label_1707
_Label_1707:
	mov	1247,r13		! source line 1247
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
!   _temp_1709 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   _temp_1710 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1709  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1706
_Label_1708:
! ASSIGNMENT STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0AS",r10
	mov	1252,r13		! source line 1252
	mov	"\0\0SE",r10
!   _temp_1711 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0SE",r10
!   _temp_1712 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1259,r13		! source line 1259
	mov	"\0\0AS",r10
!   _temp_1713 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1713		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1714
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1715
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1716
	.word	-12
	.word	4
	.word	_Label_1717
	.word	-16
	.word	4
	.word	_Label_1718
	.word	-20
	.word	4
	.word	_Label_1719
	.word	-24
	.word	4
	.word	_Label_1720
	.word	-28
	.word	4
	.word	_Label_1721
	.word	-32
	.word	4
	.word	_Label_1722
	.word	-36
	.word	4
	.word	_Label_1723
	.word	-40
	.word	4
	.word	0
_Label_1714:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1715:
	.ascii	"Pself\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1722:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1723:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	22,r1
_Label_3257:
	push	r0
	sub	r1,1,r1
	bne	_Label_3257
	mov	1266,r13		! source line 1266
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0SE",r10
!   _temp_1724 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Send message Lock
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0AS",r10
!   numOfWaitingFrames = numOfWaitingFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! IF STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0IF",r10
!   if numOfWaitingFrames <= 1 then goto _Label_1726		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1726
!	jmp	_Label_1725
_Label_1725:
! THEN...
	mov	1276,r13		! source line 1276
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0SE",r10
!   _temp_1727 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   _temp_1728 = &restFrameGroup
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_1727  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1726:
! WHILE STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0WH",r10
_Label_1729:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1731		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1731
!	jmp	_Label_1730
_Label_1730:
	mov	1279,r13		! source line 1279
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_1732 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   _temp_1733 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1732  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1729
_Label_1731:
! FOR STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1738 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1739 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1738  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-76]
_Label_1734:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1739 then goto _Label_1737		
	load	[r14+-76],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1737
_Label_1735:
	mov	1287,r13		! source line 1287
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0AS",r10
	mov	1288,r13		! source line 1288
	mov	"\0\0SE",r10
!   _temp_1740 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message FindZeroAndSet
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   _temp_1741 = f * 8192		(int)
	load	[r14+-84],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   frameAddr = 1048576 + _temp_1741		(int)
	set	1048576,r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1736:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_1734
! END FOR
_Label_1737:
! ASSIGNMENT STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1742 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1745 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1744 = *_temp_1745  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_1743 = _temp_1744 + numFramesNeeded		(int)
	load	[r14+-28],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Data Move: *_temp_1742 = _temp_1743  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0AS",r10
!   numOfWaitingFrames = numOfWaitingFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1300,r13		! source line 1300
	mov	"\0\0SE",r10
!   _temp_1746 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   _temp_1747 = &restFrameGroup
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1746  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   _temp_1748 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1749
	.word	12		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_1750
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1751
	.word	12
	.word	4
	.word	_Label_1752
	.word	16
	.word	4
	.word	_Label_1753
	.word	-12
	.word	4
	.word	_Label_1754
	.word	-16
	.word	4
	.word	_Label_1755
	.word	-20
	.word	4
	.word	_Label_1756
	.word	-24
	.word	4
	.word	_Label_1757
	.word	-28
	.word	4
	.word	_Label_1758
	.word	-32
	.word	4
	.word	_Label_1759
	.word	-36
	.word	4
	.word	_Label_1760
	.word	-40
	.word	4
	.word	_Label_1761
	.word	-44
	.word	4
	.word	_Label_1762
	.word	-48
	.word	4
	.word	_Label_1763
	.word	-52
	.word	4
	.word	_Label_1764
	.word	-56
	.word	4
	.word	_Label_1765
	.word	-60
	.word	4
	.word	_Label_1766
	.word	-64
	.word	4
	.word	_Label_1767
	.word	-68
	.word	4
	.word	_Label_1768
	.word	-72
	.word	4
	.word	_Label_1769
	.word	-76
	.word	4
	.word	_Label_1770
	.word	-80
	.word	4
	.word	_Label_1771
	.word	-84
	.word	4
	.word	0
_Label_1749:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1750:
	.ascii	"Pself\0"
	.align
_Label_1751:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1752:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1769:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1770:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1771:
	.byte	'I'
	.ascii	"f\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	19,r1
_Label_3258:
	push	r0
	sub	r1,1,r1
	bne	_Label_3258
	mov	1308,r13		! source line 1308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0SE",r10
!   _temp_1772 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1773 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: numFramesToReturn = *_temp_1773  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1326,r13		! source line 1326
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1778 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1779 = numFramesToReturn - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1778  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1774:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1779 then goto _Label_1777		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1777
_Label_1775:
	mov	1326,r13		! source line 1326
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0AS",r10
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1328,r13		! source line 1328
	mov	"\0\0AS",r10
!   _temp_1780 = frameAddr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bitNumber = _temp_1780 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0SE",r10
!   _temp_1781 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1330,r13		! source line 1330
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
!   Increment the FOR-LOOP index variable and jump back
_Label_1776:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1774
! END FOR
_Label_1777:
! SEND STATEMENT...
	mov	1335,r13		! source line 1335
	mov	"\0\0SE",r10
!   _temp_1782 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   _temp_1783 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1782  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1338,r13		! source line 1338
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1784 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1787 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1786 = *_temp_1787  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1785 = _temp_1786 - numFramesToReturn		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1784 = _temp_1785  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0SE",r10
!   _temp_1788 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1789
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1791
	.word	12
	.word	4
	.word	_Label_1792
	.word	-12
	.word	4
	.word	_Label_1793
	.word	-16
	.word	4
	.word	_Label_1794
	.word	-20
	.word	4
	.word	_Label_1795
	.word	-24
	.word	4
	.word	_Label_1796
	.word	-28
	.word	4
	.word	_Label_1797
	.word	-32
	.word	4
	.word	_Label_1798
	.word	-36
	.word	4
	.word	_Label_1799
	.word	-40
	.word	4
	.word	_Label_1800
	.word	-44
	.word	4
	.word	_Label_1801
	.word	-48
	.word	4
	.word	_Label_1802
	.word	-52
	.word	4
	.word	_Label_1803
	.word	-56
	.word	4
	.word	_Label_1804
	.word	-60
	.word	4
	.word	_Label_1805
	.word	-64
	.word	4
	.word	_Label_1806
	.word	-68
	.word	4
	.word	_Label_1807
	.word	-72
	.word	4
	.word	_Label_1808
	.word	-76
	.word	4
	.word	0
_Label_1789:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1790:
	.ascii	"Pself\0"
	.align
_Label_1791:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1805:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1806:
	.byte	'I'
	.ascii	"numFramesToReturn\0"
	.align
_Label_1807:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1808:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1809
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1809:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1810
	.word	_sourceFileName
	.word	311		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1810:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3259:
	push	r0
	sub	r1,1,r1
	bne	_Label_3259
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0AS",r10
!   _temp_1811 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1813 = &_temp_1812
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1813 = _temp_1813 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1815:
!   Data Move: *_temp_1813 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1813 = _temp_1813 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1814 = _temp_1814 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1814) then goto _Label_1815
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1815
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1816 = &_temp_1812
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3260
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3260:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1811 = *_temp_1816  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3261:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3261
! RETURN STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1817
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1819
	.word	-12
	.word	4
	.word	_Label_1820
	.word	-16
	.word	4
	.word	_Label_1821
	.word	-20
	.word	4
	.word	_Label_1822
	.word	-104
	.word	84
	.word	_Label_1823
	.word	-108
	.word	4
	.word	0
_Label_1817:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1818:
	.ascii	"Pself\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3262:
	push	r0
	sub	r1,1,r1
	bne	_Label_3262
	mov	1419,r13		! source line 1419
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1824 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1824  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1424,r13		! source line 1424
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1825 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1825  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1425,r13		! source line 1425
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1830 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1831 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1830  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1826:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1831 then goto _Label_1829		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1829
_Label_1827:
	mov	1426,r13		! source line 1426
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1832 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1832  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1427,r13		! source line 1427
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1834 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1834 [i ] into _temp_1835
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1833 = _temp_1835		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1833  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1428,r13		! source line 1428
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1836 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1836  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1429,r13		! source line 1429
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1838 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1838 [i ] into _temp_1839
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1837 = *_temp_1839  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1837  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1840 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1840  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1431,r13		! source line 1431
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1841 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1841  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1432,r13		! source line 1432
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1842 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1842  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1433,r13		! source line 1433
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1844) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1843  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1843  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1434,r13		! source line 1434
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1845 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1845  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1435,r13		! source line 1435
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1436,r13		! source line 1436
	mov	"\0\0IF",r10
	mov	1436,r13		! source line 1436
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1849) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1848  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1848) then goto _Label_1847
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1847
!	jmp	_Label_1846
_Label_1846:
! THEN...
	mov	1437,r13		! source line 1437
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1851) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1850  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1850  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1437,r13		! source line 1437
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1852
_Label_1847:
! ELSE...
	mov	1439,r13		! source line 1439
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1853 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1853  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1439,r13		! source line 1439
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1852:
! CALL STATEMENT...
!   _temp_1854 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1854  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1441,r13		! source line 1441
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0IF",r10
	mov	1442,r13		! source line 1442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1857) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1855 else goto _Label_1856
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1856
	jmp	_Label_1855
_Label_1855:
! THEN...
	mov	1443,r13		! source line 1443
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1858 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1858  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1443,r13		! source line 1443
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1859
_Label_1856:
! ELSE...
	mov	1445,r13		! source line 1445
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1860 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1860  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1445,r13		! source line 1445
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1859:
! CALL STATEMENT...
!   _temp_1861 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1861  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1447,r13		! source line 1447
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
	mov	1448,r13		! source line 1448
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1864) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1862 else goto _Label_1863
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1863
	jmp	_Label_1862
_Label_1862:
! THEN...
	mov	1449,r13		! source line 1449
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1865 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1865  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1449,r13		! source line 1449
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1866
_Label_1863:
! ELSE...
	mov	1451,r13		! source line 1451
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1867 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1451,r13		! source line 1451
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1866:
! CALL STATEMENT...
!   _temp_1868 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1868  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0IF",r10
	mov	1454,r13		! source line 1454
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1871) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1869 else goto _Label_1870
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1870
	jmp	_Label_1869
_Label_1869:
! THEN...
	mov	1455,r13		! source line 1455
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1872 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1872  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1455,r13		! source line 1455
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1873
_Label_1870:
! ELSE...
	mov	1457,r13		! source line 1457
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1874 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1874  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1457,r13		! source line 1457
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1873:
! CALL STATEMENT...
!   _temp_1875 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1875  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1459,r13		! source line 1459
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0IF",r10
	mov	1460,r13		! source line 1460
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1878) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1876 else goto _Label_1877
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1877
	jmp	_Label_1876
_Label_1876:
! THEN...
	mov	1461,r13		! source line 1461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1879 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1879  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1461,r13		! source line 1461
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1880
_Label_1877:
! ELSE...
	mov	1463,r13		! source line 1463
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1881 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1881  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1463,r13		! source line 1463
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1880:
! CALL STATEMENT...
!   Call the function
	mov	1465,r13		! source line 1465
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1828:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1826
! END FOR
_Label_1829:
! RETURN STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1882
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1884
	.word	-12
	.word	4
	.word	_Label_1885
	.word	-16
	.word	4
	.word	_Label_1886
	.word	-20
	.word	4
	.word	_Label_1887
	.word	-24
	.word	4
	.word	_Label_1888
	.word	-28
	.word	4
	.word	_Label_1889
	.word	-32
	.word	4
	.word	_Label_1890
	.word	-36
	.word	4
	.word	_Label_1891
	.word	-40
	.word	4
	.word	_Label_1892
	.word	-44
	.word	4
	.word	_Label_1893
	.word	-48
	.word	4
	.word	_Label_1894
	.word	-52
	.word	4
	.word	_Label_1895
	.word	-56
	.word	4
	.word	_Label_1896
	.word	-60
	.word	4
	.word	_Label_1897
	.word	-64
	.word	4
	.word	_Label_1898
	.word	-68
	.word	4
	.word	_Label_1899
	.word	-72
	.word	4
	.word	_Label_1900
	.word	-76
	.word	4
	.word	_Label_1901
	.word	-80
	.word	4
	.word	_Label_1902
	.word	-84
	.word	4
	.word	_Label_1903
	.word	-88
	.word	4
	.word	_Label_1904
	.word	-92
	.word	4
	.word	_Label_1905
	.word	-96
	.word	4
	.word	_Label_1906
	.word	-100
	.word	4
	.word	_Label_1907
	.word	-104
	.word	4
	.word	_Label_1908
	.word	-108
	.word	4
	.word	_Label_1909
	.word	-112
	.word	4
	.word	_Label_1910
	.word	-116
	.word	4
	.word	_Label_1911
	.word	-120
	.word	4
	.word	_Label_1912
	.word	-124
	.word	4
	.word	_Label_1913
	.word	-128
	.word	4
	.word	_Label_1914
	.word	-132
	.word	4
	.word	_Label_1915
	.word	-136
	.word	4
	.word	_Label_1916
	.word	-140
	.word	4
	.word	_Label_1917
	.word	-144
	.word	4
	.word	_Label_1918
	.word	-148
	.word	4
	.word	_Label_1919
	.word	-152
	.word	4
	.word	_Label_1920
	.word	-156
	.word	4
	.word	_Label_1921
	.word	-160
	.word	4
	.word	_Label_1922
	.word	-164
	.word	4
	.word	_Label_1923
	.word	-168
	.word	4
	.word	0
_Label_1882:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1883:
	.ascii	"Pself\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1837\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1836\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1835\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1923:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3263:
	push	r0
	sub	r1,1,r1
	bne	_Label_3263
	mov	1471,r13		! source line 1471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0RE",r10
!   _temp_1926 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1926 [entry ] into _temp_1927
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1925 = *_temp_1927  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1924 = _temp_1925 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1924  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1928
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1929
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1930
	.word	12
	.word	4
	.word	_Label_1931
	.word	-12
	.word	4
	.word	_Label_1932
	.word	-16
	.word	4
	.word	_Label_1933
	.word	-20
	.word	4
	.word	_Label_1934
	.word	-24
	.word	4
	.word	0
_Label_1928:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1929:
	.ascii	"Pself\0"
	.align
_Label_1930:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3264:
	push	r0
	sub	r1,1,r1
	bne	_Label_3264
	mov	1481,r13		! source line 1481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
!   _temp_1937 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1937 [entry ] into _temp_1938
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1936 = *_temp_1938  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1935 = _temp_1936 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1935  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1939
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1941
	.word	12
	.word	4
	.word	_Label_1942
	.word	-12
	.word	4
	.word	_Label_1943
	.word	-16
	.word	4
	.word	_Label_1944
	.word	-20
	.word	4
	.word	_Label_1945
	.word	-24
	.word	4
	.word	0
_Label_1939:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1940:
	.ascii	"Pself\0"
	.align
_Label_1941:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3265:
	push	r0
	sub	r1,1,r1
	bne	_Label_3265
	mov	1490,r13		! source line 1490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   _temp_1946 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1946 [entry ] into _temp_1947
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1951 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1951 [entry ] into _temp_1952
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1950 = *_temp_1952  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1949 = _temp_1950 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1948 = _temp_1949 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1947 = _temp_1948  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1953
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1954
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1955
	.word	12
	.word	4
	.word	_Label_1956
	.word	16
	.word	4
	.word	_Label_1957
	.word	-12
	.word	4
	.word	_Label_1958
	.word	-16
	.word	4
	.word	_Label_1959
	.word	-20
	.word	4
	.word	_Label_1960
	.word	-24
	.word	4
	.word	_Label_1961
	.word	-28
	.word	4
	.word	_Label_1962
	.word	-32
	.word	4
	.word	_Label_1963
	.word	-36
	.word	4
	.word	0
_Label_1953:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1954:
	.ascii	"Pself\0"
	.align
_Label_1955:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1956:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3266:
	push	r0
	sub	r1,1,r1
	bne	_Label_3266
	mov	1500,r13		! source line 1500
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0RE",r10
!   _temp_1967 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1967 [entry ] into _temp_1968
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1966 = *_temp_1968  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1965 = _temp_1966 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1965) then goto _Label_1969
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1969
!   _temp_1964 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1970
_Label_1969:
!   _temp_1964 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1970:
!   ReturnResult: _temp_1964  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1971
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1973
	.word	12
	.word	4
	.word	_Label_1974
	.word	-16
	.word	4
	.word	_Label_1975
	.word	-20
	.word	4
	.word	_Label_1976
	.word	-24
	.word	4
	.word	_Label_1977
	.word	-28
	.word	4
	.word	_Label_1978
	.word	-9
	.word	1
	.word	0
_Label_1971:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1972:
	.ascii	"Pself\0"
	.align
_Label_1973:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1978:
	.byte	'C'
	.ascii	"_temp_1964\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3267:
	push	r0
	sub	r1,1,r1
	bne	_Label_3267
	mov	1509,r13		! source line 1509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0RE",r10
!   _temp_1982 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1982 [entry ] into _temp_1983
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1981 = *_temp_1983  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1980 = _temp_1981 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1980) then goto _Label_1984
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1984
!   _temp_1979 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1985
_Label_1984:
!   _temp_1979 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1985:
!   ReturnResult: _temp_1979  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1986
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1987
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1988
	.word	12
	.word	4
	.word	_Label_1989
	.word	-16
	.word	4
	.word	_Label_1990
	.word	-20
	.word	4
	.word	_Label_1991
	.word	-24
	.word	4
	.word	_Label_1992
	.word	-28
	.word	4
	.word	_Label_1993
	.word	-9
	.word	1
	.word	0
_Label_1986:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1987:
	.ascii	"Pself\0"
	.align
_Label_1988:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1993:
	.byte	'C'
	.ascii	"_temp_1979\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3268:
	push	r0
	sub	r1,1,r1
	bne	_Label_3268
	mov	1518,r13		! source line 1518
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0RE",r10
!   _temp_1997 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1997 [entry ] into _temp_1998
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1996 = *_temp_1998  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1995 = _temp_1996 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1995) then goto _Label_1999
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1999
!   _temp_1994 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2000
_Label_1999:
!   _temp_1994 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2000:
!   ReturnResult: _temp_1994  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_2001
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2003
	.word	12
	.word	4
	.word	_Label_2004
	.word	-16
	.word	4
	.word	_Label_2005
	.word	-20
	.word	4
	.word	_Label_2006
	.word	-24
	.word	4
	.word	_Label_2007
	.word	-28
	.word	4
	.word	_Label_2008
	.word	-9
	.word	1
	.word	0
_Label_2001:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2002:
	.ascii	"Pself\0"
	.align
_Label_2003:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2008:
	.byte	'C'
	.ascii	"_temp_1994\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3269:
	push	r0
	sub	r1,1,r1
	bne	_Label_3269
	mov	1527,r13		! source line 1527
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0RE",r10
!   _temp_2012 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2012 [entry ] into _temp_2013
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_2011 = *_temp_2013  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2010 = _temp_2011 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2010) then goto _Label_2014
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2014
!   _temp_2009 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2015
_Label_2014:
!   _temp_2009 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2015:
!   ReturnResult: _temp_2009  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_2016
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2017
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2018
	.word	12
	.word	4
	.word	_Label_2019
	.word	-16
	.word	4
	.word	_Label_2020
	.word	-20
	.word	4
	.word	_Label_2021
	.word	-24
	.word	4
	.word	_Label_2022
	.word	-28
	.word	4
	.word	_Label_2023
	.word	-9
	.word	1
	.word	0
_Label_2016:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2017:
	.ascii	"Pself\0"
	.align
_Label_2018:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2023:
	.byte	'C'
	.ascii	"_temp_2009\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3270:
	push	r0
	sub	r1,1,r1
	bne	_Label_3270
	mov	1536,r13		! source line 1536
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   _temp_2024 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2024 [entry ] into _temp_2025
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2028 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2028 [entry ] into _temp_2029
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2027 = *_temp_2029  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2026 = _temp_2027 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2025 = _temp_2026  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_2030
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2032
	.word	12
	.word	4
	.word	_Label_2033
	.word	-12
	.word	4
	.word	_Label_2034
	.word	-16
	.word	4
	.word	_Label_2035
	.word	-20
	.word	4
	.word	_Label_2036
	.word	-24
	.word	4
	.word	_Label_2037
	.word	-28
	.word	4
	.word	_Label_2038
	.word	-32
	.word	4
	.word	0
_Label_2030:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2031:
	.ascii	"Pself\0"
	.align
_Label_2032:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3271:
	push	r0
	sub	r1,1,r1
	bne	_Label_3271
	mov	1545,r13		! source line 1545
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0AS",r10
!   _temp_2039 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2039 [entry ] into _temp_2040
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2043 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2043 [entry ] into _temp_2044
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2042 = *_temp_2044  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2041 = _temp_2042 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2040 = _temp_2041  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1549,r13		! source line 1549
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_2045
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2046
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2047
	.word	12
	.word	4
	.word	_Label_2048
	.word	-12
	.word	4
	.word	_Label_2049
	.word	-16
	.word	4
	.word	_Label_2050
	.word	-20
	.word	4
	.word	_Label_2051
	.word	-24
	.word	4
	.word	_Label_2052
	.word	-28
	.word	4
	.word	_Label_2053
	.word	-32
	.word	4
	.word	0
_Label_2045:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2046:
	.ascii	"Pself\0"
	.align
_Label_2047:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2050:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2052:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3272:
	push	r0
	sub	r1,1,r1
	bne	_Label_3272
	mov	1554,r13		! source line 1554
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0AS",r10
!   _temp_2054 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2054 [entry ] into _temp_2055
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2058 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2058 [entry ] into _temp_2059
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2057 = *_temp_2059  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2056 = _temp_2057 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2055 = _temp_2056  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_2060
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2062
	.word	12
	.word	4
	.word	_Label_2063
	.word	-12
	.word	4
	.word	_Label_2064
	.word	-16
	.word	4
	.word	_Label_2065
	.word	-20
	.word	4
	.word	_Label_2066
	.word	-24
	.word	4
	.word	_Label_2067
	.word	-28
	.word	4
	.word	_Label_2068
	.word	-32
	.word	4
	.word	0
_Label_2060:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2061:
	.ascii	"Pself\0"
	.align
_Label_2062:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3273:
	push	r0
	sub	r1,1,r1
	bne	_Label_3273
	mov	1563,r13		! source line 1563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0AS",r10
!   _temp_2069 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2069 [entry ] into _temp_2070
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2073 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2073 [entry ] into _temp_2074
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2072 = *_temp_2074  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2071 = _temp_2072 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2070 = _temp_2071  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_2075
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2076
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2077
	.word	12
	.word	4
	.word	_Label_2078
	.word	-12
	.word	4
	.word	_Label_2079
	.word	-16
	.word	4
	.word	_Label_2080
	.word	-20
	.word	4
	.word	_Label_2081
	.word	-24
	.word	4
	.word	_Label_2082
	.word	-28
	.word	4
	.word	_Label_2083
	.word	-32
	.word	4
	.word	0
_Label_2075:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2076:
	.ascii	"Pself\0"
	.align
_Label_2077:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3274:
	push	r0
	sub	r1,1,r1
	bne	_Label_3274
	mov	1572,r13		! source line 1572
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0AS",r10
!   _temp_2084 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2084 [entry ] into _temp_2085
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2088 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2088 [entry ] into _temp_2089
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2087 = *_temp_2089  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2086 = _temp_2087 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2085 = _temp_2086  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1576,r13		! source line 1576
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_2090
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2092
	.word	12
	.word	4
	.word	_Label_2093
	.word	-12
	.word	4
	.word	_Label_2094
	.word	-16
	.word	4
	.word	_Label_2095
	.word	-20
	.word	4
	.word	_Label_2096
	.word	-24
	.word	4
	.word	_Label_2097
	.word	-28
	.word	4
	.word	_Label_2098
	.word	-32
	.word	4
	.word	0
_Label_2090:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2091:
	.ascii	"Pself\0"
	.align
_Label_2092:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3275:
	push	r0
	sub	r1,1,r1
	bne	_Label_3275
	mov	1581,r13		! source line 1581
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0AS",r10
!   _temp_2099 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2099 [entry ] into _temp_2100
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2103 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2103 [entry ] into _temp_2104
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2102 = *_temp_2104  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2101 = _temp_2102 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2100 = _temp_2101  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2105
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2107
	.word	12
	.word	4
	.word	_Label_2108
	.word	-12
	.word	4
	.word	_Label_2109
	.word	-16
	.word	4
	.word	_Label_2110
	.word	-20
	.word	4
	.word	_Label_2111
	.word	-24
	.word	4
	.word	_Label_2112
	.word	-28
	.word	4
	.word	_Label_2113
	.word	-32
	.word	4
	.word	0
_Label_2105:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2106:
	.ascii	"Pself\0"
	.align
_Label_2107:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2101\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3276:
	push	r0
	sub	r1,1,r1
	bne	_Label_3276
	mov	1590,r13		! source line 1590
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0AS",r10
!   _temp_2114 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2114 [entry ] into _temp_2115
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2118 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2118 [entry ] into _temp_2119
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2117 = *_temp_2119  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2116 = _temp_2117 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2115 = _temp_2116  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2120
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2122
	.word	12
	.word	4
	.word	_Label_2123
	.word	-12
	.word	4
	.word	_Label_2124
	.word	-16
	.word	4
	.word	_Label_2125
	.word	-20
	.word	4
	.word	_Label_2126
	.word	-24
	.word	4
	.word	_Label_2127
	.word	-28
	.word	4
	.word	_Label_2128
	.word	-32
	.word	4
	.word	0
_Label_2120:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2121:
	.ascii	"Pself\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3277:
	push	r0
	sub	r1,1,r1
	bne	_Label_3277
	mov	1599,r13		! source line 1599
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0AS",r10
!   _temp_2129 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2129 [entry ] into _temp_2130
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2133 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2133 [entry ] into _temp_2134
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2132 = *_temp_2134  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2131 = _temp_2132 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2130 = _temp_2131  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2135
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2136
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2137
	.word	12
	.word	4
	.word	_Label_2138
	.word	-12
	.word	4
	.word	_Label_2139
	.word	-16
	.word	4
	.word	_Label_2140
	.word	-20
	.word	4
	.word	_Label_2141
	.word	-24
	.word	4
	.word	_Label_2142
	.word	-28
	.word	4
	.word	_Label_2143
	.word	-32
	.word	4
	.word	0
_Label_2135:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2136:
	.ascii	"Pself\0"
	.align
_Label_2137:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3278:
	push	r0
	sub	r1,1,r1
	bne	_Label_3278
	mov	1608,r13		! source line 1608
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2145 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2145 [0 ] into _temp_2146
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2144 = _temp_2146		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2147 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2144  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2147  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1614,r13		! source line 1614
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2148
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2149
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2150
	.word	-12
	.word	4
	.word	_Label_2151
	.word	-16
	.word	4
	.word	_Label_2152
	.word	-20
	.word	4
	.word	_Label_2153
	.word	-24
	.word	4
	.word	0
_Label_2148:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2149:
	.ascii	"Pself\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3279:
	push	r0
	sub	r1,1,r1
	bne	_Label_3279
	mov	1619,r13		! source line 1619
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2154
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2154
	jmp	_Label_2155
_Label_2154:
! THEN...
	mov	1635,r13		! source line 1635
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2156
_Label_2155:
! ELSE...
	mov	1636,r13		! source line 1636
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2158		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2158
!	jmp	_Label_2157
_Label_2157:
! THEN...
	mov	1637,r13		! source line 1637
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2158:
! END IF...
_Label_2156:
! ASSIGNMENT STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0WH",r10
_Label_2159:
!	jmp	_Label_2160
_Label_2160:
	mov	1643,r13		! source line 1643
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2163		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2163
!	jmp	_Label_2162
_Label_2162:
! THEN...
	mov	1645,r13		! source line 1645
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2164 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2164  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1645,r13		! source line 1645
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2163:
! IF STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0IF",r10
	mov	1648,r13		! source line 1648
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2168) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2167  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2167 then goto _Label_2166 else goto _Label_2165
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2165
	jmp	_Label_2166
_Label_2165:
! THEN...
	mov	1649,r13		! source line 1649
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2169 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2169  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1649,r13		! source line 1649
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2166:
! ASSIGNMENT STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0AS",r10
	mov	1652,r13		! source line 1652
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2171) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2170  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2170 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0WH",r10
_Label_2172:
!   if offset >= 8192 then goto _Label_2174		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2174
!	jmp	_Label_2173
_Label_2173:
	mov	1654,r13		! source line 1654
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2175 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2175  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2177		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2177
!	jmp	_Label_2176
_Label_2176:
! THEN...
	mov	1663,r13		! source line 1663
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2177:
! END WHILE...
	jmp	_Label_2172
_Label_2174:
! ASSIGNMENT STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2159
_Label_2161:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2178
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2179
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2180
	.word	12
	.word	4
	.word	_Label_2181
	.word	16
	.word	4
	.word	_Label_2182
	.word	20
	.word	4
	.word	_Label_2183
	.word	-9
	.word	1
	.word	_Label_2184
	.word	-16
	.word	4
	.word	_Label_2185
	.word	-20
	.word	4
	.word	_Label_2186
	.word	-24
	.word	4
	.word	_Label_2187
	.word	-28
	.word	4
	.word	_Label_2188
	.word	-10
	.word	1
	.word	_Label_2189
	.word	-32
	.word	4
	.word	_Label_2190
	.word	-36
	.word	4
	.word	_Label_2191
	.word	-40
	.word	4
	.word	_Label_2192
	.word	-44
	.word	4
	.word	_Label_2193
	.word	-48
	.word	4
	.word	0
_Label_2178:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2179:
	.ascii	"Pself\0"
	.align
_Label_2180:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2181:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2182:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2183:
	.byte	'C'
	.ascii	"_temp_2175\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2188:
	.byte	'C'
	.ascii	"_temp_2167\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2190:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2191:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2192:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2193:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3280:
	push	r0
	sub	r1,1,r1
	bne	_Label_3280
	mov	1673,r13		! source line 1673
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2194
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2194
	jmp	_Label_2195
_Label_2194:
! THEN...
	mov	1685,r13		! source line 1685
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2196
_Label_2195:
! ELSE...
	mov	1686,r13		! source line 1686
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2198		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2198
!	jmp	_Label_2197
_Label_2197:
! THEN...
	mov	1687,r13		! source line 1687
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1687,r13		! source line 1687
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2198:
! END IF...
_Label_2196:
! ASSIGNMENT STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1690,r13		! source line 1690
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0WH",r10
_Label_2199:
!	jmp	_Label_2200
_Label_2200:
	mov	1691,r13		! source line 1691
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1692,r13		! source line 1692
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2205		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2205
	jmp	_Label_2202
_Label_2205:
	mov	1693,r13		! source line 1693
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2207) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2206  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2206 then goto _Label_2204 else goto _Label_2202
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2202
	jmp	_Label_2204
_Label_2204:
	mov	1694,r13		! source line 1694
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2209) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2208  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2208 then goto _Label_2203 else goto _Label_2202
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2202
	jmp	_Label_2203
_Label_2202:
! THEN...
	mov	1695,r13		! source line 1695
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2203:
! ASSIGNMENT STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0AS",r10
	mov	1697,r13		! source line 1697
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2211) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2210  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2210 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0WH",r10
_Label_2212:
!   if offset >= 8192 then goto _Label_2214		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2214
!	jmp	_Label_2213
_Label_2213:
	mov	1698,r13		! source line 1698
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2215 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2215  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1703,r13		! source line 1703
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2217		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2217
!	jmp	_Label_2216
_Label_2216:
! THEN...
	mov	1705,r13		! source line 1705
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2217:
! END WHILE...
	jmp	_Label_2212
_Label_2214:
! ASSIGNMENT STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2199
_Label_2201:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2218
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2219
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2220
	.word	12
	.word	4
	.word	_Label_2221
	.word	16
	.word	4
	.word	_Label_2222
	.word	20
	.word	4
	.word	_Label_2223
	.word	-9
	.word	1
	.word	_Label_2224
	.word	-16
	.word	4
	.word	_Label_2225
	.word	-20
	.word	4
	.word	_Label_2226
	.word	-24
	.word	4
	.word	_Label_2227
	.word	-10
	.word	1
	.word	_Label_2228
	.word	-28
	.word	4
	.word	_Label_2229
	.word	-11
	.word	1
	.word	_Label_2230
	.word	-32
	.word	4
	.word	_Label_2231
	.word	-36
	.word	4
	.word	_Label_2232
	.word	-40
	.word	4
	.word	_Label_2233
	.word	-44
	.word	4
	.word	0
_Label_2218:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2219:
	.ascii	"Pself\0"
	.align
_Label_2220:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2221:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2222:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2223:
	.byte	'C'
	.ascii	"_temp_2215\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2227:
	.byte	'C'
	.ascii	"_temp_2208\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2229:
	.byte	'C'
	.ascii	"_temp_2206\0"
	.align
_Label_2230:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2231:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2232:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2233:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3281:
	push	r0
	sub	r1,1,r1
	bne	_Label_3281
	mov	1715,r13		! source line 1715
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0IF",r10
	mov	1739,r13		! source line 1739
	mov	"\0\0SE",r10
!   _temp_2237 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2238) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2237  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2236  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2236 >= 4 then goto _Label_2235		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2235
!	jmp	_Label_2234
_Label_2234:
! THEN...
	mov	1742,r13		! source line 1742
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2235:
! IF STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2240		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2240
!	jmp	_Label_2239
_Label_2239:
! THEN...
	mov	1747,r13		! source line 1747
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2240:
! ASSIGNMENT STATEMENT...
	mov	1750,r13		! source line 1750
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0RE",r10
	mov	1752,r13		! source line 1752
	mov	"\0\0SE",r10
!   _temp_2243 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2242 = _temp_2243 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2244 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2245) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2242  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2244  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2241  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2241  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2246
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2247
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2248
	.word	12
	.word	4
	.word	_Label_2249
	.word	16
	.word	4
	.word	_Label_2250
	.word	20
	.word	4
	.word	_Label_2251
	.word	-12
	.word	4
	.word	_Label_2252
	.word	-16
	.word	4
	.word	_Label_2253
	.word	-20
	.word	4
	.word	_Label_2254
	.word	-24
	.word	4
	.word	_Label_2255
	.word	-28
	.word	4
	.word	_Label_2256
	.word	-32
	.word	4
	.word	_Label_2257
	.word	-36
	.word	4
	.word	_Label_2258
	.word	-40
	.word	4
	.word	_Label_2259
	.word	-44
	.word	4
	.word	0
_Label_2246:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2247:
	.ascii	"Pself\0"
	.align
_Label_2248:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2249:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2250:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2259:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2260
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2260:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2261
	.word	_sourceFileName
	.word	344		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2261:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3282:
	push	r0
	sub	r1,1,r1
	bne	_Label_3282
	mov	2216,r13		! source line 2216
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2262 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2262  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2217,r13		! source line 2217
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2222,r13		! source line 2222
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0SE",r10
!   _temp_2264 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0SE",r10
!   _temp_2266 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2267
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2268
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2269
	.word	-12
	.word	4
	.word	_Label_2270
	.word	-16
	.word	4
	.word	_Label_2271
	.word	-20
	.word	4
	.word	_Label_2272
	.word	-24
	.word	4
	.word	_Label_2273
	.word	-28
	.word	4
	.word	0
_Label_2267:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2268:
	.ascii	"Pself\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3283:
	push	r0
	sub	r1,1,r1
	bne	_Label_3283
	mov	2232,r13		! source line 2232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0SE",r10
!   _temp_2274 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0WH",r10
_Label_2275:
!	jmp	_Label_2276
_Label_2276:
	mov	2246,r13		! source line 2246
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0SE",r10
!   _temp_2278 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2279) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2278  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0SE",r10
!   _temp_2280 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2253,r13		! source line 2253
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2289 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2283
	cmp	r1,2
	be	_Label_2284
	cmp	r1,3
	be	_Label_2285
	cmp	r1,4
	be	_Label_2286
	cmp	r1,5
	be	_Label_2287
	cmp	r1,6
	be	_Label_2288
	jmp	_Label_2281
! CASE 1...
_Label_2283:
! SEND STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0SE",r10
!   _temp_2290 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2284:
! CALL STATEMENT...
!   _temp_2291 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2291  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2258,r13		! source line 2258
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2285:
! CALL STATEMENT...
!   _temp_2292 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2292  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2260,r13		! source line 2260
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2286:
! CALL STATEMENT...
!   _temp_2293 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2293  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2262,r13		! source line 2262
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2287:
! BREAK STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0BR",r10
	jmp	_Label_2282
! CASE 6...
_Label_2288:
! CALL STATEMENT...
!   _temp_2294 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2294  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2268,r13		! source line 2268
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2281:
! CALL STATEMENT...
!   _temp_2295 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2295  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2270,r13		! source line 2270
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2282:
! END WHILE...
	jmp	_Label_2275
_Label_2277:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2296
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2297
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2298
	.word	12
	.word	4
	.word	_Label_2299
	.word	16
	.word	4
	.word	_Label_2300
	.word	20
	.word	4
	.word	_Label_2301
	.word	-12
	.word	4
	.word	_Label_2302
	.word	-16
	.word	4
	.word	_Label_2303
	.word	-20
	.word	4
	.word	_Label_2304
	.word	-24
	.word	4
	.word	_Label_2305
	.word	-28
	.word	4
	.word	_Label_2306
	.word	-32
	.word	4
	.word	_Label_2307
	.word	-36
	.word	4
	.word	_Label_2308
	.word	-40
	.word	4
	.word	_Label_2309
	.word	-44
	.word	4
	.word	_Label_2310
	.word	-48
	.word	4
	.word	_Label_2311
	.word	-52
	.word	4
	.word	0
_Label_2296:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2297:
	.ascii	"Pself\0"
	.align
_Label_2298:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2299:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2300:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2279,r13		! source line 2279
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2312
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2313
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2314
	.word	12
	.word	4
	.word	_Label_2315
	.word	16
	.word	4
	.word	_Label_2316
	.word	20
	.word	4
	.word	_Label_2317
	.word	24
	.word	4
	.word	0
_Label_2312:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2313:
	.ascii	"Pself\0"
	.align
_Label_2314:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2315:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2316:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2317:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3284:
	push	r0
	sub	r1,1,r1
	bne	_Label_3284
	mov	2305,r13		! source line 2305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0SE",r10
!   _temp_2318 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0WH",r10
_Label_2319:
!	jmp	_Label_2320
_Label_2320:
	mov	2318,r13		! source line 2318
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0SE",r10
!   _temp_2322 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2323) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2322  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0SE",r10
!   _temp_2324 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2324,r13		! source line 2324
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2333 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2327
	cmp	r1,2
	be	_Label_2328
	cmp	r1,3
	be	_Label_2329
	cmp	r1,4
	be	_Label_2330
	cmp	r1,5
	be	_Label_2331
	cmp	r1,6
	be	_Label_2332
	jmp	_Label_2325
! CASE 1...
_Label_2327:
! SEND STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0SE",r10
!   _temp_2334 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2328:
! CALL STATEMENT...
!   _temp_2335 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2335  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2329,r13		! source line 2329
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2329:
! CALL STATEMENT...
!   _temp_2336 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2336  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2331,r13		! source line 2331
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2330:
! CALL STATEMENT...
!   _temp_2337 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2337  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2333,r13		! source line 2333
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2331:
! BREAK STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0BR",r10
	jmp	_Label_2326
! CASE 6...
_Label_2332:
! CALL STATEMENT...
!   _temp_2338 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2338  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2339,r13		! source line 2339
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2325:
! CALL STATEMENT...
!   _temp_2339 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2339  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2341,r13		! source line 2341
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2326:
! END WHILE...
	jmp	_Label_2319
_Label_2321:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2340
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2341
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2342
	.word	12
	.word	4
	.word	_Label_2343
	.word	16
	.word	4
	.word	_Label_2344
	.word	20
	.word	4
	.word	_Label_2345
	.word	-12
	.word	4
	.word	_Label_2346
	.word	-16
	.word	4
	.word	_Label_2347
	.word	-20
	.word	4
	.word	_Label_2348
	.word	-24
	.word	4
	.word	_Label_2349
	.word	-28
	.word	4
	.word	_Label_2350
	.word	-32
	.word	4
	.word	_Label_2351
	.word	-36
	.word	4
	.word	_Label_2352
	.word	-40
	.word	4
	.word	_Label_2353
	.word	-44
	.word	4
	.word	_Label_2354
	.word	-48
	.word	4
	.word	_Label_2355
	.word	-52
	.word	4
	.word	0
_Label_2340:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2341:
	.ascii	"Pself\0"
	.align
_Label_2342:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2343:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2344:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2350,r13		! source line 2350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2356
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2357
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2358
	.word	12
	.word	4
	.word	_Label_2359
	.word	16
	.word	4
	.word	_Label_2360
	.word	20
	.word	4
	.word	_Label_2361
	.word	24
	.word	4
	.word	0
_Label_2356:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2357:
	.ascii	"Pself\0"
	.align
_Label_2358:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2359:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2360:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2361:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2362
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2362:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2363
	.word	_sourceFileName
	.word	367		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2363:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3285:
	push	r0
	sub	r1,1,r1
	bne	_Label_3285
	mov	2381,r13		! source line 2381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2364 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2364  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2388,r13		! source line 2388
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0SE",r10
!   _temp_2366 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0SE",r10
!   _temp_2369 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0AS",r10
!   _temp_2370 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2372 = &_temp_2371
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2372 = _temp_2372 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2374 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3286:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3286
!   _temp_2374 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2376:
!   Data Move: *_temp_2372 = _temp_2374  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3287:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3287
!   _temp_2372 = _temp_2372 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2373 = _temp_2373 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2373) then goto _Label_2376
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2376
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2377 = &_temp_2371
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3288
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3288:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2370 = *_temp_2377  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3289:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3289
! FOR STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2382 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2383 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2382  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2378:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2383 then goto _Label_2381		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2381
_Label_2379:
	mov	2398,r13		! source line 2398
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0AS",r10
!   _temp_2384 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2384 [i ] into _temp_2385
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2386 = _temp_2385 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2386 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0SE",r10
!   _temp_2387 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2387 [i ] into _temp_2388
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0SE",r10
!   _temp_2390 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2390 [i ] into _temp_2391
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2389 = _temp_2391		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2392 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2389  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2380:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2378
! END FOR
_Label_2381:
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_2395 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0AS",r10
!   _temp_2396 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2398 = &_temp_2397
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2398 = _temp_2398 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2400 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3290:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3290
!   _temp_2400 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2402:
!   Data Move: *_temp_2398 = _temp_2400  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3291:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3291
!   _temp_2398 = _temp_2398 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2399 = _temp_2399 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2399) then goto _Label_2402
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2402
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2403 = &_temp_2397
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3292
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3292:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2396 = *_temp_2403  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3293:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3293
! FOR STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2408 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2409 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2408  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2404:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2409 then goto _Label_2407		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2407
_Label_2405:
	mov	2410,r13		! source line 2410
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   _temp_2410 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2410 [i ] into _temp_2411
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2412 = _temp_2411 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2412 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0SE",r10
!   _temp_2414 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2414 [i ] into _temp_2415
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2413 = _temp_2415		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2416 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2413  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2406:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2404
! END FOR
_Label_2407:
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3294:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3294
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   _temp_2418 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2419 = _temp_2418 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2419 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
	mov	2422,r13		! source line 2422
	mov	"\0\0SE",r10
!   _temp_2420 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0SE",r10
!   _temp_2421 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2422
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2423
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2424
	.word	-12
	.word	4
	.word	_Label_2425
	.word	-16
	.word	4
	.word	_Label_2426
	.word	-20
	.word	4
	.word	_Label_2427
	.word	-24
	.word	4
	.word	_Label_2428
	.word	-28
	.word	4
	.word	_Label_2429
	.word	-32
	.word	4
	.word	_Label_2430
	.word	-36
	.word	4
	.word	_Label_2431
	.word	-40
	.word	4
	.word	_Label_2432
	.word	-44
	.word	4
	.word	_Label_2433
	.word	-48
	.word	4
	.word	_Label_2434
	.word	-52
	.word	4
	.word	_Label_2435
	.word	-56
	.word	4
	.word	_Label_2436
	.word	-60
	.word	4
	.word	_Label_2437
	.word	-64
	.word	4
	.word	_Label_2438
	.word	-68
	.word	4
	.word	_Label_2439
	.word	-72
	.word	4
	.word	_Label_2440
	.word	-100
	.word	28
	.word	_Label_2441
	.word	-104
	.word	4
	.word	_Label_2442
	.word	-108
	.word	4
	.word	_Label_2443
	.word	-392
	.word	284
	.word	_Label_2444
	.word	-396
	.word	4
	.word	_Label_2445
	.word	-400
	.word	4
	.word	_Label_2446
	.word	-404
	.word	4
	.word	_Label_2447
	.word	-408
	.word	4
	.word	_Label_2448
	.word	-412
	.word	4
	.word	_Label_2449
	.word	-416
	.word	4
	.word	_Label_2450
	.word	-420
	.word	4
	.word	_Label_2451
	.word	-424
	.word	4
	.word	_Label_2452
	.word	-428
	.word	4
	.word	_Label_2453
	.word	-432
	.word	4
	.word	_Label_2454
	.word	-436
	.word	4
	.word	_Label_2455
	.word	-440
	.word	4
	.word	_Label_2456
	.word	-444
	.word	4
	.word	_Label_2457
	.word	-448
	.word	4
	.word	_Label_2458
	.word	-452
	.word	4
	.word	_Label_2459
	.word	-456
	.word	4
	.word	_Label_2460
	.word	-460
	.word	4
	.word	_Label_2461
	.word	-500
	.word	40
	.word	_Label_2462
	.word	-504
	.word	4
	.word	_Label_2463
	.word	-508
	.word	4
	.word	_Label_2464
	.word	-912
	.word	404
	.word	_Label_2465
	.word	-916
	.word	4
	.word	_Label_2466
	.word	-920
	.word	4
	.word	_Label_2467
	.word	-924
	.word	4
	.word	_Label_2468
	.word	-928
	.word	4
	.word	_Label_2469
	.word	-932
	.word	4
	.word	_Label_2470
	.word	-936
	.word	4
	.word	_Label_2471
	.word	-940
	.word	4
	.word	_Label_2472
	.word	-944
	.word	4
	.word	0
_Label_2422:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2423:
	.ascii	"Pself\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2448:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2472:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3295:
	push	r0
	sub	r1,1,r1
	bne	_Label_3295
	mov	2430,r13		! source line 2430
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0SE",r10
!   _temp_2473 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2474 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2474  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2433,r13		! source line 2433
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2479 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2480 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2479  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2475:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2480 then goto _Label_2478		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2478
_Label_2476:
	mov	2434,r13		! source line 2434
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2481 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2481  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2435,r13		! source line 2435
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2436,r13		! source line 2436
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2482 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2482  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2437,r13		! source line 2437
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0SE",r10
!   _temp_2483 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2483 [i ] into _temp_2484
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2477:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2475
! END FOR
_Label_2478:
! CALL STATEMENT...
!   _temp_2485 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2485  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2440,r13		! source line 2440
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0SE",r10
!   _temp_2486 = _function_222_printFCB
	set	_function_222_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2487 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2486  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2442,r13		! source line 2442
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2488 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2488  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2443,r13		! source line 2443
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2493 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2494 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2493  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2489:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2494 then goto _Label_2492		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2492
_Label_2490:
	mov	2444,r13		! source line 2444
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2495 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2495  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2445,r13		! source line 2445
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2446,r13		! source line 2446
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2496 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2496  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2447,r13		! source line 2447
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2498 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2498 [i ] into _temp_2499
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2497 = _temp_2499		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2497  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2448,r13		! source line 2448
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2500 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2500  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2449,r13		! source line 2449
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0SE",r10
!   _temp_2501 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2501 [i ] into _temp_2502
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2491:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2489
! END FOR
_Label_2492:
! CALL STATEMENT...
!   _temp_2503 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2503  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2452,r13		! source line 2452
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0SE",r10
!   _temp_2504 = _function_221_printOpen
	set	_function_221_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2505 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2504  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0SE",r10
!   _temp_2506 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2507
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2508
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2509
	.word	-12
	.word	4
	.word	_Label_2510
	.word	-16
	.word	4
	.word	_Label_2511
	.word	-20
	.word	4
	.word	_Label_2512
	.word	-24
	.word	4
	.word	_Label_2513
	.word	-28
	.word	4
	.word	_Label_2514
	.word	-32
	.word	4
	.word	_Label_2515
	.word	-36
	.word	4
	.word	_Label_2516
	.word	-40
	.word	4
	.word	_Label_2517
	.word	-44
	.word	4
	.word	_Label_2518
	.word	-48
	.word	4
	.word	_Label_2519
	.word	-52
	.word	4
	.word	_Label_2520
	.word	-56
	.word	4
	.word	_Label_2521
	.word	-60
	.word	4
	.word	_Label_2522
	.word	-64
	.word	4
	.word	_Label_2523
	.word	-68
	.word	4
	.word	_Label_2524
	.word	-72
	.word	4
	.word	_Label_2525
	.word	-76
	.word	4
	.word	_Label_2526
	.word	-80
	.word	4
	.word	_Label_2527
	.word	-84
	.word	4
	.word	_Label_2528
	.word	-88
	.word	4
	.word	_Label_2529
	.word	-92
	.word	4
	.word	_Label_2530
	.word	-96
	.word	4
	.word	_Label_2531
	.word	-100
	.word	4
	.word	_Label_2532
	.word	-104
	.word	4
	.word	_Label_2533
	.word	-108
	.word	4
	.word	_Label_2534
	.word	-112
	.word	4
	.word	_Label_2535
	.word	-116
	.word	4
	.word	0
_Label_2507:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2508:
	.ascii	"Pself\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2535:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3296:
	push	r0
	sub	r1,1,r1
	bne	_Label_3296
	mov	2459,r13		! source line 2459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0AS",r10
	mov	2475,r13		! source line 2475
	mov	"\0\0SE",r10
!   _temp_2536 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2537
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2537
	jmp	_Label_2538
_Label_2537:
! THEN...
	mov	2477,r13		! source line 2477
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2538:
! SEND STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0SE",r10
!   _temp_2539 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0WH",r10
_Label_2540:
	mov	2482,r13		! source line 2482
	mov	"\0\0SE",r10
!   _temp_2543 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2541 else goto _Label_2542
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2542
	jmp	_Label_2541
_Label_2541:
	mov	2482,r13		! source line 2482
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0SE",r10
!   _temp_2544 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2545 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2544  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2540
_Label_2542:
! ASSIGNMENT STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
	mov	2485,r13		! source line 2485
	mov	"\0\0SE",r10
!   _temp_2546 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2547 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2547 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2548 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2548 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2549 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2549 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0SE",r10
!   _temp_2550 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2551
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2552
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2553
	.word	12
	.word	4
	.word	_Label_2554
	.word	-12
	.word	4
	.word	_Label_2555
	.word	-16
	.word	4
	.word	_Label_2556
	.word	-20
	.word	4
	.word	_Label_2557
	.word	-24
	.word	4
	.word	_Label_2558
	.word	-28
	.word	4
	.word	_Label_2559
	.word	-32
	.word	4
	.word	_Label_2560
	.word	-36
	.word	4
	.word	_Label_2561
	.word	-40
	.word	4
	.word	_Label_2562
	.word	-44
	.word	4
	.word	_Label_2563
	.word	-48
	.word	4
	.word	_Label_2564
	.word	-52
	.word	4
	.word	_Label_2565
	.word	-56
	.word	4
	.word	0
_Label_2551:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2552:
	.ascii	"Pself\0"
	.align
_Label_2553:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2564:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2565:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3297:
	push	r0
	sub	r1,1,r1
	bne	_Label_3297
	mov	2500,r13		! source line 2500
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2567		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2567
!	jmp	_Label_2566
_Label_2566:
! THEN...
	mov	2531,r13		! source line 2531
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2568 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2568  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2531,r13		! source line 2531
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2567:
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0WH",r10
_Label_2569:
!   if numFiles <= 0 then goto _Label_2571		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2571
!	jmp	_Label_2570
_Label_2570:
	mov	2541,r13		! source line 2541
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2572 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2572  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2542,r13		! source line 2542
	mov	"\0\0CA",r10
	call	_function_223_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2573 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2573  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2544,r13		! source line 2544
	mov	"\0\0CA",r10
	call	_function_223_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2574 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2574  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CA",r10
	call	_function_223_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2578 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2578 then goto _Label_2576		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2576
!	jmp	_Label_2577
_Label_2577:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2580
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2579 = _temp_2580		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2579  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2549,r13		! source line 2549
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2575 else goto _Label_2576
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2576
	jmp	_Label_2575
_Label_2575:
! THEN...
	mov	2550,r13		! source line 2550
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0BR",r10
	jmp	_Label_2571
! END IF...
_Label_2576:
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2569
_Label_2571:
! IF STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2582		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2582
!	jmp	_Label_2581
_Label_2581:
! THEN...
	mov	2558,r13		! source line 2558
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2582:
! SEND STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0SE",r10
!   _temp_2583 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2588 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2589 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2588  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2584:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2589 then goto _Label_2587		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2587
_Label_2585:
	mov	2563,r13		! source line 2563
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   _temp_2590 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2590 [i ] into _temp_2591
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2591		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2595 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2594 = *_temp_2595  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2594 != start then goto _Label_2593		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2593
!	jmp	_Label_2592
_Label_2592:
! THEN...
	mov	2566,r13		! source line 2566
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2596 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2599 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2598 = *_temp_2599  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2597 = _temp_2598 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2596 = _temp_2597  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0SE",r10
!   _temp_2600 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2593:
!   Increment the FOR-LOOP index variable and jump back
_Label_2586:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2584
! END FOR
_Label_2587:
! WHILE STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0WH",r10
_Label_2601:
	mov	2573,r13		! source line 2573
	mov	"\0\0SE",r10
!   _temp_2604 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2602 else goto _Label_2603
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2603
	jmp	_Label_2602
_Label_2602:
	mov	2573,r13		! source line 2573
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0SE",r10
!   _temp_2605 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2606 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2605  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2601
_Label_2603:
! ASSIGNMENT STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0AS",r10
	mov	2576,r13		! source line 2576
	mov	"\0\0SE",r10
!   _temp_2607 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2579,r13		! source line 2579
	mov	"\0\0SE",r10
!   _temp_2608 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2609 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2609 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2610 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2610 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2611 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2611 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2616 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2615 = *_temp_2616  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2615 < 0 then goto _Label_2614		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2614
	jmp	_Label_2612
_Label_2614:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2617 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2617 ) then goto _Label_2613		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2613
!	jmp	_Label_2612
_Label_2612:
! THEN...
	mov	2586,r13		! source line 2586
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2618 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2618  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2586,r13		! source line 2586
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2613:
! RETURN STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2619
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2621
	.word	12
	.word	4
	.word	_Label_2622
	.word	-12
	.word	4
	.word	_Label_2623
	.word	-16
	.word	4
	.word	_Label_2624
	.word	-20
	.word	4
	.word	_Label_2625
	.word	-24
	.word	4
	.word	_Label_2626
	.word	-28
	.word	4
	.word	_Label_2627
	.word	-32
	.word	4
	.word	_Label_2628
	.word	-36
	.word	4
	.word	_Label_2629
	.word	-40
	.word	4
	.word	_Label_2630
	.word	-44
	.word	4
	.word	_Label_2631
	.word	-48
	.word	4
	.word	_Label_2632
	.word	-52
	.word	4
	.word	_Label_2633
	.word	-56
	.word	4
	.word	_Label_2634
	.word	-60
	.word	4
	.word	_Label_2635
	.word	-64
	.word	4
	.word	_Label_2636
	.word	-68
	.word	4
	.word	_Label_2637
	.word	-72
	.word	4
	.word	_Label_2638
	.word	-76
	.word	4
	.word	_Label_2639
	.word	-80
	.word	4
	.word	_Label_2640
	.word	-84
	.word	4
	.word	_Label_2641
	.word	-88
	.word	4
	.word	_Label_2642
	.word	-92
	.word	4
	.word	_Label_2643
	.word	-96
	.word	4
	.word	_Label_2644
	.word	-100
	.word	4
	.word	_Label_2645
	.word	-104
	.word	4
	.word	_Label_2646
	.word	-108
	.word	4
	.word	_Label_2647
	.word	-112
	.word	4
	.word	_Label_2648
	.word	-116
	.word	4
	.word	_Label_2649
	.word	-120
	.word	4
	.word	_Label_2650
	.word	-124
	.word	4
	.word	_Label_2651
	.word	-128
	.word	4
	.word	_Label_2652
	.word	-132
	.word	4
	.word	_Label_2653
	.word	-136
	.word	4
	.word	_Label_2654
	.word	-140
	.word	4
	.word	_Label_2655
	.word	-144
	.word	4
	.word	_Label_2656
	.word	-148
	.word	4
	.word	_Label_2657
	.word	-152
	.word	4
	.word	_Label_2658
	.word	-156
	.word	4
	.word	_Label_2659
	.word	-160
	.word	4
	.word	0
_Label_2619:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2620:
	.ascii	"Pself\0"
	.align
_Label_2621:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2653:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2654:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2655:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2656:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2657:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2658:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2659:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3298:
	push	r0
	sub	r1,1,r1
	bne	_Label_3298
	mov	2601,r13		! source line 2601
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0IF",r10
!   _temp_2662 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2662 then goto _Label_2661		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2661
!	jmp	_Label_2660
_Label_2660:
! THEN...
	mov	2604,r13		! source line 2604
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2661:
! SEND STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0SE",r10
!   _temp_2663 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0SE",r10
!   _temp_2664 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2665 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2665  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2666 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2669 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2668 = *_temp_2669  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2667 = _temp_2668 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2666 = _temp_2667  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2673 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2672 = *_temp_2673  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2672 > 0 then goto _Label_2671		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2671
!	jmp	_Label_2670
_Label_2670:
! THEN...
	mov	2611,r13		! source line 2611
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0SE",r10
!   _temp_2674 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0SE",r10
!   _temp_2675 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2676 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2675  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2677 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2680 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2679 = *_temp_2680  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2678 = _temp_2679 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2677 = _temp_2678  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2684 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2683 = *_temp_2684  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2683 > 0 then goto _Label_2682		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2682
!	jmp	_Label_2681
_Label_2681:
! THEN...
	mov	2615,r13		! source line 2615
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0SE",r10
!   _temp_2685 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0SE",r10
!   _temp_2686 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2687 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2686  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2682:
! END IF...
_Label_2671:
! SEND STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0SE",r10
!   _temp_2688 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2689
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2690
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2691
	.word	12
	.word	4
	.word	_Label_2692
	.word	-12
	.word	4
	.word	_Label_2693
	.word	-16
	.word	4
	.word	_Label_2694
	.word	-20
	.word	4
	.word	_Label_2695
	.word	-24
	.word	4
	.word	_Label_2696
	.word	-28
	.word	4
	.word	_Label_2697
	.word	-32
	.word	4
	.word	_Label_2698
	.word	-36
	.word	4
	.word	_Label_2699
	.word	-40
	.word	4
	.word	_Label_2700
	.word	-44
	.word	4
	.word	_Label_2701
	.word	-48
	.word	4
	.word	_Label_2702
	.word	-52
	.word	4
	.word	_Label_2703
	.word	-56
	.word	4
	.word	_Label_2704
	.word	-60
	.word	4
	.word	_Label_2705
	.word	-64
	.word	4
	.word	_Label_2706
	.word	-68
	.word	4
	.word	_Label_2707
	.word	-72
	.word	4
	.word	_Label_2708
	.word	-76
	.word	4
	.word	_Label_2709
	.word	-80
	.word	4
	.word	_Label_2710
	.word	-84
	.word	4
	.word	_Label_2711
	.word	-88
	.word	4
	.word	_Label_2712
	.word	-92
	.word	4
	.word	_Label_2713
	.word	-96
	.word	4
	.word	_Label_2714
	.word	-100
	.word	4
	.word	_Label_2715
	.word	-104
	.word	4
	.word	0
_Label_2689:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2690:
	.ascii	"Pself\0"
	.align
_Label_2691:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2715:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3299:
	push	r0
	sub	r1,1,r1
	bne	_Label_3299
	mov	2624,r13		! source line 2624
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2719 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2718 = *_temp_2719  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2718) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2720 = _temp_2718 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2720 ) then goto _Label_2717		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2717
!	jmp	_Label_2716
_Label_2716:
! THEN...
	mov	2630,r13		! source line 2630
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2725 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2724 = *_temp_2725  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2724) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2726 = _temp_2724 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2723 = *_temp_2726  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2723 >= 0 then goto _Label_2722		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2722
!	jmp	_Label_2721
_Label_2721:
! THEN...
	mov	2631,r13		! source line 2631
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2727 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2727  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2631,r13		! source line 2631
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2722:
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2729 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2728 = *_temp_2729  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2728) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2730 = _temp_2728 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2730 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2734 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2733 = *_temp_2734  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2733) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2735 = _temp_2733 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2732 = *_temp_2735  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2738 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2737 = *_temp_2738  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2737) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2739 = _temp_2737 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2736 = *_temp_2739  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2731 = _temp_2732 + _temp_2736		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2742 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2741 = *_temp_2742  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2741) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2743 = _temp_2741 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2740 = *_temp_2743  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2744 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2731  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2740  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2717:
! RETURN STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2745
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2747
	.word	12
	.word	4
	.word	_Label_2748
	.word	-12
	.word	4
	.word	_Label_2749
	.word	-16
	.word	4
	.word	_Label_2750
	.word	-20
	.word	4
	.word	_Label_2751
	.word	-24
	.word	4
	.word	_Label_2752
	.word	-28
	.word	4
	.word	_Label_2753
	.word	-32
	.word	4
	.word	_Label_2754
	.word	-36
	.word	4
	.word	_Label_2755
	.word	-40
	.word	4
	.word	_Label_2756
	.word	-44
	.word	4
	.word	_Label_2757
	.word	-48
	.word	4
	.word	_Label_2758
	.word	-52
	.word	4
	.word	_Label_2759
	.word	-56
	.word	4
	.word	_Label_2760
	.word	-60
	.word	4
	.word	_Label_2761
	.word	-64
	.word	4
	.word	_Label_2762
	.word	-68
	.word	4
	.word	_Label_2763
	.word	-72
	.word	4
	.word	_Label_2764
	.word	-76
	.word	4
	.word	_Label_2765
	.word	-80
	.word	4
	.word	_Label_2766
	.word	-84
	.word	4
	.word	_Label_2767
	.word	-88
	.word	4
	.word	_Label_2768
	.word	-92
	.word	4
	.word	_Label_2769
	.word	-96
	.word	4
	.word	_Label_2770
	.word	-100
	.word	4
	.word	_Label_2771
	.word	-104
	.word	4
	.word	_Label_2772
	.word	-108
	.word	4
	.word	0
_Label_2745:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2746:
	.ascii	"Pself\0"
	.align
_Label_2747:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3300:
	push	r0
	sub	r1,1,r1
	bne	_Label_3300
	mov	2643,r13		! source line 2643
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   _temp_2773 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2779		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2779
!   _temp_2778 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2780
_Label_2779:
!   _temp_2778 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2780:
!   if _temp_2778 then goto _Label_2777 else goto _Label_2774
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2774
	jmp	_Label_2777
_Label_2777:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2783 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2782 = *_temp_2783  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2782 == 0 then goto _Label_2784		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2784
!   _temp_2781 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2785
_Label_2784:
!   _temp_2781 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2785:
!   if _temp_2781 then goto _Label_2776 else goto _Label_2774
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2774
	jmp	_Label_2776
_Label_2776:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2788 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2787 = *_temp_2788  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2787) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2789 = _temp_2787 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2786 = *_temp_2789  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2786 >= 0 then goto _Label_2775		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2775
!	jmp	_Label_2774
_Label_2774:
! THEN...
	mov	2660,r13		! source line 2660
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2790 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2790  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2660,r13		! source line 2660
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2775:
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2791 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2791  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0WH",r10
_Label_2792:
!   if numBytes <= 0 then goto _Label_2794		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2794
!	jmp	_Label_2793
_Label_2793:
	mov	2663,r13		! source line 2663
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2798 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2797 = *_temp_2798  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2797 == sector then goto _Label_2796		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2796
!	jmp	_Label_2795
_Label_2795:
! THEN...
	mov	2678,r13		! source line 2678
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2799) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2802 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2801 = *_temp_2802  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2800 = sector + _temp_2801		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2804 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2803 = *_temp_2804  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2805 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2800  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2803  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2806 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2806 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2807 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2807 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2796:
! ASSIGNMENT STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2809 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2808 = *_temp_2809  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2808 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
!   _temp_2810 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2810  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2687,r13		! source line 2687
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2691,r13		! source line 2691
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2792
_Label_2794:
! SEND STATEMENT...
	mov	2701,r13		! source line 2701
	mov	"\0\0SE",r10
!   _temp_2811 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2812
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2813
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2814
	.word	12
	.word	4
	.word	_Label_2815
	.word	16
	.word	4
	.word	_Label_2816
	.word	20
	.word	4
	.word	_Label_2817
	.word	24
	.word	4
	.word	_Label_2818
	.word	-16
	.word	4
	.word	_Label_2819
	.word	-20
	.word	4
	.word	_Label_2820
	.word	-24
	.word	4
	.word	_Label_2821
	.word	-28
	.word	4
	.word	_Label_2822
	.word	-32
	.word	4
	.word	_Label_2823
	.word	-36
	.word	4
	.word	_Label_2824
	.word	-40
	.word	4
	.word	_Label_2825
	.word	-44
	.word	4
	.word	_Label_2826
	.word	-48
	.word	4
	.word	_Label_2827
	.word	-52
	.word	4
	.word	_Label_2828
	.word	-56
	.word	4
	.word	_Label_2829
	.word	-60
	.word	4
	.word	_Label_2830
	.word	-64
	.word	4
	.word	_Label_2831
	.word	-68
	.word	4
	.word	_Label_2832
	.word	-72
	.word	4
	.word	_Label_2833
	.word	-76
	.word	4
	.word	_Label_2834
	.word	-80
	.word	4
	.word	_Label_2835
	.word	-84
	.word	4
	.word	_Label_2836
	.word	-88
	.word	4
	.word	_Label_2837
	.word	-92
	.word	4
	.word	_Label_2838
	.word	-96
	.word	4
	.word	_Label_2839
	.word	-100
	.word	4
	.word	_Label_2840
	.word	-104
	.word	4
	.word	_Label_2841
	.word	-9
	.word	1
	.word	_Label_2842
	.word	-10
	.word	1
	.word	_Label_2843
	.word	-108
	.word	4
	.word	_Label_2844
	.word	-112
	.word	4
	.word	_Label_2845
	.word	-116
	.word	4
	.word	_Label_2846
	.word	-120
	.word	4
	.word	_Label_2847
	.word	-124
	.word	4
	.word	_Label_2848
	.word	-128
	.word	4
	.word	0
_Label_2812:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2813:
	.ascii	"Pself\0"
	.align
_Label_2814:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2815:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2816:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2817:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2841:
	.byte	'C'
	.ascii	"_temp_2781\0"
	.align
_Label_2842:
	.byte	'C'
	.ascii	"_temp_2778\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2844:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2845:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2846:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2847:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2848:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3301:
	push	r0
	sub	r1,1,r1
	bne	_Label_3301
	mov	2707,r13		! source line 2707
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0SE",r10
!   _temp_2849 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2855		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2855
!   _temp_2854 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2856
_Label_2855:
!   _temp_2854 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2856:
!   if _temp_2854 then goto _Label_2853 else goto _Label_2850
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2850
	jmp	_Label_2853
_Label_2853:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2859 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2858 = *_temp_2859  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2858 == 0 then goto _Label_2860		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2860
!   _temp_2857 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2861
_Label_2860:
!   _temp_2857 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2861:
!   if _temp_2857 then goto _Label_2852 else goto _Label_2850
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2850
	jmp	_Label_2852
_Label_2852:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2864 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2863 = *_temp_2864  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2863) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2865 = _temp_2863 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2862 = *_temp_2865  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2862 >= 0 then goto _Label_2851		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2851
!	jmp	_Label_2850
_Label_2850:
! THEN...
	mov	2725,r13		! source line 2725
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2866 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2866  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2725,r13		! source line 2725
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2851:
! ASSIGNMENT STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2867 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2867  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0WH",r10
_Label_2868:
!   if numBytes <= 0 then goto _Label_2870		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2870
!	jmp	_Label_2869
_Label_2869:
	mov	2728,r13		! source line 2728
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2874 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2873 = *_temp_2874  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2873 == sector then goto _Label_2872		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2872
!	jmp	_Label_2871
_Label_2871:
! THEN...
	mov	2744,r13		! source line 2744
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2875) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2872:
! ASSIGNMENT STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2877 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2876 = *_temp_2877  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2876 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0AS",r10
!   _temp_2878 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2878  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2747,r13		! source line 2747
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2882 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2881 = *_temp_2882  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2881 != sector then goto _Label_2880		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2880
!	jmp	_Label_2879
_Label_2879:
	jmp	_Label_2883
_Label_2880:
! ELSE...
	mov	2750,r13		! source line 2750
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2886
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2886
	jmp	_Label_2885
_Label_2886:
!   if bytesToMove != 8192 then goto _Label_2885		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2885
!	jmp	_Label_2884
_Label_2884:
	jmp	_Label_2887
_Label_2885:
! ELSE...
	mov	2754,r13		! source line 2754
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2890 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2889 = *_temp_2890  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2888 = sector + _temp_2889		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2892 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2891 = *_temp_2892  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2893 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2888  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2891  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2887:
! END IF...
_Label_2883:
! ASSIGNMENT STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2894 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2894 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2895 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2895 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2763,r13		! source line 2763
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2868
_Label_2870:
! SEND STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
!   _temp_2896 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2897
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2898
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2899
	.word	12
	.word	4
	.word	_Label_2900
	.word	16
	.word	4
	.word	_Label_2901
	.word	20
	.word	4
	.word	_Label_2902
	.word	24
	.word	4
	.word	_Label_2903
	.word	-16
	.word	4
	.word	_Label_2904
	.word	-20
	.word	4
	.word	_Label_2905
	.word	-24
	.word	4
	.word	_Label_2906
	.word	-28
	.word	4
	.word	_Label_2907
	.word	-32
	.word	4
	.word	_Label_2908
	.word	-36
	.word	4
	.word	_Label_2909
	.word	-40
	.word	4
	.word	_Label_2910
	.word	-44
	.word	4
	.word	_Label_2911
	.word	-48
	.word	4
	.word	_Label_2912
	.word	-52
	.word	4
	.word	_Label_2913
	.word	-56
	.word	4
	.word	_Label_2914
	.word	-60
	.word	4
	.word	_Label_2915
	.word	-64
	.word	4
	.word	_Label_2916
	.word	-68
	.word	4
	.word	_Label_2917
	.word	-72
	.word	4
	.word	_Label_2918
	.word	-76
	.word	4
	.word	_Label_2919
	.word	-80
	.word	4
	.word	_Label_2920
	.word	-84
	.word	4
	.word	_Label_2921
	.word	-88
	.word	4
	.word	_Label_2922
	.word	-92
	.word	4
	.word	_Label_2923
	.word	-96
	.word	4
	.word	_Label_2924
	.word	-100
	.word	4
	.word	_Label_2925
	.word	-104
	.word	4
	.word	_Label_2926
	.word	-108
	.word	4
	.word	_Label_2927
	.word	-112
	.word	4
	.word	_Label_2928
	.word	-9
	.word	1
	.word	_Label_2929
	.word	-10
	.word	1
	.word	_Label_2930
	.word	-116
	.word	4
	.word	_Label_2931
	.word	-120
	.word	4
	.word	_Label_2932
	.word	-124
	.word	4
	.word	_Label_2933
	.word	-128
	.word	4
	.word	_Label_2934
	.word	-132
	.word	4
	.word	_Label_2935
	.word	-136
	.word	4
	.word	0
_Label_2897:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2898:
	.ascii	"Pself\0"
	.align
_Label_2899:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2900:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2901:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2902:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2928:
	.byte	'C'
	.ascii	"_temp_2857\0"
	.align
_Label_2929:
	.byte	'C'
	.ascii	"_temp_2854\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2931:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2932:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2933:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2934:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2935:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2936
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2936:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2937
	.word	_sourceFileName
	.word	392		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2937:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3302:
	push	r0
	sub	r1,1,r1
	bne	_Label_3302
	mov	2811,r13		! source line 2811
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0AS",r10
	mov	2813,r13		! source line 2813
	mov	"\0\0SE",r10
!   _temp_2938 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2939
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2941
	.word	-12
	.word	4
	.word	0
_Label_2939:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2940:
	.ascii	"Pself\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3303:
	push	r0
	sub	r1,1,r1
	bne	_Label_3303
	mov	2821,r13		! source line 2821
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2942 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2942  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2822,r13		! source line 2822
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2823,r13		! source line 2823
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2943 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2943  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2824,r13		! source line 2824
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2825,r13		! source line 2825
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2944 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2944  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2826,r13		! source line 2826
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2827,r13		! source line 2827
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2945 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2945  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2828,r13		! source line 2828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2829,r13		! source line 2829
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2946 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2946  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2830,r13		! source line 2830
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2831,r13		! source line 2831
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2947 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2947  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2832,r13		! source line 2832
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2833,r13		! source line 2833
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2948
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2949
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2950
	.word	-12
	.word	4
	.word	_Label_2951
	.word	-16
	.word	4
	.word	_Label_2952
	.word	-20
	.word	4
	.word	_Label_2953
	.word	-24
	.word	4
	.word	_Label_2954
	.word	-28
	.word	4
	.word	_Label_2955
	.word	-32
	.word	4
	.word	0
_Label_2948:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2949:
	.ascii	"Pself\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2956
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2956:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2957
	.word	_sourceFileName
	.word	409		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2957:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3304:
	push	r0
	sub	r1,1,r1
	bne	_Label_3304
	mov	2845,r13		! source line 2845
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2958 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2958  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2847,r13		! source line 2847
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2959 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2959  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2848,r13		! source line 2848
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2961		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2961
!	jmp	_Label_2960
_Label_2960:
! THEN...
	mov	2850,r13		! source line 2850
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2962
_Label_2961:
! ELSE...
	mov	2852,r13		! source line 2852
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2963 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2963  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2852,r13		! source line 2852
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2962:
! RETURN STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2964
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2965
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2966
	.word	-12
	.word	4
	.word	_Label_2967
	.word	-16
	.word	4
	.word	_Label_2968
	.word	-20
	.word	4
	.word	0
_Label_2964:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2965:
	.ascii	"Pself\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3305:
	push	r0
	sub	r1,1,r1
	bne	_Label_3305
	mov	2858,r13		! source line 2858
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0SE",r10
!   _temp_2969 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2970 = _temp_2969 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0SE",r10
!   _temp_2971 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2972 = _temp_2971 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0RE",r10
	mov	2872,r13		! source line 2872
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2975 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2974  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2973  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2973  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2976
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2977
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2978
	.word	12
	.word	4
	.word	_Label_2979
	.word	16
	.word	4
	.word	_Label_2980
	.word	-16
	.word	4
	.word	_Label_2981
	.word	-20
	.word	4
	.word	_Label_2982
	.word	-9
	.word	1
	.word	_Label_2983
	.word	-24
	.word	4
	.word	_Label_2984
	.word	-28
	.word	4
	.word	_Label_2985
	.word	-32
	.word	4
	.word	_Label_2986
	.word	-36
	.word	4
	.word	_Label_2987
	.word	-40
	.word	4
	.word	0
_Label_2976:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2977:
	.ascii	"Pself\0"
	.align
_Label_2978:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2979:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2982:
	.byte	'C'
	.ascii	"_temp_2973\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2987:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3306:
	push	r0
	sub	r1,1,r1
	bne	_Label_3306
	mov	2877,r13		! source line 2877
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0IF",r10
	mov	2882,r13		! source line 2882
	mov	"\0\0SE",r10
!   _temp_2991 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2992) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2991  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2990  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2990 then goto _Label_2989 else goto _Label_2988
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2988
	jmp	_Label_2989
_Label_2988:
! THEN...
	mov	2883,r13		! source line 2883
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2993 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2883,r13		! source line 2883
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2989:
! RETURN STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2994
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2995
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2996
	.word	-16
	.word	4
	.word	_Label_2997
	.word	-20
	.word	4
	.word	_Label_2998
	.word	-24
	.word	4
	.word	_Label_2999
	.word	-9
	.word	1
	.word	_Label_3000
	.word	-28
	.word	4
	.word	0
_Label_2994:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2995:
	.ascii	"Pself\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_2999:
	.byte	'C'
	.ascii	"_temp_2990\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3307:
	push	r0
	sub	r1,1,r1
	bne	_Label_3307
	mov	2890,r13		! source line 2890
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3004 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3003 = *_temp_3004  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3003) then goto _Label_3002
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3002
!	jmp	_Label_3001
_Label_3001:
! THEN...
	mov	2917,r13		! source line 2917
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3005 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3005  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2917,r13		! source line 2917
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3002:
! IF STATEMENT...
	mov	2921,r13		! source line 2921
	mov	"\0\0IF",r10
	mov	2921,r13		! source line 2921
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3009) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3008  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3008 == 1112300152 then goto _Label_3007		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3007
!	jmp	_Label_3006
_Label_3006:
! THEN...
	mov	2922,r13		! source line 2922
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3010 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3010  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2922,r13		! source line 2922
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3007:
! ASSIGNMENT STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0AS",r10
	mov	2927,r13		! source line 2927
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3011) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
	mov	2928,r13		! source line 2928
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3012) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0AS",r10
	mov	2929,r13		! source line 2929
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3013) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0AS",r10
	mov	2930,r13		! source line 2930
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3014) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0AS",r10
	mov	2931,r13		! source line 2931
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3015) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0AS",r10
	mov	2932,r13		! source line 2932
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3016) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0IF",r10
!   _temp_3019 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3019) then goto _Label_3018
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3018
!	jmp	_Label_3017
_Label_3017:
! THEN...
	mov	2936,r13		! source line 2936
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3020 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3020  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2936,r13		! source line 2936
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2937,r13		! source line 2937
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3018:
! ASSIGNMENT STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3022
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3022
!	jmp	_Label_3021
_Label_3021:
! THEN...
	mov	2944,r13		! source line 2944
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3023 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3023  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2944,r13		! source line 2944
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3022:
! IF STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0IF",r10
!   _temp_3026 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3026) then goto _Label_3025
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3025
!	jmp	_Label_3024
_Label_3024:
! THEN...
	mov	2950,r13		! source line 2950
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3027 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3027  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2950,r13		! source line 2950
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3025:
! IF STATEMENT...
	mov	2953,r13		! source line 2953
	mov	"\0\0IF",r10
!   _temp_3030 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3030 then goto _Label_3029		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3029
!	jmp	_Label_3028
_Label_3028:
! THEN...
	mov	2954,r13		! source line 2954
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3031 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3031  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2954,r13		! source line 2954
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2955,r13		! source line 2955
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3029:
! ASSIGNMENT STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0IF",r10
!   _temp_3034 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3034) then goto _Label_3033
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3033
!	jmp	_Label_3032
_Label_3032:
! THEN...
	mov	2961,r13		! source line 2961
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3035 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3035  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2961,r13		! source line 2961
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2962,r13		! source line 2962
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3033:
! IF STATEMENT...
	mov	2964,r13		! source line 2964
	mov	"\0\0IF",r10
!   _temp_3038 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3038 then goto _Label_3037		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3037
!	jmp	_Label_3036
_Label_3036:
! THEN...
	mov	2965,r13		! source line 2965
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3039 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3039  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2965,r13		! source line 2965
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3037:
! ASSIGNMENT STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2971,r13		! source line 2971
	mov	"\0\0AS",r10
!   _temp_3042 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3041 = _temp_3042 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3040 = _temp_3041 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3040 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3044		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3044
!	jmp	_Label_3043
_Label_3043:
! THEN...
	mov	2987,r13		! source line 2987
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3045 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3045  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2987,r13		! source line 2987
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3046 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3046  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2988,r13		! source line 2988
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3047 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3047  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2989,r13		! source line 2989
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3044:
! SEND STATEMENT...
	mov	2992,r13		! source line 2992
	mov	"\0\0SE",r10
!   _temp_3048 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2998,r13		! source line 2998
	mov	"\0\0IF",r10
	mov	2998,r13		! source line 2998
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3052) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3051  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3051 == 707406378 then goto _Label_3050		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3050
!	jmp	_Label_3049
_Label_3049:
! THEN...
	mov	2999,r13		! source line 2999
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3053 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3053  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2999,r13		! source line 2999
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3000,r13		! source line 3000
	mov	"\0\0SE",r10
!   _temp_3054 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3050:
! ASSIGNMENT STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3059 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3060 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3059  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3055:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3060 then goto _Label_3058		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3058
_Label_3056:
	mov	3006,r13		! source line 3006
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0AS",r10
	mov	3007,r13		! source line 3007
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3010,r13		! source line 3010
	mov	"\0\0IF",r10
	mov	3010,r13		! source line 3010
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3064) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3063  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3063 then goto _Label_3062 else goto _Label_3061
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3061
	jmp	_Label_3062
_Label_3061:
! THEN...
	mov	3011,r13		! source line 3011
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3065 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3065  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3011,r13		! source line 3011
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3012,r13		! source line 3012
	mov	"\0\0SE",r10
!   _temp_3066 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3062:
! SEND STATEMENT...
	mov	3015,r13		! source line 3015
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3057:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3055
! END FOR
_Label_3058:
! IF STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0IF",r10
	mov	3020,r13		! source line 3020
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3070) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3069  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3069 == 707406378 then goto _Label_3068		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3068
!	jmp	_Label_3067
_Label_3067:
! THEN...
	mov	3021,r13		! source line 3021
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3071 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3071  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3021,r13		! source line 3021
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3022,r13		! source line 3022
	mov	"\0\0SE",r10
!   _temp_3072 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3068:
! FOR STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3077 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3078 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3077  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3073:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3078 then goto _Label_3076		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3076
_Label_3074:
	mov	3027,r13		! source line 3027
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0AS",r10
	mov	3028,r13		! source line 3028
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3031,r13		! source line 3031
	mov	"\0\0IF",r10
	mov	3031,r13		! source line 3031
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3082) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3081  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3081 then goto _Label_3080 else goto _Label_3079
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3079
	jmp	_Label_3080
_Label_3079:
! THEN...
	mov	3032,r13		! source line 3032
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3083 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3083  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3032,r13		! source line 3032
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3033,r13		! source line 3033
	mov	"\0\0SE",r10
!   _temp_3084 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3080:
! ASSIGNMENT STATEMENT...
	mov	3036,r13		! source line 3036
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3075:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3073
! END FOR
_Label_3076:
! IF STATEMENT...
	mov	3040,r13		! source line 3040
	mov	"\0\0IF",r10
	mov	3040,r13		! source line 3040
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3088) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3087  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3087 == 707406378 then goto _Label_3086		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3086
!	jmp	_Label_3085
_Label_3085:
! THEN...
	mov	3041,r13		! source line 3041
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3089 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3089  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3041,r13		! source line 3041
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0SE",r10
!   _temp_3090 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3043,r13		! source line 3043
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3086:
! ASSIGNMENT STATEMENT...
	mov	3047,r13		! source line 3047
	mov	"\0\0AS",r10
	mov	3047,r13		! source line 3047
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3051,r13		! source line 3051
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3091
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3092
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3093
	.word	12
	.word	4
	.word	_Label_3094
	.word	-16
	.word	4
	.word	_Label_3095
	.word	-20
	.word	4
	.word	_Label_3096
	.word	-24
	.word	4
	.word	_Label_3097
	.word	-28
	.word	4
	.word	_Label_3098
	.word	-32
	.word	4
	.word	_Label_3099
	.word	-36
	.word	4
	.word	_Label_3100
	.word	-40
	.word	4
	.word	_Label_3101
	.word	-9
	.word	1
	.word	_Label_3102
	.word	-44
	.word	4
	.word	_Label_3103
	.word	-48
	.word	4
	.word	_Label_3104
	.word	-52
	.word	4
	.word	_Label_3105
	.word	-56
	.word	4
	.word	_Label_3106
	.word	-60
	.word	4
	.word	_Label_3107
	.word	-64
	.word	4
	.word	_Label_3108
	.word	-68
	.word	4
	.word	_Label_3109
	.word	-72
	.word	4
	.word	_Label_3110
	.word	-76
	.word	4
	.word	_Label_3111
	.word	-10
	.word	1
	.word	_Label_3112
	.word	-80
	.word	4
	.word	_Label_3113
	.word	-84
	.word	4
	.word	_Label_3114
	.word	-88
	.word	4
	.word	_Label_3115
	.word	-92
	.word	4
	.word	_Label_3116
	.word	-96
	.word	4
	.word	_Label_3117
	.word	-100
	.word	4
	.word	_Label_3118
	.word	-104
	.word	4
	.word	_Label_3119
	.word	-108
	.word	4
	.word	_Label_3120
	.word	-112
	.word	4
	.word	_Label_3121
	.word	-116
	.word	4
	.word	_Label_3122
	.word	-120
	.word	4
	.word	_Label_3123
	.word	-124
	.word	4
	.word	_Label_3124
	.word	-128
	.word	4
	.word	_Label_3125
	.word	-132
	.word	4
	.word	_Label_3126
	.word	-136
	.word	4
	.word	_Label_3127
	.word	-140
	.word	4
	.word	_Label_3128
	.word	-144
	.word	4
	.word	_Label_3129
	.word	-148
	.word	4
	.word	_Label_3130
	.word	-152
	.word	4
	.word	_Label_3131
	.word	-156
	.word	4
	.word	_Label_3132
	.word	-160
	.word	4
	.word	_Label_3133
	.word	-164
	.word	4
	.word	_Label_3134
	.word	-168
	.word	4
	.word	_Label_3135
	.word	-172
	.word	4
	.word	_Label_3136
	.word	-176
	.word	4
	.word	_Label_3137
	.word	-180
	.word	4
	.word	_Label_3138
	.word	-184
	.word	4
	.word	_Label_3139
	.word	-188
	.word	4
	.word	_Label_3140
	.word	-192
	.word	4
	.word	_Label_3141
	.word	-196
	.word	4
	.word	_Label_3142
	.word	-200
	.word	4
	.word	_Label_3143
	.word	-204
	.word	4
	.word	_Label_3144
	.word	-208
	.word	4
	.word	_Label_3145
	.word	-212
	.word	4
	.word	_Label_3146
	.word	-216
	.word	4
	.word	_Label_3147
	.word	-220
	.word	4
	.word	_Label_3148
	.word	-224
	.word	4
	.word	_Label_3149
	.word	-228
	.word	4
	.word	_Label_3150
	.word	-232
	.word	4
	.word	_Label_3151
	.word	-236
	.word	4
	.word	_Label_3152
	.word	-240
	.word	4
	.word	_Label_3153
	.word	-244
	.word	4
	.word	_Label_3154
	.word	-248
	.word	4
	.word	_Label_3155
	.word	-252
	.word	4
	.word	_Label_3156
	.word	-256
	.word	4
	.word	_Label_3157
	.word	-260
	.word	4
	.word	_Label_3158
	.word	-264
	.word	4
	.word	_Label_3159
	.word	-268
	.word	4
	.word	0
_Label_3091:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3092:
	.ascii	"Pself\0"
	.align
_Label_3093:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3084\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3082\0"
	.align
_Label_3101:
	.byte	'C'
	.ascii	"_temp_3081\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3111:
	.byte	'C'
	.ascii	"_temp_3063\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3052\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3051\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3035\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3031\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3027\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3026\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3008\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3148:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3149:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3150:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3151:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3152:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3153:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3154:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3155:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3156:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3157:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3158:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3159:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
