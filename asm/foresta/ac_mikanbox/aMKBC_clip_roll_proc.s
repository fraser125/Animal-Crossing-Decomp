lbl_805B398C:
/* 805B398C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B3990  7C 08 02 A6 */	mflr r0
/* 805B3994  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B3998  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805B399C  7C 9F 23 78 */	mr r31, r4
/* 805B39A0  38 80 00 0A */	li r4, 0xa
/* 805B39A4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805B39A8  7C 7E 1B 78 */	mr r30, r3
/* 805B39AC  38 60 00 47 */	li r3, 0x47
/* 805B39B0  4B DE A4 1D */	bl mEv_get_save_area
/* 805B39B4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805B39B8  A8 9E 09 9C */	lha r4, 0x99c(r30)
/* 805B39BC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805B39C0  3C A5 00 02 */	addis r5, r5, 2
/* 805B39C4  38 04 00 01 */	addi r0, r4, 1
/* 805B39C8  80 A5 61 1C */	lwz r5, 0x611c(r5)
/* 805B39CC  B0 1E 09 9C */	sth r0, 0x99c(r30)
/* 805B39D0  88 1E 09 A9 */	lbz r0, 0x9a9(r30)
/* 805B39D4  28 00 00 00 */	cmplwi r0, 0
/* 805B39D8  41 82 00 0C */	beq lbl_805B39E4
/* 805B39DC  38 00 02 26 */	li r0, 0x226
/* 805B39E0  B0 03 00 00 */	sth r0, 0(r3)
lbl_805B39E4:
/* 805B39E4  A8 9E 09 9C */	lha r4, 0x99c(r30)
/* 805B39E8  2C 04 12 C0 */	cmpwi r4, 0x12c0
/* 805B39EC  41 80 00 30 */	blt lbl_805B3A1C
/* 805B39F0  88 1E 09 A9 */	lbz r0, 0x9a9(r30)
/* 805B39F4  28 00 00 00 */	cmplwi r0, 0
/* 805B39F8  41 82 00 18 */	beq lbl_805B3A10
/* 805B39FC  A0 83 00 02 */	lhz r4, 2(r3)
/* 805B3A00  38 00 00 00 */	li r0, 0
/* 805B3A04  60 84 20 00 */	ori r4, r4, 0x2000
/* 805B3A08  B0 83 00 02 */	sth r4, 2(r3)
/* 805B3A0C  98 1E 09 A9 */	stb r0, 0x9a9(r30)
lbl_805B3A10:
/* 805B3A10  38 00 00 78 */	li r0, 0x78
/* 805B3A14  B0 03 00 00 */	sth r0, 0(r3)
/* 805B3A18  48 00 00 B8 */	b lbl_805B3AD0
lbl_805B3A1C:
/* 805B3A1C  3C 60 00 01 */	lis r3, 0x0001 /* 0x000123CC@ha */
/* 805B3A20  38 03 23 CC */	addi r0, r3, 0x23CC /* 0x000123CC@l */
/* 805B3A24  7C 05 00 00 */	cmpw r5, r0
/* 805B3A28  41 80 00 A8 */	blt lbl_805B3AD0
/* 805B3A2C  38 03 26 24 */	addi r0, r3, 0x2624
/* 805B3A30  7C 05 00 00 */	cmpw r5, r0
/* 805B3A34  41 81 00 9C */	bgt lbl_805B3AD0
/* 805B3A38  88 1E 09 A9 */	lbz r0, 0x9a9(r30)
/* 805B3A3C  28 00 00 00 */	cmplwi r0, 0
/* 805B3A40  40 82 00 90 */	bne lbl_805B3AD0
/* 805B3A44  2C 04 0E 10 */	cmpwi r4, 0xe10
/* 805B3A48  41 80 00 88 */	blt lbl_805B3AD0
/* 805B3A4C  2C 04 0E 1A */	cmpwi r4, 0xe1a
/* 805B3A50  40 80 00 80 */	bge lbl_805B3AD0
/* 805B3A54  80 DE 00 28 */	lwz r6, 0x28(r30)
/* 805B3A58  38 61 00 14 */	addi r3, r1, 0x14
/* 805B3A5C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805B3A60  38 81 00 10 */	addi r4, r1, 0x10
/* 805B3A64  38 A1 00 18 */	addi r5, r1, 0x18
/* 805B3A68  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805B3A6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B3A70  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805B3A74  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B3A78  4B DF 1B 95 */	bl mFI_Wpos2UtNum_inBlock
/* 805B3A7C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 805B3A80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B3A84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B3A88  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D06B@ha */
/* 805B3A8C  90 01 00 08 */	stw r0, 8(r1)
/* 805B3A90  3C A3 00 02 */	addis r5, r3, 2
/* 805B3A94  7F E3 FB 78 */	mr r3, r31
/* 805B3A98  38 84 D0 6B */	addi r4, r4, 0xD06B /* 0x0000D06B@l */
/* 805B3A9C  81 45 60 4C */	lwz r10, 0x604c(r5)
/* 805B3AA0  38 A0 FF FF */	li r5, -1
/* 805B3AA4  89 1F 00 E4 */	lbz r8, 0xe4(r31)
/* 805B3AA8  38 C0 FF FF */	li r6, -1
/* 805B3AAC  89 3F 00 E5 */	lbz r9, 0xe5(r31)
/* 805B3AB0  38 E0 FF FF */	li r7, -1
/* 805B3AB4  81 8A 00 00 */	lwz r12, 0(r10)
/* 805B3AB8  7D 08 07 74 */	extsb r8, r8
/* 805B3ABC  7D 29 07 74 */	extsb r9, r9
/* 805B3AC0  81 41 00 14 */	lwz r10, 0x14(r1)
/* 805B3AC4  7D 89 03 A6 */	mtctr r12
/* 805B3AC8  4E 80 04 21 */	bctrl 
/* 805B3ACC  98 7E 09 A9 */	stb r3, 0x9a9(r30)
lbl_805B3AD0:
/* 805B3AD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B3AD4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805B3AD8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805B3ADC  7C 08 03 A6 */	mtlr r0
/* 805B3AE0  38 21 00 30 */	addi r1, r1, 0x30
/* 805B3AE4  4E 80 00 20 */	blr 
