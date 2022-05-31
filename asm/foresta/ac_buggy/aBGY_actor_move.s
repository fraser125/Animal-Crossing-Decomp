lbl_805AA5B0:
/* 805AA5B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805AA5B4  7C 08 02 A6 */	mflr r0
/* 805AA5B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AA5BC  39 61 00 40 */	addi r11, r1, 0x40
/* 805AA5C0  4B AF 09 15 */	bl func_8009AED4
/* 805AA5C4  7C 9E 23 78 */	mr r30, r4
/* 805AA5C8  7C 7F 1B 78 */	mr r31, r3
/* 805AA5CC  7F C3 F3 78 */	mr r3, r30
/* 805AA5D0  4B E2 F0 71 */	bl get_player_actor_withoutCheck
/* 805AA5D4  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 805AA5D8  7C 7D 1B 78 */	mr r29, r3
/* 805AA5DC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805AA5E0  38 61 00 14 */	addi r3, r1, 0x14
/* 805AA5E4  38 81 00 10 */	addi r4, r1, 0x10
/* 805AA5E8  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805AA5EC  38 A1 00 24 */	addi r5, r1, 0x24
/* 805AA5F0  90 01 00 28 */	stw r0, 0x28(r1)
/* 805AA5F4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805AA5F8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805AA5FC  4B DF B1 65 */	bl mFI_Wpos2BlockNum
/* 805AA600  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805AA604  38 61 00 0C */	addi r3, r1, 0xc
/* 805AA608  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805AA60C  38 81 00 08 */	addi r4, r1, 8
/* 805AA610  38 A1 00 18 */	addi r5, r1, 0x18
/* 805AA614  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805AA618  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805AA61C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805AA620  90 01 00 20 */	stw r0, 0x20(r1)
/* 805AA624  4B DF B1 3D */	bl mFI_Wpos2BlockNum
/* 805AA628  7F A4 EB 78 */	mr r4, r29
/* 805AA62C  38 60 00 01 */	li r3, 1
/* 805AA630  4B DE FC 35 */	bl mDemo_Check
/* 805AA634  2C 03 00 00 */	cmpwi r3, 0
/* 805AA638  40 82 00 58 */	bne lbl_805AA690
/* 805AA63C  7F A4 EB 78 */	mr r4, r29
/* 805AA640  38 60 00 05 */	li r3, 5
/* 805AA644  4B DE FC 21 */	bl mDemo_Check
/* 805AA648  2C 03 00 00 */	cmpwi r3, 0
/* 805AA64C  40 82 00 44 */	bne lbl_805AA690
/* 805AA650  7F A4 EB 78 */	mr r4, r29
/* 805AA654  38 60 00 10 */	li r3, 0x10
/* 805AA658  4B DE FC 0D */	bl mDemo_Check
/* 805AA65C  2C 03 00 00 */	cmpwi r3, 0
/* 805AA660  40 82 00 30 */	bne lbl_805AA690
/* 805AA664  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805AA668  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805AA66C  7C 03 00 00 */	cmpw r3, r0
/* 805AA670  40 82 00 14 */	bne lbl_805AA684
/* 805AA674  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805AA678  80 01 00 08 */	lwz r0, 8(r1)
/* 805AA67C  7C 03 00 00 */	cmpw r3, r0
/* 805AA680  41 82 00 10 */	beq lbl_805AA690
lbl_805AA684:
/* 805AA684  7F E3 FB 78 */	mr r3, r31
/* 805AA688  4B DC 9D B9 */	bl Actor_delete
/* 805AA68C  48 00 00 5C */	b lbl_805AA6E8
lbl_805AA690:
/* 805AA690  38 7F 01 78 */	addi r3, r31, 0x178
/* 805AA694  4B DC 69 81 */	bl cKF_SkeletonInfo_R_play
/* 805AA698  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805AA69C  7F E3 FB 78 */	mr r3, r31
/* 805AA6A0  7F C4 F3 78 */	mr r4, r30
/* 805AA6A4  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805AA6A8  7D 89 03 A6 */	mtctr r12
/* 805AA6AC  4E 80 04 21 */	bctrl 
/* 805AA6B0  7F E3 FB 78 */	mr r3, r31
/* 805AA6B4  4B FF FE C9 */	bl aBGY_ctrl_light
/* 805AA6B8  2C 03 00 00 */	cmpwi r3, 0
/* 805AA6BC  41 82 00 10 */	beq lbl_805AA6CC
/* 805AA6C0  3C 60 80 65 */	lis r3, lit_465@ha /* 0x8064A5EC@ha */
/* 805AA6C4  C0 23 A5 EC */	lfs f1, lit_465@l(r3)  /* 0x8064A5EC@l */
/* 805AA6C8  48 00 00 0C */	b lbl_805AA6D4
lbl_805AA6CC:
/* 805AA6CC  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A5F0@ha */
/* 805AA6D0  C0 23 A5 F0 */	lfs f1, lit_466@l(r3)  /* 0x8064A5F0@l */
lbl_805AA6D4:
/* 805AA6D4  3C 60 80 65 */	lis r3, lit_683@ha /* 0x8064A604@ha */
/* 805AA6D8  38 83 A6 04 */	addi r4, r3, lit_683@l /* 0x8064A604@l */
/* 805AA6DC  C0 44 00 00 */	lfs f2, 0(r4)
/* 805AA6E0  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805AA6E4  4B E1 05 85 */	bl chase_f
lbl_805AA6E8:
/* 805AA6E8  39 61 00 40 */	addi r11, r1, 0x40
/* 805AA6EC  4B AF 08 35 */	bl func_8009AF20
/* 805AA6F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AA6F4  7C 08 03 A6 */	mtlr r0
/* 805AA6F8  38 21 00 40 */	addi r1, r1, 0x40
/* 805AA6FC  4E 80 00 20 */	blr 
