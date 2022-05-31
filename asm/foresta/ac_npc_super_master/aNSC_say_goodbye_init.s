lbl_80585F68:
/* 80585F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585F6C  7C 08 02 A6 */	mflr r0
/* 80585F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585F74  4B E3 97 35 */	bl func_803BF6A8
/* 80585F78  4B E3 AD E1 */	bl mMsg_Set_idling_req
/* 80585F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585F80  7C 08 03 A6 */	mtlr r0
/* 80585F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80585F88  4E 80 00 20 */	blr 
