lbl_8049DEEC:
/* 8049DEEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049DEF0  7C 08 02 A6 */	mflr r0
/* 8049DEF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049DEF8  39 61 00 30 */	addi r11, r1, 0x30
/* 8049DEFC  4B BF CF D9 */	bl func_8009AED4
/* 8049DF00  7C 9D 23 78 */	mr r29, r4
/* 8049DF04  3B C3 01 8C */	addi r30, r3, 0x18c
/* 8049DF08  3B E0 00 00 */	li r31, 0
lbl_8049DF0C:
/* 8049DF0C  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 8049DF10  28 00 00 00 */	cmplwi r0, 0
/* 8049DF14  41 82 00 80 */	beq lbl_8049DF94
/* 8049DF18  80 DE 00 04 */	lwz r6, 4(r30)
/* 8049DF1C  38 61 00 0C */	addi r3, r1, 0xc
/* 8049DF20  80 1E 00 08 */	lwz r0, 8(r30)
/* 8049DF24  38 81 00 08 */	addi r4, r1, 8
/* 8049DF28  38 A1 00 10 */	addi r5, r1, 0x10
/* 8049DF2C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8049DF30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049DF34  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8049DF38  90 01 00 18 */	stw r0, 0x18(r1)
/* 8049DF3C  4B F0 74 2D */	bl mFI_Wpos2UtNum
/* 8049DF40  2C 03 00 00 */	cmpwi r3, 0
/* 8049DF44  41 82 00 28 */	beq lbl_8049DF6C
/* 8049DF48  80 81 00 08 */	lwz r4, 8(r1)
/* 8049DF4C  3C 60 81 1D */	lis r3, data_811CF3A8@ha /* 0x811CF3A8@ha */
/* 8049DF50  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8049DF54  38 63 F3 A8 */	addi r3, r3, data_811CF3A8@l /* 0x811CF3A8@l */
/* 8049DF58  54 84 28 34 */	slwi r4, r4, 5
/* 8049DF5C  7C 63 22 14 */	add r3, r3, r4
/* 8049DF60  54 00 08 3C */	slwi r0, r0, 1
/* 8049DF64  7C C3 02 AE */	lhax r6, r3, r0
/* 8049DF68  48 00 00 08 */	b lbl_8049DF70
lbl_8049DF6C:
/* 8049DF6C  38 C0 00 00 */	li r6, 0
lbl_8049DF70:
/* 8049DF70  3C 60 80 64 */	lis r3, lit_703@ha /* 0x80645BB4@ha */
/* 8049DF74  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8049DF78  C0 23 5B B4 */	lfs f1, lit_703@l(r3)  /* 0x80645BB4@l */
/* 8049DF7C  7F A3 EB 78 */	mr r3, r29
/* 8049DF80  A0 9E 00 00 */	lhz r4, 0(r30)
/* 8049DF84  38 BE 00 10 */	addi r5, r30, 0x10
/* 8049DF88  EC 21 00 32 */	fmuls f1, f1, f0
/* 8049DF8C  A8 FE 00 02 */	lha r7, 2(r30)
/* 8049DF90  4B FF FE DD */	bl Shop_Goods_Actor_single_draw
lbl_8049DF94:
/* 8049DF94  3B FF 00 01 */	addi r31, r31, 1
/* 8049DF98  3B DE 00 48 */	addi r30, r30, 0x48
/* 8049DF9C  2C 1F 00 09 */	cmpwi r31, 9
/* 8049DFA0  41 80 FF 6C */	blt lbl_8049DF0C
/* 8049DFA4  39 61 00 30 */	addi r11, r1, 0x30
/* 8049DFA8  4B BF CF 79 */	bl func_8009AF20
/* 8049DFAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049DFB0  7C 08 03 A6 */	mtlr r0
/* 8049DFB4  38 21 00 30 */	addi r1, r1, 0x30
/* 8049DFB8  4E 80 00 20 */	blr 
