lbl_8049D484:
/* 8049D484  80 C3 00 00 */	lwz r6, 0(r3)
/* 8049D488  3C 60 D5 02 */	lis r3, 0xD502 /* 0xD5020001@ha */
/* 8049D48C  38 A3 00 01 */	addi r5, r3, 0x0001 /* 0xD5020001@l */
/* 8049D490  38 80 00 00 */	li r4, 0
/* 8049D494  80 66 02 D0 */	lwz r3, 0x2d0(r6)
/* 8049D498  38 03 00 08 */	addi r0, r3, 8
/* 8049D49C  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 8049D4A0  90 A3 00 00 */	stw r5, 0(r3)
/* 8049D4A4  90 83 00 04 */	stw r4, 4(r3)
/* 8049D4A8  80 66 02 E0 */	lwz r3, 0x2e0(r6)
/* 8049D4AC  38 03 00 08 */	addi r0, r3, 8
/* 8049D4B0  90 06 02 E0 */	stw r0, 0x2e0(r6)
/* 8049D4B4  90 A3 00 00 */	stw r5, 0(r3)
/* 8049D4B8  90 83 00 04 */	stw r4, 4(r3)
/* 8049D4BC  4E 80 00 20 */	blr 
