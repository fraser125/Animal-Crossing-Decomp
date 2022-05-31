lbl_805B0434:
/* 805B0434  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B0438  7C 08 02 A6 */	mflr r0
/* 805B043C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B0440  39 61 00 20 */	addi r11, r1, 0x20
/* 805B0444  4B AE AA 8D */	bl func_8009AED0
/* 805B0448  7C 7C 1B 78 */	mr r28, r3
/* 805B044C  83 C3 02 BC */	lwz r30, 0x2bc(r3)
/* 805B0450  7F C3 F3 78 */	mr r3, r30
/* 805B0454  4B E2 70 35 */	bl func_803D7488
/* 805B0458  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B045C  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B0460  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805B0464  3C 63 00 02 */	addis r3, r3, 2
/* 805B0468  83 A3 61 1C */	lwz r29, 0x611c(r3)
/* 805B046C  40 82 00 10 */	bne lbl_805B047C
/* 805B0470  3C 60 80 65 */	lis r3, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805B0474  C0 23 A7 8C */	lfs f1, data_8064A78C@l(r3)  /* 0x8064A78C@l */
/* 805B0478  48 00 00 94 */	b lbl_805B050C
lbl_805B047C:
/* 805B047C  80 1C 02 C0 */	lwz r0, 0x2c0(r28)
/* 805B0480  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805B0484  7C 63 02 14 */	add r3, r3, r0
/* 805B0488  A0 63 61 64 */	lhz r3, 0x6164(r3)
/* 805B048C  4B DE FB 55 */	bl mEvNM_CheckJointEvent
/* 805B0490  2C 03 00 00 */	cmpwi r3, 0
/* 805B0494  41 82 00 1C */	beq lbl_805B04B0
/* 805B0498  4B DE A7 11 */	bl mEv_CheckArbeit
/* 805B049C  2C 03 00 00 */	cmpwi r3, 0
/* 805B04A0  40 82 00 10 */	bne lbl_805B04B0
/* 805B04A4  3C 60 80 65 */	lis r3, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805B04A8  C0 23 A7 8C */	lfs f1, data_8064A78C@l(r3)  /* 0x8064A78C@l */
/* 805B04AC  48 00 00 60 */	b lbl_805B050C
lbl_805B04B0:
/* 805B04B0  88 1F 00 08 */	lbz r0, 8(r31)
/* 805B04B4  28 00 00 01 */	cmplwi r0, 1
/* 805B04B8  40 82 00 4C */	bne lbl_805B0504
/* 805B04BC  88 1E 08 E8 */	lbz r0, 0x8e8(r30)
/* 805B04C0  28 00 00 01 */	cmplwi r0, 1
/* 805B04C4  40 82 00 40 */	bne lbl_805B0504
/* 805B04C8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 805B04CC  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 805B04D0  7C 1D 00 00 */	cmpw r29, r0
/* 805B04D4  40 80 00 0C */	bge lbl_805B04E0
/* 805B04D8  2C 1D 46 50 */	cmpwi r29, 0x4650
/* 805B04DC  41 81 00 28 */	bgt lbl_805B0504
lbl_805B04E0:
/* 805B04E0  80 1C 02 B0 */	lwz r0, 0x2b0(r28)
/* 805B04E4  2C 00 00 02 */	cmpwi r0, 2
/* 805B04E8  40 82 00 10 */	bne lbl_805B04F8
/* 805B04EC  3C 60 80 65 */	lis r3, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805B04F0  C0 23 A7 8C */	lfs f1, data_8064A78C@l(r3)  /* 0x8064A78C@l */
/* 805B04F4  48 00 00 18 */	b lbl_805B050C
lbl_805B04F8:
/* 805B04F8  3C 60 80 65 */	lis r3, lit_555@ha /* 0x8064A794@ha */
/* 805B04FC  C0 23 A7 94 */	lfs f1, lit_555@l(r3)  /* 0x8064A794@l */
/* 805B0500  48 00 00 0C */	b lbl_805B050C
lbl_805B0504:
/* 805B0504  3C 60 80 65 */	lis r3, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805B0508  C0 23 A7 8C */	lfs f1, data_8064A78C@l(r3)  /* 0x8064A78C@l */
lbl_805B050C:
/* 805B050C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B0510  4B AE AA 0D */	bl func_8009AF1C
/* 805B0514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B0518  7C 08 03 A6 */	mtlr r0
/* 805B051C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B0520  4E 80 00 20 */	blr 
