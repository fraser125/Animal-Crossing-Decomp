lbl_805E1F1C:
/* 805E1F1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E1F20  7C 08 02 A6 */	mflr r0
/* 805E1F24  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E1F28  39 61 00 20 */	addi r11, r1, 0x20
/* 805E1F2C  4B AB 8F A5 */	bl func_8009AED0
/* 805E1F30  7C 7C 1B 78 */	mr r28, r3
/* 805E1F34  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 805E1F38  83 BE 09 88 */	lwz r29, 0x988(r30)
/* 805E1F3C  38 BE 00 12 */	addi r5, r30, 0x12
/* 805E1F40  7F A3 EB 78 */	mr r3, r29
/* 805E1F44  38 9D 00 70 */	addi r4, r29, 0x70
/* 805E1F48  4B D9 00 B9 */	bl cKF_SkeletonInfo_R_combine_play
/* 805E1F4C  A8 1E 00 06 */	lha r0, 6(r30)
/* 805E1F50  7C 7F 1B 78 */	mr r31, r3
/* 805E1F54  2C 00 00 28 */	cmpwi r0, 0x28
/* 805E1F58  41 82 00 1C */	beq lbl_805E1F74
/* 805E1F5C  7C 03 03 78 */	mr r3, r0
/* 805E1F60  4B FF F7 BD */	bl mIV_Get_pl_item_skeleton
/* 805E1F64  28 03 00 00 */	cmplwi r3, 0
/* 805E1F68  41 82 00 0C */	beq lbl_805E1F74
/* 805E1F6C  38 7D 02 24 */	addi r3, r29, 0x224
/* 805E1F70  4B D8 F0 A5 */	bl cKF_SkeletonInfo_R_play
lbl_805E1F74:
/* 805E1F74  A8 7E 00 0A */	lha r3, 0xa(r30)
/* 805E1F78  2C 03 00 00 */	cmpwi r3, 0
/* 805E1F7C  40 81 00 0C */	ble lbl_805E1F88
/* 805E1F80  38 03 FF FF */	addi r0, r3, -1
/* 805E1F84  B0 1E 00 0A */	sth r0, 0xa(r30)
lbl_805E1F88:
/* 805E1F88  7F 83 E3 78 */	mr r3, r28
/* 805E1F8C  4B FF FC F9 */	bl mIV_pl_eff_move
/* 805E1F90  A8 1E 00 04 */	lha r0, 4(r30)
/* 805E1F94  2C 00 00 01 */	cmpwi r0, 1
/* 805E1F98  40 82 00 10 */	bne lbl_805E1FA8
/* 805E1F9C  38 00 00 08 */	li r0, 8
/* 805E1FA0  B0 1E 00 0A */	sth r0, 0xa(r30)
/* 805E1FA4  48 00 00 6C */	b lbl_805E2010
lbl_805E1FA8:
/* 805E1FA8  2C 00 00 02 */	cmpwi r0, 2
/* 805E1FAC  40 82 00 20 */	bne lbl_805E1FCC
/* 805E1FB0  38 00 00 05 */	li r0, 5
/* 805E1FB4  2C 1F 00 01 */	cmpwi r31, 1
/* 805E1FB8  B0 1E 00 0A */	sth r0, 0xa(r30)
/* 805E1FBC  40 82 00 54 */	bne lbl_805E2010
/* 805E1FC0  38 00 00 00 */	li r0, 0
/* 805E1FC4  B0 1E 00 08 */	sth r0, 8(r30)
/* 805E1FC8  48 00 00 48 */	b lbl_805E2010
lbl_805E1FCC:
/* 805E1FCC  2C 00 00 03 */	cmpwi r0, 3
/* 805E1FD0  40 82 00 40 */	bne lbl_805E2010
/* 805E1FD4  38 00 00 05 */	li r0, 5
/* 805E1FD8  2C 1F 00 01 */	cmpwi r31, 1
/* 805E1FDC  B0 1E 00 0A */	sth r0, 0xa(r30)
/* 805E1FE0  40 82 00 10 */	bne lbl_805E1FF0
/* 805E1FE4  38 00 00 00 */	li r0, 0
/* 805E1FE8  B0 1E 00 08 */	sth r0, 8(r30)
/* 805E1FEC  48 00 00 24 */	b lbl_805E2010
lbl_805E1FF0:
/* 805E1FF0  3C 80 80 65 */	lis r4, lit_832@ha /* 0x8064B438@ha */
/* 805E1FF4  7F A3 EB 78 */	mr r3, r29
/* 805E1FF8  C0 24 B4 38 */	lfs f1, lit_832@l(r4)  /* 0x8064B438@l */
/* 805E1FFC  4B D8 E4 8D */	bl cKF_FrameControl_passCheck_now
/* 805E2000  2C 03 00 00 */	cmpwi r3, 0
/* 805E2004  41 82 00 0C */	beq lbl_805E2010
/* 805E2008  38 60 01 13 */	li r3, 0x113
/* 805E200C  48 04 BC F9 */	bl sAdo_SysTrgStart
lbl_805E2010:
/* 805E2010  7F 83 E3 78 */	mr r3, r28
/* 805E2014  4B FF FE 41 */	bl mIV_pl_check_anm_change
/* 805E2018  39 61 00 20 */	addi r11, r1, 0x20
/* 805E201C  4B AB 8F 01 */	bl func_8009AF1C
/* 805E2020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E2024  7C 08 03 A6 */	mtlr r0
/* 805E2028  38 21 00 20 */	addi r1, r1, 0x20
/* 805E202C  4E 80 00 20 */	blr 
