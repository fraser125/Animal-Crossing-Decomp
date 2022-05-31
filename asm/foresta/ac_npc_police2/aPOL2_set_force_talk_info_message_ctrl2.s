lbl_8056B8B4:
/* 8056B8B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056B8B8  7C 08 02 A6 */	mflr r0
/* 8056B8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056B8C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056B8C4  7C 7F 1B 78 */	mr r31, r3
/* 8056B8C8  4B E7 2F 51 */	bl mPB_get_keep_item_sum
/* 8056B8CC  2C 03 00 00 */	cmpwi r3, 0
/* 8056B8D0  40 82 00 0C */	bne lbl_8056B8DC
/* 8056B8D4  38 60 07 84 */	li r3, 0x784
/* 8056B8D8  48 00 00 10 */	b lbl_8056B8E8
lbl_8056B8DC:
/* 8056B8DC  38 00 00 01 */	li r0, 1
/* 8056B8E0  38 60 07 85 */	li r3, 0x785
/* 8056B8E4  98 1F 09 9C */	stb r0, 0x99c(r31)
lbl_8056B8E8:
/* 8056B8E8  4B E2 CC 2D */	bl mDemo_Set_msg_num
/* 8056B8EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056B8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056B8F4  7C 08 03 A6 */	mtlr r0
/* 8056B8F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056B8FC  4E 80 00 20 */	blr 
