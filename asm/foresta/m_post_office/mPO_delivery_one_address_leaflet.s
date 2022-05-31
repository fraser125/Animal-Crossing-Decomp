lbl_803DF670:
/* 803DF670  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DF674  7C 08 02 A6 */	mflr r0
/* 803DF678  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DF67C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF680  4B CB B8 51 */	bl func_8009AED0
/* 803DF684  7C BD 2B 78 */	mr r29, r5
/* 803DF688  A8 A3 00 00 */	lha r5, 0(r3)
/* 803DF68C  7C 7F 1B 78 */	mr r31, r3
/* 803DF690  7C 9C 23 78 */	mr r28, r4
/* 803DF694  7C A0 EE 30 */	sraw r0, r5, r29
/* 803DF698  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803DF69C  40 82 00 8C */	bne lbl_803DF728
/* 803DF6A0  1C 9D 26 B0 */	mulli r4, r29, 0x26b0
/* 803DF6A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DF6A8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803DF6AC  7C 60 22 14 */	add r3, r0, r4
/* 803DF6B0  3F C3 00 01 */	addis r30, r3, 1
/* 803DF6B4  A0 1E 9C FA */	lhz r0, -0x6306(r30)
/* 803DF6B8  3B DE 9C E8 */	addi r30, r30, -25368
/* 803DF6BC  28 00 FF FF */	cmplwi r0, 0xffff
/* 803DF6C0  40 82 00 18 */	bne lbl_803DF6D8
/* 803DF6C4  38 00 00 01 */	li r0, 1
/* 803DF6C8  7C 00 E8 30 */	slw r0, r0, r29
/* 803DF6CC  7C A0 03 78 */	or r0, r5, r0
/* 803DF6D0  B0 1F 00 00 */	sth r0, 0(r31)
/* 803DF6D4  48 00 00 54 */	b lbl_803DF728
lbl_803DF6D8:
/* 803DF6D8  7F A3 EB 78 */	mr r3, r29
/* 803DF6DC  4B FD 3E FD */	bl mHS_get_pl_no
/* 803DF6E0  2C 03 00 04 */	cmpwi r3, 4
/* 803DF6E4  40 80 00 44 */	bge lbl_803DF728
/* 803DF6E8  4B FB F0 D1 */	bl mEv_ArbeitPlayer
/* 803DF6EC  2C 03 00 00 */	cmpwi r3, 0
/* 803DF6F0  40 82 00 38 */	bne lbl_803DF728
/* 803DF6F4  7F 83 E3 78 */	mr r3, r28
/* 803DF6F8  7F C4 F3 78 */	mr r4, r30
/* 803DF6FC  4B FD D0 E5 */	bl mMl_set_to_plname
/* 803DF700  7F A3 EB 78 */	mr r3, r29
/* 803DF704  7F 84 E3 78 */	mr r4, r28
/* 803DF708  4B FF FA 11 */	bl mPO_copy_contents
/* 803DF70C  2C 03 00 01 */	cmpwi r3, 1
/* 803DF710  40 82 00 18 */	bne lbl_803DF728
/* 803DF714  38 00 00 01 */	li r0, 1
/* 803DF718  A8 7F 00 00 */	lha r3, 0(r31)
/* 803DF71C  7C 00 E8 30 */	slw r0, r0, r29
/* 803DF720  7C 60 03 78 */	or r0, r3, r0
/* 803DF724  B0 1F 00 00 */	sth r0, 0(r31)
lbl_803DF728:
/* 803DF728  39 61 00 20 */	addi r11, r1, 0x20
/* 803DF72C  4B CB B7 F1 */	bl func_8009AF1C
/* 803DF730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DF734  7C 08 03 A6 */	mtlr r0
/* 803DF738  38 21 00 20 */	addi r1, r1, 0x20
/* 803DF73C  4E 80 00 20 */	blr 
