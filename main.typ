#let title = [Operating Systems]
#set page(
   paper: "a4",
   header: align(left, title),
   numbering: "1",
)

#align(center, text(17pt)[
   *#title*
])

= Lecture 1

*Spooling*: when using slow devices, files sent are saved in a queue on a drive.

*Multiprogramming*: running processes simultaneously, rapid switching between processes.

*timesharing*: Each program has runs until it's waiting for IO, or when it's assigned time is over.


= Lecture 2 Processes and Threads

*Process*: program in execution

*Program*: executable file stored on disk

*Context Switching*: when switching processes, copy the current values of registers,
flags, PC, etc., and load valuess of the next process.

it works by having a timer generate interrupts, where it checks if it s time for context switching

*Process Control Block (PCB)*: used by OS to store the statues of each process (incl. values of
registers, PC, etc.)

*Process Table*: a list of PCBs

*Thread*: light-weight process, a lot is shared between threads.

*Kernel-level Threads* 

*User-level Threads*: implemented by programing languages, kernel is not aware.

*Thread pool*: make a bunch of threads at start-up, and they wait for work.



*Working Set Model*: Paging algorithm, for each program look at how many 
unique pages it used in the past $Delta$ time, allocate that many frames for that program.

*Thrashing*: pages are exchanged in and out of main memory too frequently.

*Interrupt Vector*: a table that holds a ptr to every interrupt service routine.
(kind of like how trap works)

*Cylinder skew*: a concept used in HDDs to improve performance  during sequential data access. 
It is an intentional offset of the starting vectors of adjacent tracks, to account for the 
time it takes the head to move.

*Shortest Seek Time First*: disk scheduling algorithm, chooses the IO operation 
closest to where it is.

*Passive attack*: an attack without modifying data, only reading. Eavesdropping.

*RAID*

0. _Striping_, data is split into strips and spread accross multiple drives, for speed.
1. _Mirroring_, data is mirrored on several disks, so that if 1 fails, there is always a backup
5. _Striping with parity_, a mix of both 0 and 1, requires at least 3 drives
6. _Striping with double parity_, RAID 5 but with 2 parity drives, needs at least 4 drives
10. _Mirrored striping_ litteraly just applying RAID 0 and RAID 1, needs at least 4 drives

*RAID 6 vs RAID 10?*

good question, RAID 10 is faster, but RAID 6 has better storage efficiency
