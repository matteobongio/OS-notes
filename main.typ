#let title = [Operating Systems]
#set page(
   paper: "a4",
   header: align(left, title),
   numbering: "1",
)

#align(center, text(17pt)[
   *#title*
])

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
