lbl_80383CB0:
/* 80383CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383CB4  7C 08 02 A6 */	mflr r0
/* 80383CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383CBC  48 03 D5 ED */	bl mMsg_CopyWeek
/* 80383CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383CC4  7C 08 03 A6 */	mtlr r0
/* 80383CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80383CCC  4E 80 00 20 */	blr 
