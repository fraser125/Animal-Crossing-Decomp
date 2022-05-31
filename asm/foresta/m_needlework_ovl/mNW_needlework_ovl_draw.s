lbl_805EA6B0:
/* 805EA6B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EA6B4  7C 08 02 A6 */	mflr r0
/* 805EA6B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EA6BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805EA6C0  4B AB 08 15 */	bl func_8009AED4
/* 805EA6C4  7C 7D 1B 78 */	mr r29, r3
/* 805EA6C8  7C 9E 23 78 */	mr r30, r4
/* 805EA6CC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EA6D0  3B E5 06 CC */	addi r31, r5, 0x6cc
/* 805EA6D4  81 85 06 DC */	lwz r12, 0x6dc(r5)
/* 805EA6D8  7D 89 03 A6 */	mtctr r12
/* 805EA6DC  4E 80 04 21 */	bctrl 
/* 805EA6E0  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805EA6E4  2C 00 00 05 */	cmpwi r0, 5
/* 805EA6E8  40 80 00 24 */	bge lbl_805EA70C
/* 805EA6EC  2C 00 00 02 */	cmpwi r0, 2
/* 805EA6F0  40 80 00 08 */	bge lbl_805EA6F8
/* 805EA6F4  48 00 00 18 */	b lbl_805EA70C
lbl_805EA6F8:
/* 805EA6F8  7F A3 EB 78 */	mr r3, r29
/* 805EA6FC  7F C4 F3 78 */	mr r4, r30
/* 805EA700  7F E5 FB 78 */	mr r5, r31
/* 805EA704  4B FF FC 99 */	bl mNW_set_frame_dl_cpo
/* 805EA708  48 00 00 14 */	b lbl_805EA71C
lbl_805EA70C:
/* 805EA70C  7F A3 EB 78 */	mr r3, r29
/* 805EA710  7F C4 F3 78 */	mr r4, r30
/* 805EA714  7F E5 FB 78 */	mr r5, r31
/* 805EA718  4B FF F8 5D */	bl mNW_set_frame_dl
lbl_805EA71C:
/* 805EA71C  80 DD 00 2C */	lwz r6, 0x2c(r29)
/* 805EA720  7F A3 EB 78 */	mr r3, r29
/* 805EA724  7F C4 F3 78 */	mr r4, r30
/* 805EA728  38 A0 00 17 */	li r5, 0x17
/* 805EA72C  81 86 09 20 */	lwz r12, 0x920(r6)
/* 805EA730  7D 89 03 A6 */	mtctr r12
/* 805EA734  4E 80 04 21 */	bctrl 
/* 805EA738  39 61 00 20 */	addi r11, r1, 0x20
/* 805EA73C  4B AB 07 E5 */	bl func_8009AF20
/* 805EA740  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EA744  7C 08 03 A6 */	mtlr r0
/* 805EA748  38 21 00 20 */	addi r1, r1, 0x20
/* 805EA74C  4E 80 00 20 */	blr 
