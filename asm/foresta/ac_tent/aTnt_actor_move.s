lbl_805BE5DC:
/* 805BE5DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BE5E0  7C 08 02 A6 */	mflr r0
/* 805BE5E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BE5E8  39 61 00 40 */	addi r11, r1, 0x40
/* 805BE5EC  4B AD C8 E9 */	bl func_8009AED4
/* 805BE5F0  7C 9E 23 78 */	mr r30, r4
/* 805BE5F4  7C 7F 1B 78 */	mr r31, r3
/* 805BE5F8  7F C3 F3 78 */	mr r3, r30
/* 805BE5FC  4B E1 B0 45 */	bl get_player_actor_withoutCheck
/* 805BE600  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 805BE604  7C 7D 1B 78 */	mr r29, r3
/* 805BE608  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805BE60C  38 61 00 14 */	addi r3, r1, 0x14
/* 805BE610  38 81 00 10 */	addi r4, r1, 0x10
/* 805BE614  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805BE618  38 A1 00 24 */	addi r5, r1, 0x24
/* 805BE61C  90 01 00 28 */	stw r0, 0x28(r1)
/* 805BE620  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805BE624  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805BE628  4B DE 71 39 */	bl mFI_Wpos2BlockNum
/* 805BE62C  2C 03 00 00 */	cmpwi r3, 0
/* 805BE630  41 82 00 9C */	beq lbl_805BE6CC
/* 805BE634  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 805BE638  38 61 00 0C */	addi r3, r1, 0xc
/* 805BE63C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805BE640  38 81 00 08 */	addi r4, r1, 8
/* 805BE644  38 A1 00 18 */	addi r5, r1, 0x18
/* 805BE648  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805BE64C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805BE650  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805BE654  90 01 00 20 */	stw r0, 0x20(r1)
/* 805BE658  4B DE 71 09 */	bl mFI_Wpos2BlockNum
/* 805BE65C  2C 03 00 00 */	cmpwi r3, 0
/* 805BE660  41 82 00 6C */	beq lbl_805BE6CC
/* 805BE664  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805BE668  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BE66C  7C 03 00 00 */	cmpw r3, r0
/* 805BE670  40 82 00 14 */	bne lbl_805BE684
/* 805BE674  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805BE678  80 01 00 08 */	lwz r0, 8(r1)
/* 805BE67C  7C 03 00 00 */	cmpw r3, r0
/* 805BE680  41 82 00 4C */	beq lbl_805BE6CC
lbl_805BE684:
/* 805BE684  7F A4 EB 78 */	mr r4, r29
/* 805BE688  38 60 00 01 */	li r3, 1
/* 805BE68C  4B DD BB D9 */	bl mDemo_Check
/* 805BE690  2C 03 00 00 */	cmpwi r3, 0
/* 805BE694  40 82 00 38 */	bne lbl_805BE6CC
/* 805BE698  7F A4 EB 78 */	mr r4, r29
/* 805BE69C  38 60 00 05 */	li r3, 5
/* 805BE6A0  4B DD BB C5 */	bl mDemo_Check
/* 805BE6A4  2C 03 00 00 */	cmpwi r3, 0
/* 805BE6A8  40 82 00 24 */	bne lbl_805BE6CC
/* 805BE6AC  7F A4 EB 78 */	mr r4, r29
/* 805BE6B0  38 60 00 10 */	li r3, 0x10
/* 805BE6B4  4B DD BB B1 */	bl mDemo_Check
/* 805BE6B8  2C 03 00 00 */	cmpwi r3, 0
/* 805BE6BC  40 82 00 10 */	bne lbl_805BE6CC
/* 805BE6C0  7F E3 FB 78 */	mr r3, r31
/* 805BE6C4  4B DB 5D 7D */	bl Actor_delete
/* 805BE6C8  48 00 00 50 */	b lbl_805BE718
lbl_805BE6CC:
/* 805BE6CC  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805BE6D0  7F E3 FB 78 */	mr r3, r31
/* 805BE6D4  7F C4 F3 78 */	mr r4, r30
/* 805BE6D8  7D 89 03 A6 */	mtctr r12
/* 805BE6DC  4E 80 04 21 */	bctrl 
/* 805BE6E0  7F E3 FB 78 */	mr r3, r31
/* 805BE6E4  4B FF FE C1 */	bl aTnt_ControlLight
/* 805BE6E8  2C 03 00 00 */	cmpwi r3, 0
/* 805BE6EC  41 82 00 10 */	beq lbl_805BE6FC
/* 805BE6F0  3C 60 80 65 */	lis r3, data_8064AB94@ha /* 0x8064AB94@ha */
/* 805BE6F4  C0 23 AB 94 */	lfs f1, data_8064AB94@l(r3)  /* 0x8064AB94@l */
/* 805BE6F8  48 00 00 0C */	b lbl_805BE704
lbl_805BE6FC:
/* 805BE6FC  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064AB98@ha */
/* 805BE700  C0 23 AB 98 */	lfs f1, lit_436@l(r3)  /* 0x8064AB98@l */
lbl_805BE704:
/* 805BE704  3C 60 80 65 */	lis r3, lit_584@ha /* 0x8064ABB8@ha */
/* 805BE708  38 83 AB B8 */	addi r4, r3, lit_584@l /* 0x8064ABB8@l */
/* 805BE70C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805BE710  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805BE714  4B DF C5 55 */	bl chase_f
lbl_805BE718:
/* 805BE718  39 61 00 40 */	addi r11, r1, 0x40
/* 805BE71C  4B AD C8 05 */	bl func_8009AF20
/* 805BE720  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BE724  7C 08 03 A6 */	mtlr r0
/* 805BE728  38 21 00 40 */	addi r1, r1, 0x40
/* 805BE72C  4E 80 00 20 */	blr 
