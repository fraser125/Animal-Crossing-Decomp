lbl_80533544:
/* 80533544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533548  7C 08 02 A6 */	mflr r0
/* 8053354C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533554  7C 7F 1B 78 */	mr r31, r3
/* 80533558  4B FF DD BD */	bl aNPC_act_turn
/* 8053355C  2C 03 00 00 */	cmpwi r3, 0
/* 80533560  40 82 00 10 */	bne lbl_80533570
/* 80533564  7F E3 FB 78 */	mr r3, r31
/* 80533568  38 80 00 01 */	li r4, 1
/* 8053356C  4B FF FF 4D */	bl func_805334B8
lbl_80533570:
/* 80533570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80533578  7C 08 03 A6 */	mtlr r0
/* 8053357C  38 21 00 10 */	addi r1, r1, 0x10
/* 80533580  4E 80 00 20 */	blr 
