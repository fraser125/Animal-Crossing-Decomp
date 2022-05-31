lbl_80540688:
/* 80540688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054068C  7C 08 02 A6 */	mflr r0
/* 80540690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540698  7C 7F 1B 78 */	mr r31, r3
/* 8054069C  80 03 01 98 */	lwz r0, 0x198(r3)
/* 805406A0  2C 00 00 01 */	cmpwi r0, 1
/* 805406A4  40 82 00 10 */	bne lbl_805406B4
/* 805406A8  4B FF C0 31 */	bl aNPC_clear_left_hand_info
/* 805406AC  7F E3 FB 78 */	mr r3, r31
/* 805406B0  4B FF EB 55 */	bl aNPC_act_return_trans_item
lbl_805406B4:
/* 805406B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805406B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805406BC  7C 08 03 A6 */	mtlr r0
/* 805406C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805406C4  4E 80 00 20 */	blr 
