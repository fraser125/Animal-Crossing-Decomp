lbl_805AE954:
/* 805AE954  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805AE958  7C 08 02 A6 */	mflr r0
/* 805AE95C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AE960  39 61 00 40 */	addi r11, r1, 0x40
/* 805AE964  4B AE C5 71 */	bl func_8009AED4
/* 805AE968  7C 9F 23 78 */	mr r31, r4
/* 805AE96C  7C 7E 1B 78 */	mr r30, r3
/* 805AE970  7F E3 FB 78 */	mr r3, r31
/* 805AE974  4B E2 AC CD */	bl get_player_actor_withoutCheck
/* 805AE978  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805AE97C  7C 7D 1B 78 */	mr r29, r3
/* 805AE980  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805AE984  38 61 00 14 */	addi r3, r1, 0x14
/* 805AE988  38 81 00 10 */	addi r4, r1, 0x10
/* 805AE98C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805AE990  38 A1 00 24 */	addi r5, r1, 0x24
/* 805AE994  90 01 00 28 */	stw r0, 0x28(r1)
/* 805AE998  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805AE99C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805AE9A0  4B DF 6D C1 */	bl mFI_Wpos2BlockNum
/* 805AE9A4  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805AE9A8  38 61 00 0C */	addi r3, r1, 0xc
/* 805AE9AC  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805AE9B0  38 81 00 08 */	addi r4, r1, 8
/* 805AE9B4  38 A1 00 18 */	addi r5, r1, 0x18
/* 805AE9B8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805AE9BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805AE9C0  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805AE9C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 805AE9C8  4B DF 6D 99 */	bl mFI_Wpos2BlockNum
/* 805AE9CC  7F A4 EB 78 */	mr r4, r29
/* 805AE9D0  38 60 00 01 */	li r3, 1
/* 805AE9D4  4B DE B8 91 */	bl mDemo_Check
/* 805AE9D8  2C 03 00 00 */	cmpwi r3, 0
/* 805AE9DC  40 82 00 58 */	bne lbl_805AEA34
/* 805AE9E0  7F A4 EB 78 */	mr r4, r29
/* 805AE9E4  38 60 00 05 */	li r3, 5
/* 805AE9E8  4B DE B8 7D */	bl mDemo_Check
/* 805AE9EC  2C 03 00 00 */	cmpwi r3, 0
/* 805AE9F0  40 82 00 44 */	bne lbl_805AEA34
/* 805AE9F4  7F A4 EB 78 */	mr r4, r29
/* 805AE9F8  38 60 00 10 */	li r3, 0x10
/* 805AE9FC  4B DE B8 69 */	bl mDemo_Check
/* 805AEA00  2C 03 00 00 */	cmpwi r3, 0
/* 805AEA04  40 82 00 30 */	bne lbl_805AEA34
/* 805AEA08  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805AEA0C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805AEA10  7C 03 00 00 */	cmpw r3, r0
/* 805AEA14  40 82 00 14 */	bne lbl_805AEA28
/* 805AEA18  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805AEA1C  80 01 00 08 */	lwz r0, 8(r1)
/* 805AEA20  7C 03 00 00 */	cmpw r3, r0
/* 805AEA24  41 82 00 10 */	beq lbl_805AEA34
lbl_805AEA28:
/* 805AEA28  7F C3 F3 78 */	mr r3, r30
/* 805AEA2C  4B DC 5A 15 */	bl Actor_delete
/* 805AEA30  48 00 00 18 */	b lbl_805AEA48
lbl_805AEA34:
/* 805AEA34  81 9E 02 A0 */	lwz r12, 0x2a0(r30)
/* 805AEA38  7F C3 F3 78 */	mr r3, r30
/* 805AEA3C  7F E4 FB 78 */	mr r4, r31
/* 805AEA40  7D 89 03 A6 */	mtctr r12
/* 805AEA44  4E 80 04 21 */	bctrl 
lbl_805AEA48:
/* 805AEA48  39 61 00 40 */	addi r11, r1, 0x40
/* 805AEA4C  4B AE C4 D5 */	bl func_8009AF20
/* 805AEA50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AEA54  7C 08 03 A6 */	mtlr r0
/* 805AEA58  38 21 00 40 */	addi r1, r1, 0x40
/* 805AEA5C  4E 80 00 20 */	blr 
