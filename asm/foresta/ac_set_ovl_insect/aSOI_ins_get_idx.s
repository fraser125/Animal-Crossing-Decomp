lbl_8049BA54:
/* 8049BA54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8049BA58  7C 08 02 A6 */	mflr r0
/* 8049BA5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049BA60  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8049BA64  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8049BA68  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8049BA6C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8049BA70  39 61 00 20 */	addi r11, r1, 0x20
/* 8049BA74  4B BF F4 5D */	bl func_8009AED0
/* 8049BA78  7C 9F 23 79 */	or. r31, r4, r4
/* 8049BA7C  3C C0 80 64 */	lis r6, lit_873@ha /* 0x80644D30@ha */
/* 8049BA80  7C 7E 1B 78 */	mr r30, r3
/* 8049BA84  C3 E6 4D 30 */	lfs f31, lit_873@l(r6)  /* 0x80644D30@l */
/* 8049BA88  7F C4 F3 78 */	mr r4, r30
/* 8049BA8C  3B A0 FF FF */	li r29, -1
/* 8049BA90  7F E9 03 A6 */	mtctr r31
/* 8049BA94  40 81 00 14 */	ble lbl_8049BAA8
lbl_8049BA98:
/* 8049BA98  C0 04 00 08 */	lfs f0, 8(r4)
/* 8049BA9C  38 84 00 0C */	addi r4, r4, 0xc
/* 8049BAA0  EF FF 00 2A */	fadds f31, f31, f0
/* 8049BAA4  42 00 FF F4 */	bdnz lbl_8049BA98
lbl_8049BAA8:
/* 8049BAA8  3C 60 80 64 */	lis r3, lit_873@ha /* 0x80644D30@ha */
/* 8049BAAC  C0 03 4D 30 */	lfs f0, lit_873@l(r3)  /* 0x80644D30@l */
/* 8049BAB0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8049BAB4  40 81 00 D0 */	ble lbl_8049BB84
/* 8049BAB8  2C 05 00 00 */	cmpwi r5, 0
/* 8049BABC  40 82 00 78 */	bne lbl_8049BB34
/* 8049BAC0  4B F0 66 31 */	bl mFAs_GetFieldRank
/* 8049BAC4  3C 80 80 64 */	lis r4, lit_924@ha /* 0x80644D34@ha */
/* 8049BAC8  7C 7C 1B 78 */	mr r28, r3
/* 8049BACC  C0 04 4D 34 */	lfs f0, lit_924@l(r4)  /* 0x80644D34@l */
/* 8049BAD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8049BAD4  40 81 00 10 */	ble lbl_8049BAE4
/* 8049BAD8  4B BC 12 1D */	bl fqrand
/* 8049BADC  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8049BAE0  48 00 00 14 */	b lbl_8049BAF4
lbl_8049BAE4:
/* 8049BAE4  4B BC 12 11 */	bl fqrand
/* 8049BAE8  3C 60 80 64 */	lis r3, lit_924@ha /* 0x80644D34@ha */
/* 8049BAEC  C0 03 4D 34 */	lfs f0, lit_924@l(r3)  /* 0x80644D34@l */
/* 8049BAF0  EC 00 00 72 */	fmuls f0, f0, f1
lbl_8049BAF4:
/* 8049BAF4  FC 40 00 90 */	fmr f2, f0
/* 8049BAF8  2C 1C 00 00 */	cmpwi r28, 0
/* 8049BAFC  41 80 00 0C */	blt lbl_8049BB08
/* 8049BB00  2C 1C 00 06 */	cmpwi r28, 6
/* 8049BB04  40 81 00 1C */	ble lbl_8049BB20
lbl_8049BB08:
/* 8049BB08  2C 1C 00 00 */	cmpwi r28, 0
/* 8049BB0C  40 80 00 08 */	bge lbl_8049BB14
/* 8049BB10  3B 80 00 00 */	li r28, 0
lbl_8049BB14:
/* 8049BB14  2C 1C 00 06 */	cmpwi r28, 6
/* 8049BB18  40 81 00 08 */	ble lbl_8049BB20
/* 8049BB1C  3B 80 00 06 */	li r28, 6
lbl_8049BB20:
/* 8049BB20  3C 60 80 69 */	lis r3, env_rate_table@ha /* 0x8068E1FC@ha */
/* 8049BB24  57 80 10 3A */	slwi r0, r28, 2
/* 8049BB28  38 63 E1 FC */	addi r3, r3, env_rate_table@l /* 0x8068E1FC@l */
/* 8049BB2C  7F C3 04 2E */	lfsx f30, r3, r0
/* 8049BB30  48 00 00 14 */	b lbl_8049BB44
lbl_8049BB34:
/* 8049BB34  3C 60 80 64 */	lis r3, lit_555@ha /* 0x80644D20@ha */
/* 8049BB38  C3 C3 4D 20 */	lfs f30, lit_555@l(r3)  /* 0x80644D20@l */
/* 8049BB3C  4B BC 11 B9 */	bl fqrand
/* 8049BB40  EC 5F 00 72 */	fmuls f2, f31, f1
lbl_8049BB44:
/* 8049BB44  3C 60 80 64 */	lis r3, lit_873@ha /* 0x80644D30@ha */
/* 8049BB48  38 80 00 00 */	li r4, 0
/* 8049BB4C  C0 03 4D 30 */	lfs f0, lit_873@l(r3)  /* 0x80644D30@l */
/* 8049BB50  7F E9 03 A6 */	mtctr r31
/* 8049BB54  2C 1F 00 00 */	cmpwi r31, 0
/* 8049BB58  40 81 00 2C */	ble lbl_8049BB84
lbl_8049BB5C:
/* 8049BB5C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8049BB60  EC 21 07 B2 */	fmuls f1, f1, f30
/* 8049BB64  EC 42 08 28 */	fsubs f2, f2, f1
/* 8049BB68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8049BB6C  40 80 00 0C */	bge lbl_8049BB78
/* 8049BB70  7C 9D 23 78 */	mr r29, r4
/* 8049BB74  48 00 00 10 */	b lbl_8049BB84
lbl_8049BB78:
/* 8049BB78  3B DE 00 0C */	addi r30, r30, 0xc
/* 8049BB7C  38 84 00 01 */	addi r4, r4, 1
/* 8049BB80  42 00 FF DC */	bdnz lbl_8049BB5C
lbl_8049BB84:
/* 8049BB84  7F A3 EB 78 */	mr r3, r29
/* 8049BB88  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8049BB8C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8049BB90  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8049BB94  39 61 00 20 */	addi r11, r1, 0x20
/* 8049BB98  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8049BB9C  4B BF F3 81 */	bl func_8009AF1C
/* 8049BBA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049BBA4  7C 08 03 A6 */	mtlr r0
/* 8049BBA8  38 21 00 40 */	addi r1, r1, 0x40
/* 8049BBAC  4E 80 00 20 */	blr 
