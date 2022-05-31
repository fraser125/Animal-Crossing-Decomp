lbl_8054B1E8:
/* 8054B1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B1EC  7C 08 02 A6 */	mflr r0
/* 8054B1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B1F4  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 8054B1F8  38 05 FF FF */	addi r0, r5, -1
/* 8054B1FC  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8054B200  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 8054B204  2C 00 00 00 */	cmpwi r0, 0
/* 8054B208  41 81 00 0C */	bgt lbl_8054B214
/* 8054B20C  38 A0 00 02 */	li r5, 2
/* 8054B210  48 00 00 7D */	bl aCR_setupAction
lbl_8054B214:
/* 8054B214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B218  7C 08 03 A6 */	mtlr r0
/* 8054B21C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B220  4E 80 00 20 */	blr 
