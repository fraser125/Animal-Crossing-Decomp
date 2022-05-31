lbl_80579ED8:
/* 80579ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80579EDC  7C 08 02 A6 */	mflr r0
/* 80579EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80579EE8  7C 9F 23 78 */	mr r31, r4
/* 80579EEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80579EF0  7C 7E 1B 78 */	mr r30, r3
/* 80579EF4  4B E4 57 B5 */	bl func_803BF6A8
/* 80579EF8  4B E4 58 49 */	bl mMsg_Check_main_wait
/* 80579EFC  2C 03 00 01 */	cmpwi r3, 1
/* 80579F00  40 82 00 18 */	bne lbl_80579F18
/* 80579F04  80 BE 09 94 */	lwz r5, 0x994(r30)
/* 80579F08  7F C3 F3 78 */	mr r3, r30
/* 80579F0C  7F E4 FB 78 */	mr r4, r31
/* 80579F10  38 A5 00 01 */	addi r5, r5, 1
/* 80579F14  48 00 25 A1 */	bl aNSC_setupAction
lbl_80579F18:
/* 80579F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579F1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80579F20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80579F24  7C 08 03 A6 */	mtlr r0
/* 80579F28  38 21 00 10 */	addi r1, r1, 0x10
/* 80579F2C  4E 80 00 20 */	blr 
