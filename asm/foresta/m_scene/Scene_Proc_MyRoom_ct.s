lbl_803F1150:
/* 803F1150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1154  7C 08 02 A6 */	mflr r0
/* 803F1158  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F115C  4B FF 68 19 */	bl mScn_ObtainMyRoomBank
/* 803F1160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1164  7C 08 03 A6 */	mtlr r0
/* 803F1168  38 21 00 10 */	addi r1, r1, 0x10
/* 803F116C  4E 80 00 20 */	blr 
