lbl_8062F528:
/* 8062F528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062F52C  7C 08 02 A6 */	mflr r0
/* 8062F530  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062F534  4B FF EB A5 */	bl sAdo_RhythmStop
/* 8062F538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062F53C  7C 08 03 A6 */	mtlr r0
/* 8062F540  38 21 00 10 */	addi r1, r1, 0x10
/* 8062F544  4E 80 00 20 */	blr 
