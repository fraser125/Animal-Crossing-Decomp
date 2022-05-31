lbl_805A5A58:
/* 805A5A58  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805A5A5C  7C 08 02 A6 */	mflr r0
/* 805A5A60  90 01 00 54 */	stw r0, 0x54(r1)
/* 805A5A64  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805A5A68  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805A5A6C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805A5A70  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805A5A74  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 805A5A78  7C 7E 1B 78 */	mr r30, r3
/* 805A5A7C  3B E0 00 00 */	li r31, 0
/* 805A5A80  54 00 DE FF */	rlwinm. r0, r0, 0x1b, 0x1b, 0x1f
/* 805A5A84  41 82 00 58 */	beq lbl_805A5ADC
/* 805A5A88  88 1E 00 99 */	lbz r0, 0x99(r30)
/* 805A5A8C  54 00 F7 7F */	rlwinm. r0, r0, 0x1e, 0x1d, 0x1f
/* 805A5A90  41 82 00 4C */	beq lbl_805A5ADC
/* 805A5A94  38 60 00 00 */	li r3, 0
/* 805A5A98  7C 09 03 A6 */	mtctr r0
/* 805A5A9C  40 81 00 40 */	ble lbl_805A5ADC
lbl_805A5AA0:
/* 805A5AA0  38 03 00 AA */	addi r0, r3, 0xaa
/* 805A5AA4  7C 1E 02 AE */	lhax r0, r30, r0
/* 805A5AA8  2C 00 00 00 */	cmpwi r0, 0
/* 805A5AAC  40 82 00 28 */	bne lbl_805A5AD4
/* 805A5AB0  7C 9E 1A 14 */	add r4, r30, r3
/* 805A5AB4  7F C3 F3 78 */	mr r3, r30
/* 805A5AB8  A8 84 00 A8 */	lha r4, 0xa8(r4)
/* 805A5ABC  4B FF F4 51 */	bl aGKK_set_angle
/* 805A5AC0  A0 1E 02 40 */	lhz r0, 0x240(r30)
/* 805A5AC4  3B E0 00 01 */	li r31, 1
/* 805A5AC8  60 00 00 40 */	ori r0, r0, 0x40
/* 805A5ACC  B0 1E 02 40 */	sth r0, 0x240(r30)
/* 805A5AD0  48 00 00 0C */	b lbl_805A5ADC
lbl_805A5AD4:
/* 805A5AD4  38 63 00 04 */	addi r3, r3, 4
/* 805A5AD8  42 00 FF C8 */	bdnz lbl_805A5AA0
lbl_805A5ADC:
/* 805A5ADC  2C 1F 00 00 */	cmpwi r31, 0
/* 805A5AE0  40 82 01 4C */	bne lbl_805A5C2C
/* 805A5AE4  80 DE 00 28 */	lwz r6, 0x28(r30)
/* 805A5AE8  3C 60 80 65 */	lis r3, lit_603@ha /* 0x8064A46C@ha */
/* 805A5AEC  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805A5AF0  38 80 00 00 */	li r4, 0
/* 805A5AF4  C0 03 A4 6C */	lfs f0, lit_603@l(r3)  /* 0x8064A46C@l */
/* 805A5AF8  38 61 00 20 */	addi r3, r1, 0x20
/* 805A5AFC  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 805A5B00  90 A1 00 30 */	stw r5, 0x30(r1)
/* 805A5B04  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A5B08  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A5B0C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 805A5B10  90 C1 00 20 */	stw r6, 0x20(r1)
/* 805A5B14  EC 01 00 28 */	fsubs f0, f1, f0
/* 805A5B18  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805A5B1C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805A5B20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A5B24  90 01 00 28 */	stw r0, 0x28(r1)
/* 805A5B28  4B DE 35 85 */	bl mCoBG_Wpos2Attribute
/* 805A5B2C  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 805A5B30  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A44C@ha */
/* 805A5B34  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 805A5B38  38 A3 A4 4C */	addi r5, r3, lit_466@l /* 0x8064A44C@l */
/* 805A5B3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A5B40  38 81 00 14 */	addi r4, r1, 0x14
/* 805A5B44  90 E1 00 14 */	stw r7, 0x14(r1)
/* 805A5B48  38 60 00 00 */	li r3, 0
/* 805A5B4C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805A5B50  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805A5B54  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A5B58  4B DE 9B 61 */	bl func_8038F6B8
/* 805A5B5C  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805A5B60  3C 60 80 6C */	lis r3, lit_500@ha /* 0x806C4238@ha */
/* 805A5B64  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 805A5B68  FF E0 08 90 */	fmr f31, f1
/* 805A5B6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A5B70  38 83 42 38 */	addi r4, r3, lit_500@l /* 0x806C4238@l */
/* 805A5B74  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805A5B78  38 61 00 08 */	addi r3, r1, 8
/* 805A5B7C  38 A0 03 66 */	li r5, 0x366
/* 805A5B80  90 C1 00 08 */	stw r6, 8(r1)
/* 805A5B84  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A5B88  4B DE E4 31 */	bl mCoBG_GetWaterHeight_File
/* 805A5B8C  EF E1 F8 28 */	fsubs f31, f1, f31
/* 805A5B90  38 61 00 2C */	addi r3, r1, 0x2c
/* 805A5B94  4B DE A9 15 */	bl mCoBG_CheckSandUt_ForFish
/* 805A5B98  2C 03 00 01 */	cmpwi r3, 1
/* 805A5B9C  41 82 00 14 */	beq lbl_805A5BB0
/* 805A5BA0  3C 60 80 65 */	lis r3, lit_682@ha /* 0x8064A478@ha */
/* 805A5BA4  C0 03 A4 78 */	lfs f0, lit_682@l(r3)  /* 0x8064A478@l */
/* 805A5BA8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A5BAC  40 80 00 3C */	bge lbl_805A5BE8
lbl_805A5BB0:
/* 805A5BB0  80 BE 00 3C */	lwz r5, 0x3c(r30)
/* 805A5BB4  7F C3 F3 78 */	mr r3, r30
/* 805A5BB8  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 805A5BBC  38 80 00 00 */	li r4, 0
/* 805A5BC0  90 BE 00 28 */	stw r5, 0x28(r30)
/* 805A5BC4  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 805A5BC8  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 805A5BCC  90 1E 00 30 */	stw r0, 0x30(r30)
/* 805A5BD0  4B FF F3 3D */	bl aGKK_set_angle
/* 805A5BD4  A0 1E 02 40 */	lhz r0, 0x240(r30)
/* 805A5BD8  3B E0 00 01 */	li r31, 1
/* 805A5BDC  60 00 00 40 */	ori r0, r0, 0x40
/* 805A5BE0  B0 1E 02 40 */	sth r0, 0x240(r30)
/* 805A5BE4  48 00 00 48 */	b lbl_805A5C2C
lbl_805A5BE8:
/* 805A5BE8  7F C3 F3 78 */	mr r3, r30
/* 805A5BEC  4B FF FD 71 */	bl aGKK_check_offing
/* 805A5BF0  2C 03 00 00 */	cmpwi r3, 0
/* 805A5BF4  40 82 00 38 */	bne lbl_805A5C2C
/* 805A5BF8  80 BE 00 3C */	lwz r5, 0x3c(r30)
/* 805A5BFC  7F C3 F3 78 */	mr r3, r30
/* 805A5C00  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 805A5C04  38 80 80 00 */	li r4, -32768
/* 805A5C08  90 BE 00 28 */	stw r5, 0x28(r30)
/* 805A5C0C  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 805A5C10  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 805A5C14  90 1E 00 30 */	stw r0, 0x30(r30)
/* 805A5C18  4B FF F2 F5 */	bl aGKK_set_angle
/* 805A5C1C  A0 1E 02 40 */	lhz r0, 0x240(r30)
/* 805A5C20  3B E0 00 01 */	li r31, 1
/* 805A5C24  60 00 00 40 */	ori r0, r0, 0x40
/* 805A5C28  B0 1E 02 40 */	sth r0, 0x240(r30)
lbl_805A5C2C:
/* 805A5C2C  7F E3 FB 78 */	mr r3, r31
/* 805A5C30  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805A5C34  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805A5C38  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805A5C3C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805A5C40  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805A5C44  7C 08 03 A6 */	mtlr r0
/* 805A5C48  38 21 00 50 */	addi r1, r1, 0x50
/* 805A5C4C  4E 80 00 20 */	blr 
