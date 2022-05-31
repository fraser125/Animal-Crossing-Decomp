lbl_804FDC78:
/* 804FDC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FDC7C  7C 08 02 A6 */	mflr r0
/* 804FDC80  2C 05 00 00 */	cmpwi r5, 0
/* 804FDC84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FDC88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FDC8C  7C 9F 23 78 */	mr r31, r4
/* 804FDC90  41 82 00 14 */	beq lbl_804FDCA4
/* 804FDC94  4B FD 76 D9 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FDC98  7F E3 FB 78 */	mr r3, r31
/* 804FDC9C  38 80 00 13 */	li r4, 0x13
/* 804FDCA0  48 00 00 AD */	bl func_804FDD4C
lbl_804FDCA4:
/* 804FDCA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FDCA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FDCAC  7C 08 03 A6 */	mtlr r0
/* 804FDCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FDCB4  4E 80 00 20 */	blr 
