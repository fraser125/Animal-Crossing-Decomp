lbl_805BC8FC:
/* 805BC8FC  3C A0 80 6C */	lis r5, proc@ha /* 0x806C6ABC@ha */
/* 805BC900  54 80 10 3A */	slwi r0, r4, 2
/* 805BC904  38 85 6A BC */	addi r4, r5, proc@l /* 0x806C6ABC@l */
/* 805BC908  7C 04 00 2E */	lwzx r0, r4, r0
/* 805BC90C  90 03 09 94 */	stw r0, 0x994(r3)
/* 805BC910  38 60 00 01 */	li r3, 1
/* 805BC914  4E 80 00 20 */	blr 
