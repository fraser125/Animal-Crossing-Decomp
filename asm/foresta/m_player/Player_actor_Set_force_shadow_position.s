lbl_804D513C:
/* 804D513C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5140  7C 08 02 A6 */	mflr r0
/* 804D5144  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5148  4B EA 1D 31 */	bl mActorShadow_SetForceShadowPos
/* 804D514C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5150  7C 08 03 A6 */	mtlr r0
/* 804D5154  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5158  4E 80 00 20 */	blr 
