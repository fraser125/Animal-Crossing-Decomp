lbl_805162E8:
/* 805162E8  3C A0 80 6A */	lis r5, process@ha /* 0x8069FD04@ha */
/* 805162EC  54 80 10 3A */	slwi r0, r4, 2
/* 805162F0  38 A5 FD 04 */	addi r5, r5, process@l /* 0x8069FD04@l */
/* 805162F4  7C 05 00 2E */	lwzx r0, r5, r0
/* 805162F8  90 03 01 74 */	stw r0, 0x174(r3)
/* 805162FC  90 83 01 78 */	stw r4, 0x178(r3)
/* 80516300  4E 80 00 20 */	blr 
