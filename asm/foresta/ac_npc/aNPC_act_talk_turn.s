lbl_80533228:
/* 80533228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053322C  7C 08 02 A6 */	mflr r0
/* 80533230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533238  7C 7F 1B 78 */	mr r31, r3
/* 8053323C  4B FF E0 D9 */	bl aNPC_act_turn
/* 80533240  2C 03 00 00 */	cmpwi r3, 0
/* 80533244  40 82 00 10 */	bne lbl_80533254
/* 80533248  7F E3 FB 78 */	mr r3, r31
/* 8053324C  38 80 00 01 */	li r4, 1
/* 80533250  4B FF FF A5 */	bl aNPC_act_talk_chg_step
lbl_80533254:
/* 80533254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053325C  7C 08 03 A6 */	mtlr r0
/* 80533260  38 21 00 10 */	addi r1, r1, 0x10
/* 80533264  4E 80 00 20 */	blr 
