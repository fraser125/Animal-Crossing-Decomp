lbl_80557AA8:
/* 80557AA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80557AAC  7C 08 02 A6 */	mflr r0
/* 80557AB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80557AB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80557AB8  4B B4 34 19 */	bl func_8009AED0
/* 80557ABC  3C A0 80 55 */	lis r5, aMJN2_act_proc@ha /* 0x80557784@ha */
/* 80557AC0  3C C0 80 6A */	lis r6, data_806A6828@ha /* 0x806A6828@ha */
/* 80557AC4  38 05 77 84 */	addi r0, r5, aMJN2_act_proc@l /* 0x80557784@l */
/* 80557AC8  7C 7E 1B 78 */	mr r30, r3
/* 80557ACC  90 03 08 04 */	stw r0, 0x804(r3)
/* 80557AD0  7C 9D 23 78 */	mr r29, r4
/* 80557AD4  3B E6 68 28 */	addi r31, r6, data_806A6828@l /* 0x806A6828@l */
/* 80557AD8  4B FF FC 85 */	bl func_8055775C
/* 80557ADC  38 00 00 FE */	li r0, 0xfe
/* 80557AE0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80557AE4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80557AE8  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 80557AEC  3C 64 00 03 */	addis r3, r4, 3
/* 80557AF0  38 00 00 00 */	li r0, 0
/* 80557AF4  98 03 88 69 */	stb r0, -0x7797(r3)
/* 80557AF8  88 1D 00 E5 */	lbz r0, 0xe5(r29)
/* 80557AFC  2C 00 00 01 */	cmpwi r0, 1
/* 80557B00  40 82 00 0C */	bne lbl_80557B0C
/* 80557B04  38 60 00 04 */	li r3, 4
/* 80557B08  48 00 00 10 */	b lbl_80557B18
lbl_80557B0C:
/* 80557B0C  3C 64 00 02 */	addis r3, r4, 2
/* 80557B10  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80557B14  4B E5 BA A5 */	bl mHS_get_arrange_idx
lbl_80557B18:
/* 80557B18  54 7C 10 3A */	slwi r28, r3, 2
/* 80557B1C  38 9F 00 9C */	addi r4, r31, 0x9c
/* 80557B20  7C 04 E4 2E */	lfsx f0, r4, r28
/* 80557B24  54 60 08 3C */	slwi r0, r3, 1
/* 80557B28  3C 80 80 65 */	lis r4, lit_645@ha /* 0x8064965C@ha */
/* 80557B2C  38 DF 00 B0 */	addi r6, r31, 0xb0
/* 80557B30  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80557B34  38 BF 00 C4 */	addi r5, r31, 0xc4
/* 80557B38  C0 24 96 5C */	lfs f1, lit_645@l(r4)  /* 0x8064965C@l */
/* 80557B3C  38 61 00 08 */	addi r3, r1, 8
/* 80557B40  7C 06 E4 2E */	lfsx f0, r6, r28
/* 80557B44  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80557B48  7C 05 02 AE */	lhax r0, r5, r0
/* 80557B4C  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 80557B50  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80557B54  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80557B58  90 81 00 08 */	stw r4, 8(r1)
/* 80557B5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80557B60  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80557B64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80557B68  4B E3 7C B9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 80557B6C  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 80557B70  38 BF 00 D0 */	addi r5, r31, 0xd0
/* 80557B74  7F C3 F3 78 */	mr r3, r30
/* 80557B78  7F A4 EB 78 */	mr r4, r29
/* 80557B7C  7C A5 E0 2E */	lwzx r5, r5, r28
/* 80557B80  48 00 00 E1 */	bl aMJN2_setup_think_proc
/* 80557B84  39 61 00 30 */	addi r11, r1, 0x30
/* 80557B88  4B B4 33 95 */	bl func_8009AF1C
/* 80557B8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80557B90  7C 08 03 A6 */	mtlr r0
/* 80557B94  38 21 00 30 */	addi r1, r1, 0x30
/* 80557B98  4E 80 00 20 */	blr 
