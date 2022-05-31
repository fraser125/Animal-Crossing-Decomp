lbl_8042BFA8:
/* 8042BFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042BFAC  7C 08 02 A6 */	mflr r0
/* 8042BFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042BFB4  4B FF FF C5 */	bl aLS_NiceSwitchOnTime
/* 8042BFB8  2C 03 00 00 */	cmpwi r3, 0
/* 8042BFBC  41 82 00 18 */	beq lbl_8042BFD4
/* 8042BFC0  4B FF FF 71 */	bl func_8042BF30
/* 8042BFC4  30 03 FF FF */	addic r0, r3, -1
/* 8042BFC8  7C 60 01 10 */	subfe r3, r0, r0
/* 8042BFCC  38 63 00 02 */	addi r3, r3, 2
/* 8042BFD0  48 00 00 08 */	b lbl_8042BFD8
lbl_8042BFD4:
/* 8042BFD4  38 60 00 00 */	li r3, 0
lbl_8042BFD8:
/* 8042BFD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042BFDC  7C 08 03 A6 */	mtlr r0
/* 8042BFE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042BFE4  4E 80 00 20 */	blr 
