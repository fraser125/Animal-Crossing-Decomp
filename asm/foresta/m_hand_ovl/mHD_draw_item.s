lbl_805DECF8:
/* 805DECF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DECFC  7C 08 02 A6 */	mflr r0
/* 805DED00  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DED04  39 61 00 20 */	addi r11, r1, 0x20
/* 805DED08  4B AB C1 C5 */	bl func_8009AECC
/* 805DED0C  7C 7C 1B 78 */	mr r28, r3
/* 805DED10  7C 9D 23 78 */	mr r29, r4
/* 805DED14  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DED18  7C BE 2B 78 */	mr r30, r5
/* 805DED1C  83 E3 09 80 */	lwz r31, 0x980(r3)
/* 805DED20  A0 1F 02 34 */	lhz r0, 0x234(r31)
/* 805DED24  28 00 00 00 */	cmplwi r0, 0
/* 805DED28  41 82 01 34 */	beq lbl_805DEE5C
/* 805DED2C  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 805DED30  41 80 00 0C */	blt lbl_805DED3C
/* 805DED34  28 00 FE 27 */	cmplwi r0, 0xfe27
/* 805DED38  40 81 01 24 */	ble lbl_805DEE5C
lbl_805DED3C:
/* 805DED3C  28 00 22 24 */	cmplwi r0, 0x2224
/* 805DED40  41 80 00 0C */	blt lbl_805DED4C
/* 805DED44  28 00 22 2B */	cmplwi r0, 0x222b
/* 805DED48  40 81 01 14 */	ble lbl_805DEE5C
lbl_805DED4C:
/* 805DED4C  28 00 FE 31 */	cmplwi r0, 0xfe31
/* 805DED50  41 80 00 0C */	blt lbl_805DED5C
/* 805DED54  28 00 FE 38 */	cmplwi r0, 0xfe38
/* 805DED58  40 81 01 04 */	ble lbl_805DEE5C
lbl_805DED5C:
/* 805DED5C  28 00 FE 39 */	cmplwi r0, 0xfe39
/* 805DED60  41 80 00 0C */	blt lbl_805DED6C
/* 805DED64  28 00 FE 98 */	cmplwi r0, 0xfe98
/* 805DED68  40 81 00 F4 */	ble lbl_805DEE5C
lbl_805DED6C:
/* 805DED6C  28 00 FE 99 */	cmplwi r0, 0xfe99
/* 805DED70  41 80 00 0C */	blt lbl_805DED7C
/* 805DED74  28 00 FE A0 */	cmplwi r0, 0xfea0
/* 805DED78  40 81 00 E4 */	ble lbl_805DEE5C
lbl_805DED7C:
/* 805DED7C  80 BF 03 60 */	lwz r5, 0x360(r31)
/* 805DED80  3C 00 DE 00 */	lis r0, 0xde00
/* 805DED84  80 DD 02 D0 */	lwz r6, 0x2d0(r29)
/* 805DED88  3C 80 80 AA */	lis r4, inv_item_shadow_mode@ha /* 0x80AA5938@ha */
/* 805DED8C  54 BB 07 FE */	clrlwi r27, r5, 0x1f
/* 805DED90  3C 60 80 65 */	lis r3, lit_474@ha /* 0x8064B2A4@ha */
/* 805DED94  90 06 00 00 */	stw r0, 0(r6)
/* 805DED98  38 04 59 38 */	addi r0, r4, inv_item_shadow_mode@l /* 0x80AA5938@l */
/* 805DED9C  38 83 B2 A4 */	addi r4, r3, lit_474@l /* 0x8064B2A4@l */
/* 805DEDA0  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B2C8@ha */
/* 805DEDA4  90 06 00 04 */	stw r0, 4(r6)
/* 805DEDA8  38 C6 00 08 */	addi r6, r6, 8
/* 805DEDAC  39 23 B2 C8 */	addi r9, r3, lit_543@l /* 0x8064B2C8@l */
/* 805DEDB0  C0 44 00 00 */	lfs f2, 0(r4)
/* 805DEDB4  90 DD 02 D0 */	stw r6, 0x2d0(r29)
/* 805DEDB8  7F A3 EB 78 */	mr r3, r29
/* 805DEDBC  C0 69 00 00 */	lfs f3, 0(r9)
/* 805DEDC0  7F 65 DB 78 */	mr r5, r27
/* 805DEDC4  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805DEDC8  38 C0 00 01 */	li r6, 1
/* 805DEDCC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805DEDD0  38 E0 00 00 */	li r7, 0
/* 805DEDD4  81 84 09 5C */	lwz r12, 0x95c(r4)
/* 805DEDD8  39 00 00 01 */	li r8, 1
/* 805DEDDC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805DEDE0  EC 22 08 2A */	fadds f1, f2, f1
/* 805DEDE4  A0 9F 02 34 */	lhz r4, 0x234(r31)
/* 805DEDE8  39 20 00 00 */	li r9, 0
/* 805DEDEC  EC 40 10 28 */	fsubs f2, f0, f2
/* 805DEDF0  7D 89 03 A6 */	mtctr r12
/* 805DEDF4  4E 80 04 21 */	bctrl 
/* 805DEDF8  80 FD 02 D0 */	lwz r7, 0x2d0(r29)
/* 805DEDFC  3C 80 80 AA */	lis r4, inv_item_mode@ha /* 0x80AA5910@ha */
/* 805DEE00  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B2C8@ha */
/* 805DEE04  3C A0 DE 00 */	lis r5, 0xde00
/* 805DEE08  7C E6 3B 78 */	mr r6, r7
/* 805DEE0C  38 04 59 10 */	addi r0, r4, inv_item_mode@l /* 0x80AA5910@l */
/* 805DEE10  90 A7 00 00 */	stw r5, 0(r7)
/* 805DEE14  38 83 B2 C8 */	addi r4, r3, lit_543@l /* 0x8064B2C8@l */
/* 805DEE18  38 E7 00 08 */	addi r7, r7, 8
/* 805DEE1C  7F A3 EB 78 */	mr r3, r29
/* 805DEE20  90 06 00 04 */	stw r0, 4(r6)
/* 805DEE24  7F 65 DB 78 */	mr r5, r27
/* 805DEE28  C0 64 00 00 */	lfs f3, 0(r4)
/* 805DEE2C  38 C0 00 01 */	li r6, 1
/* 805DEE30  90 FD 02 D0 */	stw r7, 0x2d0(r29)
/* 805DEE34  38 E0 00 00 */	li r7, 0
/* 805DEE38  39 00 00 00 */	li r8, 0
/* 805DEE3C  39 20 00 00 */	li r9, 0
/* 805DEE40  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805DEE44  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805DEE48  81 84 09 5C */	lwz r12, 0x95c(r4)
/* 805DEE4C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805DEE50  A0 9F 02 34 */	lhz r4, 0x234(r31)
/* 805DEE54  7D 89 03 A6 */	mtctr r12
/* 805DEE58  4E 80 04 21 */	bctrl 
lbl_805DEE5C:
/* 805DEE5C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DEE60  4B AB C0 B9 */	bl func_8009AF18
/* 805DEE64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DEE68  7C 08 03 A6 */	mtlr r0
/* 805DEE6C  38 21 00 20 */	addi r1, r1, 0x20
/* 805DEE70  4E 80 00 20 */	blr 
