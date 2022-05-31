lbl_805268BC:
/* 805268BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805268C0  7C 08 02 A6 */	mflr r0
/* 805268C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805268C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805268CC  7C 7F 1B 78 */	mr r31, r3
/* 805268D0  4B E9 8D D9 */	bl func_803BF6A8
/* 805268D4  4B E9 A3 C5 */	bl mMsg_Check_MainNormalContinue
/* 805268D8  2C 03 00 00 */	cmpwi r3, 0
/* 805268DC  41 82 00 14 */	beq lbl_805268F0
/* 805268E0  80 9F 09 98 */	lwz r4, 0x998(r31)
/* 805268E4  7F E3 FB 78 */	mr r3, r31
/* 805268E8  38 84 00 01 */	addi r4, r4, 1
/* 805268EC  48 00 05 59 */	bl aEYMS_setupAction
lbl_805268F0:
/* 805268F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805268F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805268F8  7C 08 03 A6 */	mtlr r0
/* 805268FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80526900  4E 80 00 20 */	blr 
