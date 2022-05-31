lbl_805ABBB8:
/* 805ABBB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805ABBBC  7C 08 02 A6 */	mflr r0
/* 805ABBC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805ABBC4  39 61 00 40 */	addi r11, r1, 0x40
/* 805ABBC8  4B AE F3 0D */	bl func_8009AED4
/* 805ABBCC  7C 9F 23 78 */	mr r31, r4
/* 805ABBD0  7C 7E 1B 78 */	mr r30, r3
/* 805ABBD4  7F E3 FB 78 */	mr r3, r31
/* 805ABBD8  4B E2 DA 69 */	bl get_player_actor_withoutCheck
/* 805ABBDC  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805ABBE0  7C 7D 1B 78 */	mr r29, r3
/* 805ABBE4  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805ABBE8  38 61 00 14 */	addi r3, r1, 0x14
/* 805ABBEC  38 81 00 10 */	addi r4, r1, 0x10
/* 805ABBF0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805ABBF4  38 A1 00 24 */	addi r5, r1, 0x24
/* 805ABBF8  90 01 00 28 */	stw r0, 0x28(r1)
/* 805ABBFC  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805ABC00  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805ABC04  4B DF 9B 5D */	bl mFI_Wpos2BlockNum
/* 805ABC08  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805ABC0C  38 61 00 0C */	addi r3, r1, 0xc
/* 805ABC10  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805ABC14  38 81 00 08 */	addi r4, r1, 8
/* 805ABC18  38 A1 00 18 */	addi r5, r1, 0x18
/* 805ABC1C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805ABC20  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805ABC24  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805ABC28  90 01 00 20 */	stw r0, 0x20(r1)
/* 805ABC2C  4B DF 9B 35 */	bl mFI_Wpos2BlockNum
/* 805ABC30  7F A4 EB 78 */	mr r4, r29
/* 805ABC34  38 60 00 01 */	li r3, 1
/* 805ABC38  4B DE E6 2D */	bl mDemo_Check
/* 805ABC3C  2C 03 00 00 */	cmpwi r3, 0
/* 805ABC40  40 82 00 58 */	bne lbl_805ABC98
/* 805ABC44  7F A4 EB 78 */	mr r4, r29
/* 805ABC48  38 60 00 05 */	li r3, 5
/* 805ABC4C  4B DE E6 19 */	bl mDemo_Check
/* 805ABC50  2C 03 00 00 */	cmpwi r3, 0
/* 805ABC54  40 82 00 44 */	bne lbl_805ABC98
/* 805ABC58  7F A4 EB 78 */	mr r4, r29
/* 805ABC5C  38 60 00 10 */	li r3, 0x10
/* 805ABC60  4B DE E6 05 */	bl mDemo_Check
/* 805ABC64  2C 03 00 00 */	cmpwi r3, 0
/* 805ABC68  40 82 00 30 */	bne lbl_805ABC98
/* 805ABC6C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805ABC70  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805ABC74  7C 03 00 00 */	cmpw r3, r0
/* 805ABC78  40 82 00 14 */	bne lbl_805ABC8C
/* 805ABC7C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805ABC80  80 01 00 08 */	lwz r0, 8(r1)
/* 805ABC84  7C 03 00 00 */	cmpw r3, r0
/* 805ABC88  41 82 00 10 */	beq lbl_805ABC98
lbl_805ABC8C:
/* 805ABC8C  7F C3 F3 78 */	mr r3, r30
/* 805ABC90  4B DC 87 B1 */	bl Actor_delete
/* 805ABC94  48 00 00 18 */	b lbl_805ABCAC
lbl_805ABC98:
/* 805ABC98  81 9E 02 A0 */	lwz r12, 0x2a0(r30)
/* 805ABC9C  7F C3 F3 78 */	mr r3, r30
/* 805ABCA0  7F E4 FB 78 */	mr r4, r31
/* 805ABCA4  7D 89 03 A6 */	mtctr r12
/* 805ABCA8  4E 80 04 21 */	bctrl 
lbl_805ABCAC:
/* 805ABCAC  39 61 00 40 */	addi r11, r1, 0x40
/* 805ABCB0  4B AE F2 71 */	bl func_8009AF20
/* 805ABCB4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805ABCB8  7C 08 03 A6 */	mtlr r0
/* 805ABCBC  38 21 00 40 */	addi r1, r1, 0x40
/* 805ABCC0  4E 80 00 20 */	blr 
