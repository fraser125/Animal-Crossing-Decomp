lbl_805DEF8C:
/* 805DEF8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DEF90  7C 08 02 A6 */	mflr r0
/* 805DEF94  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DEF98  39 61 00 20 */	addi r11, r1, 0x20
/* 805DEF9C  4B AB BF 35 */	bl func_8009AED0
/* 805DEFA0  7C 7D 1B 78 */	mr r29, r3
/* 805DEFA4  7C 9E 23 78 */	mr r30, r4
/* 805DEFA8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DEFAC  7C BF 2B 78 */	mr r31, r5
/* 805DEFB0  83 83 09 80 */	lwz r28, 0x980(r3)
/* 805DEFB4  A0 1C 02 34 */	lhz r0, 0x234(r28)
/* 805DEFB8  28 00 FE 31 */	cmplwi r0, 0xfe31
/* 805DEFBC  41 80 00 0C */	blt lbl_805DEFC8
/* 805DEFC0  28 00 FE 38 */	cmplwi r0, 0xfe38
/* 805DEFC4  40 81 00 24 */	ble lbl_805DEFE8
lbl_805DEFC8:
/* 805DEFC8  28 00 FE 39 */	cmplwi r0, 0xfe39
/* 805DEFCC  41 80 00 0C */	blt lbl_805DEFD8
/* 805DEFD0  28 00 FE 98 */	cmplwi r0, 0xfe98
/* 805DEFD4  40 81 00 14 */	ble lbl_805DEFE8
lbl_805DEFD8:
/* 805DEFD8  28 00 FE 99 */	cmplwi r0, 0xfe99
/* 805DEFDC  41 80 00 AC */	blt lbl_805DF088
/* 805DEFE0  28 00 FE A0 */	cmplwi r0, 0xfea0
/* 805DEFE4  41 81 00 A4 */	bgt lbl_805DF088
lbl_805DEFE8:
/* 805DEFE8  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805DEFEC  3C 00 DE 00 */	lis r0, 0xde00
/* 805DEFF0  3C 80 80 65 */	lis r4, lit_474@ha /* 0x8064B2A4@ha */
/* 805DEFF4  3C A0 80 AA */	lis r5, inv_item_shadow_mode@ha /* 0x80AA5938@ha */
/* 805DEFF8  90 06 00 00 */	stw r0, 0(r6)
/* 805DEFFC  38 05 59 38 */	addi r0, r5, inv_item_shadow_mode@l /* 0x80AA5938@l */
/* 805DF000  C0 44 B2 A4 */	lfs f2, lit_474@l(r4)  /* 0x8064B2A4@l */
/* 805DF004  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B2C8@ha */
/* 805DF008  90 06 00 04 */	stw r0, 4(r6)
/* 805DF00C  38 A3 B2 C8 */	addi r5, r3, lit_543@l /* 0x8064B2C8@l */
/* 805DF010  38 C6 00 08 */	addi r6, r6, 8
/* 805DF014  C0 65 00 00 */	lfs f3, 0(r5)
/* 805DF018  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 805DF01C  7F A3 EB 78 */	mr r3, r29
/* 805DF020  7F C4 F3 78 */	mr r4, r30
/* 805DF024  38 C0 00 01 */	li r6, 1
/* 805DF028  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805DF02C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805DF030  EC 22 08 2A */	fadds f1, f2, f1
/* 805DF034  A0 BC 02 34 */	lhz r5, 0x234(r28)
/* 805DF038  EC 40 10 28 */	fsubs f2, f0, f2
/* 805DF03C  48 00 FA DD */	bl mSM_draw_original
/* 805DF040  80 FE 02 D0 */	lwz r7, 0x2d0(r30)
/* 805DF044  3C A0 DE 00 */	lis r5, 0xde00
/* 805DF048  3C 80 80 AA */	lis r4, inv_item_mode@ha /* 0x80AA5910@ha */
/* 805DF04C  3C 60 80 65 */	lis r3, lit_543@ha /* 0x8064B2C8@ha */
/* 805DF050  90 A7 00 00 */	stw r5, 0(r7)
/* 805DF054  7C E6 3B 78 */	mr r6, r7
/* 805DF058  38 04 59 10 */	addi r0, r4, inv_item_mode@l /* 0x80AA5910@l */
/* 805DF05C  C0 63 B2 C8 */	lfs f3, lit_543@l(r3)  /* 0x8064B2C8@l */
/* 805DF060  90 06 00 04 */	stw r0, 4(r6)
/* 805DF064  38 E7 00 08 */	addi r7, r7, 8
/* 805DF068  7F A3 EB 78 */	mr r3, r29
/* 805DF06C  7F C4 F3 78 */	mr r4, r30
/* 805DF070  90 FE 02 D0 */	stw r7, 0x2d0(r30)
/* 805DF074  38 C0 00 00 */	li r6, 0
/* 805DF078  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805DF07C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805DF080  A0 BC 02 34 */	lhz r5, 0x234(r28)
/* 805DF084  48 00 FA 95 */	bl mSM_draw_original
lbl_805DF088:
/* 805DF088  39 61 00 20 */	addi r11, r1, 0x20
/* 805DF08C  4B AB BE 91 */	bl func_8009AF1C
/* 805DF090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DF094  7C 08 03 A6 */	mtlr r0
/* 805DF098  38 21 00 20 */	addi r1, r1, 0x20
/* 805DF09C  4E 80 00 20 */	blr 
