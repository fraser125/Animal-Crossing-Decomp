lbl_804BFE2C:
/* 804BFE2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BFE30  7C 08 02 A6 */	mflr r0
/* 804BFE34  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BFE38  39 61 00 30 */	addi r11, r1, 0x30
/* 804BFE3C  4B BD B0 99 */	bl func_8009AED4
/* 804BFE40  7C 9E 23 78 */	mr r30, r4
/* 804BFE44  7C 7D 1B 78 */	mr r29, r3
/* 804BFE48  80 E4 00 00 */	lwz r7, 0(r4)
/* 804BFE4C  38 61 00 0C */	addi r3, r1, 0xc
/* 804BFE50  80 C4 00 04 */	lwz r6, 4(r4)
/* 804BFE54  38 81 00 08 */	addi r4, r1, 8
/* 804BFE58  80 1E 00 08 */	lwz r0, 8(r30)
/* 804BFE5C  38 A1 00 10 */	addi r5, r1, 0x10
/* 804BFE60  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804BFE64  3B E0 00 00 */	li r31, 0
/* 804BFE68  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804BFE6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804BFE70  4B EE 54 F9 */	bl mFI_Wpos2UtNum
/* 804BFE74  2C 03 00 00 */	cmpwi r3, 0
/* 804BFE78  41 82 00 2C */	beq lbl_804BFEA4
/* 804BFE7C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804BFE80  80 81 00 08 */	lwz r4, 8(r1)
/* 804BFE84  4B EE 73 FD */	bl mFI_UtNum2UtFG
/* 804BFE88  28 03 00 00 */	cmplwi r3, 0
/* 804BFE8C  41 82 00 18 */	beq lbl_804BFEA4
/* 804BFE90  A0 63 00 00 */	lhz r3, 0(r3)
/* 804BFE94  7F A4 EB 78 */	mr r4, r29
/* 804BFE98  7F C5 F3 78 */	mr r5, r30
/* 804BFE9C  4B FF FE B1 */	bl bIT_actor_rand_pos_get_plus
/* 804BFEA0  3B E0 00 01 */	li r31, 1
lbl_804BFEA4:
/* 804BFEA4  2C 1F 00 00 */	cmpwi r31, 0
/* 804BFEA8  40 82 00 18 */	bne lbl_804BFEC0
/* 804BFEAC  3C 60 80 64 */	lis r3, data_8064613C@ha /* 0x8064613C@ha */
/* 804BFEB0  C0 03 61 3C */	lfs f0, data_8064613C@l(r3)  /* 0x8064613C@l */
/* 804BFEB4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804BFEB8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 804BFEBC  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_804BFEC0:
/* 804BFEC0  7F E3 FB 78 */	mr r3, r31
/* 804BFEC4  39 61 00 30 */	addi r11, r1, 0x30
/* 804BFEC8  4B BD B0 59 */	bl func_8009AF20
/* 804BFECC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BFED0  7C 08 03 A6 */	mtlr r0
/* 804BFED4  38 21 00 30 */	addi r1, r1, 0x30
/* 804BFED8  4E 80 00 20 */	blr 
