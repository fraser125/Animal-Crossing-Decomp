lbl_80483DC4:
/* 80483DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483DC8  7C 08 02 A6 */	mflr r0
/* 80483DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483DD0  80 03 01 80 */	lwz r0, 0x180(r3)
/* 80483DD4  2C 00 00 01 */	cmpwi r0, 1
/* 80483DD8  40 82 00 0C */	bne lbl_80483DE4
/* 80483DDC  38 A0 00 03 */	li r5, 3
/* 80483DE0  48 00 01 71 */	bl aPRD_setupAction
lbl_80483DE4:
/* 80483DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483DE8  7C 08 03 A6 */	mtlr r0
/* 80483DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80483DF0  4E 80 00 20 */	blr 
