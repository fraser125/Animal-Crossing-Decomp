lbl_80496FDC:
/* 80496FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496FE0  7C 08 02 A6 */	mflr r0
/* 80496FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496FE8  48 00 01 61 */	bl aSNMgr_reset_event_npc_pos
/* 80496FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496FF0  7C 08 03 A6 */	mtlr r0
/* 80496FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80496FF8  4E 80 00 20 */	blr 
