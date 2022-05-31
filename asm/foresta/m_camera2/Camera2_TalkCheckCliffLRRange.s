lbl_8037F99C:
/* 8037F99C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8037F9A0  7C 08 02 A6 */	mflr r0
/* 8037F9A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8037F9A8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8037F9AC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8037F9B0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8037F9B4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8037F9B8  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8037F9BC  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 8037F9C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8037F9C4  4B D1 B5 0D */	bl func_8009AED0
/* 8037F9C8  3C E0 80 64 */	lis r7, lit_1085@ha /* 0x806414CC@ha */
/* 8037F9CC  3C 60 80 64 */	lis r3, lit_1086@ha /* 0x806414D0@ha */
/* 8037F9D0  C0 47 14 CC */	lfs f2, lit_1085@l(r7)  /* 0x806414CC@l */
/* 8037F9D4  7C DC 33 78 */	mr r28, r6
/* 8037F9D8  C0 03 14 D0 */	lfs f0, lit_1086@l(r3)  /* 0x806414D0@l */
/* 8037F9DC  7C 9E 23 78 */	mr r30, r4
/* 8037F9E0  EF C2 08 2A */	fadds f30, f2, f1
/* 8037F9E4  3B E5 00 01 */	addi r31, r5, 1
/* 8037F9E8  EF A0 08 2A */	fadds f29, f0, f1
/* 8037F9EC  48 00 00 54 */	b lbl_8037FA40
lbl_8037F9F0:
/* 8037F9F0  7F C3 F3 78 */	mr r3, r30
/* 8037F9F4  7F 84 E3 78 */	mr r4, r28
/* 8037F9F8  48 01 06 AD */	bl mCoBG_UtNum2BgAttr
/* 8037F9FC  7C 60 1B 78 */	mr r0, r3
/* 8037FA00  7F C3 F3 78 */	mr r3, r30
/* 8037FA04  7C 1D 03 78 */	mr r29, r0
/* 8037FA08  7F 84 E3 78 */	mr r4, r28
/* 8037FA0C  48 01 06 D1 */	bl mCoBG_UtNum2UtCenterY
/* 8037FA10  FF E0 08 90 */	fmr f31, f1
/* 8037FA14  7F A3 EB 78 */	mr r3, r29
/* 8037FA18  48 01 1C 4D */	bl mCoBG_CheckCliffAttr
/* 8037FA1C  2C 03 00 00 */	cmpwi r3, 0
/* 8037FA20  41 82 00 0C */	beq lbl_8037FA2C
/* 8037FA24  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8037FA28  41 81 00 0C */	bgt lbl_8037FA34
lbl_8037FA2C:
/* 8037FA2C  FC 1F E8 40 */	fcmpo cr0, f31, f29
/* 8037FA30  40 81 00 0C */	ble lbl_8037FA3C
lbl_8037FA34:
/* 8037FA34  38 60 00 01 */	li r3, 1
/* 8037FA38  48 00 00 14 */	b lbl_8037FA4C
lbl_8037FA3C:
/* 8037FA3C  3B DE 00 01 */	addi r30, r30, 1
lbl_8037FA40:
/* 8037FA40  7C 1E F8 00 */	cmpw r30, r31
/* 8037FA44  41 80 FF AC */	blt lbl_8037F9F0
/* 8037FA48  38 60 00 00 */	li r3, 0
lbl_8037FA4C:
/* 8037FA4C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8037FA50  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8037FA54  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8037FA58  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8037FA5C  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8037FA60  39 61 00 20 */	addi r11, r1, 0x20
/* 8037FA64  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8037FA68  4B D1 B4 B5 */	bl func_8009AF1C
/* 8037FA6C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8037FA70  7C 08 03 A6 */	mtlr r0
/* 8037FA74  38 21 00 50 */	addi r1, r1, 0x50
/* 8037FA78  4E 80 00 20 */	blr 
