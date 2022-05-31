lbl_80404B80:
/* 80404B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404B84  7C 08 02 A6 */	mflr r0
/* 80404B88  3C 80 81 1D */	lis r4, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 80404B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404B90  80 04 B7 A8 */	lwz r0, data_811CB7A8@l(r4)  /* 0x811CB7A8@l */
/* 80404B94  2C 00 00 00 */	cmpwi r0, 0
/* 80404B98  41 82 00 0C */	beq lbl_80404BA4
/* 80404B9C  38 63 00 2C */	addi r3, r3, 0x2c
/* 80404BA0  4B F9 2B BD */	bl Debug_mode_input
lbl_80404BA4:
/* 80404BA4  4B C5 CD 89 */	bl JC_JUTProcBar_getManager
/* 80404BA8  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80404BAC  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 80404BB0  80 84 00 00 */	lwz r4, 0(r4)
/* 80404BB4  A8 84 00 D4 */	lha r4, 0xd4(r4)
/* 80404BB8  30 04 FF FF */	addic r0, r4, -1
/* 80404BBC  7C 80 21 10 */	subfe r4, r0, r4
/* 80404BC0  4B C5 CD 75 */	bl JC_JUTProcBar_setVisible
/* 80404BC4  4B C5 CD 69 */	bl JC_JUTProcBar_getManager
/* 80404BC8  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 80404BCC  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 80404BD0  80 84 00 00 */	lwz r4, 0(r4)
/* 80404BD4  A8 84 00 D4 */	lha r4, 0xd4(r4)
/* 80404BD8  30 04 FF FF */	addic r0, r4, -1
/* 80404BDC  7C 80 21 10 */	subfe r4, r0, r4
/* 80404BE0  4B C5 CD 65 */	bl JC_JUTProcBar_setVisibleHeapBar
/* 80404BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404BE8  7C 08 03 A6 */	mtlr r0
/* 80404BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80404BF0  4E 80 00 20 */	blr 
