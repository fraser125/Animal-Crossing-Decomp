lbl_805DEE74:
/* 805DEE74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DEE78  7C 08 02 A6 */	mflr r0
/* 805DEE7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DEE80  39 61 00 20 */	addi r11, r1, 0x20
/* 805DEE84  4B AB C0 4D */	bl func_8009AED0
/* 805DEE88  7C 7D 1B 78 */	mr r29, r3
/* 805DEE8C  7C 9E 23 78 */	mr r30, r4
/* 805DEE90  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DEE94  7C BF 2B 78 */	mr r31, r5
/* 805DEE98  80 63 09 80 */	lwz r3, 0x980(r3)
/* 805DEE9C  3B 83 02 36 */	addi r28, r3, 0x236
/* 805DEEA0  7F 83 E3 78 */	mr r3, r28
/* 805DEEA4  4B DD D8 FD */	bl mMl_check_not_used_mail
/* 805DEEA8  2C 03 00 01 */	cmpwi r3, 1
/* 805DEEAC  41 82 00 C8 */	beq lbl_805DEF74
/* 805DEEB0  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805DEEB4  3C 00 DE 00 */	lis r0, 0xde00
/* 805DEEB8  3C 80 80 65 */	lis r4, lit_474@ha /* 0x8064B2A4@ha */
/* 805DEEBC  3C A0 80 AA */	lis r5, inv_item_shadow_mode@ha /* 0x80AA5938@ha */
/* 805DEEC0  90 06 00 00 */	stw r0, 0(r6)
/* 805DEEC4  38 05 59 38 */	addi r0, r5, inv_item_shadow_mode@l /* 0x80AA5938@l */
/* 805DEEC8  C0 44 B2 A4 */	lfs f2, lit_474@l(r4)  /* 0x8064B2A4@l */
/* 805DEECC  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B2C8@ha */
/* 805DEED0  90 06 00 04 */	stw r0, 4(r6)
/* 805DEED4  38 A3 B2 C8 */	addi r5, r3, lit_543@l /* 0x8064B2C8@l */
/* 805DEED8  38 C6 00 08 */	addi r6, r6, 8
/* 805DEEDC  C0 65 00 00 */	lfs f3, 0(r5)
/* 805DEEE0  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 805DEEE4  7F C3 F3 78 */	mr r3, r30
/* 805DEEE8  7F 84 E3 78 */	mr r4, r28
/* 805DEEEC  38 A0 00 01 */	li r5, 1
/* 805DEEF0  81 1D 00 2C */	lwz r8, 0x2c(r29)
/* 805DEEF4  38 C0 00 01 */	li r6, 1
/* 805DEEF8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805DEEFC  38 E0 00 00 */	li r7, 0
/* 805DEF00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805DEF04  EC 22 08 2A */	fadds f1, f2, f1
/* 805DEF08  81 88 09 60 */	lwz r12, 0x960(r8)
/* 805DEF0C  EC 40 10 28 */	fsubs f2, f0, f2
/* 805DEF10  7D 89 03 A6 */	mtctr r12
/* 805DEF14  4E 80 04 21 */	bctrl 
/* 805DEF18  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805DEF1C  3C 80 80 AA */	lis r4, inv_item_mode@ha /* 0x80AA5910@ha */
/* 805DEF20  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B2C8@ha */
/* 805DEF24  3C A0 DE 00 */	lis r5, 0xDE00 /* 0xDE000000@ha */
/* 805DEF28  7C C7 33 78 */	mr r7, r6
/* 805DEF2C  38 04 59 10 */	addi r0, r4, inv_item_mode@l /* 0x80AA5910@l */
/* 805DEF30  90 A6 00 00 */	stw r5, 0(r6)
/* 805DEF34  38 A3 B2 C8 */	addi r5, r3, lit_543@l /* 0x8064B2C8@l */
/* 805DEF38  38 C6 00 08 */	addi r6, r6, 8
/* 805DEF3C  7F C3 F3 78 */	mr r3, r30
/* 805DEF40  90 07 00 04 */	stw r0, 4(r7)
/* 805DEF44  7F 84 E3 78 */	mr r4, r28
/* 805DEF48  C0 65 00 00 */	lfs f3, 0x0000(r5)  /* 0xDE000000@l */
/* 805DEF4C  38 A0 00 01 */	li r5, 1
/* 805DEF50  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 805DEF54  38 C0 00 00 */	li r6, 0
/* 805DEF58  38 E0 00 00 */	li r7, 0
/* 805DEF5C  81 1D 00 2C */	lwz r8, 0x2c(r29)
/* 805DEF60  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805DEF64  81 88 09 60 */	lwz r12, 0x960(r8)
/* 805DEF68  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805DEF6C  7D 89 03 A6 */	mtctr r12
/* 805DEF70  4E 80 04 21 */	bctrl 
lbl_805DEF74:
/* 805DEF74  39 61 00 20 */	addi r11, r1, 0x20
/* 805DEF78  4B AB BF A5 */	bl func_8009AF1C
/* 805DEF7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DEF80  7C 08 03 A6 */	mtlr r0
/* 805DEF84  38 21 00 20 */	addi r1, r1, 0x20
/* 805DEF88  4E 80 00 20 */	blr 
