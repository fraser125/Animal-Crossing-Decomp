lbl_8062DF04:
/* 8062DF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062DF08  7C 08 02 A6 */	mflr r0
/* 8062DF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062DF10  4B 9E 5C 0D */	bl Na_SysLevStart
/* 8062DF14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062DF18  7C 08 03 A6 */	mtlr r0
/* 8062DF1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062DF20  4E 80 00 20 */	blr 
