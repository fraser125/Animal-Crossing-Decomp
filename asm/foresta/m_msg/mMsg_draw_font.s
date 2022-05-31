lbl_803C5EB0:
/* 803C5EB0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 803C5EB4  7C 08 02 A6 */	mflr r0
/* 803C5EB8  90 01 01 14 */	stw r0, 0x114(r1)
/* 803C5EBC  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 803C5EC0  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 803C5EC4  39 61 01 00 */	addi r11, r1, 0x100
/* 803C5EC8  4B CD 4F E1 */	bl func_8009AEA8
/* 803C5ECC  7C 74 1B 78 */	mr r20, r3
/* 803C5ED0  7C 95 23 78 */	mr r21, r4
/* 803C5ED4  C0 14 04 28 */	lfs f0, 0x428(r20)
/* 803C5ED8  3C 60 80 64 */	lis r3, lit_2605@ha /* 0x80642840@ha */
/* 803C5EDC  80 B4 04 20 */	lwz r5, 0x420(r20)
/* 803C5EE0  3A E0 00 00 */	li r23, 0
/* 803C5EE4  FC 00 02 10 */	fabs f0, f0
/* 803C5EE8  80 D4 04 1C */	lwz r6, 0x41c(r20)
/* 803C5EEC  80 14 03 F0 */	lwz r0, 0x3f0(r20)
/* 803C5EF0  3B E5 00 20 */	addi r31, r5, 0x20
/* 803C5EF4  80 94 00 0C */	lwz r4, 0xc(r20)
/* 803C5EF8  3B C6 00 20 */	addi r30, r6, 0x20
/* 803C5EFC  FC 20 00 18 */	frsp f1, f0
/* 803C5F00  C0 03 28 40 */	lfs f0, lit_2605@l(r3)  /* 0x80642840@l */
/* 803C5F04  7F E4 FA 14 */	add r31, r4, r31
/* 803C5F08  7F C4 F2 14 */	add r30, r4, r30
/* 803C5F0C  7F 06 00 50 */	subf r24, r6, r0
/* 803C5F10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C5F14  41 80 02 0C */	blt lbl_803C6120
/* 803C5F18  82 D5 00 00 */	lwz r22, 0(r21)
/* 803C5F1C  3C 60 80 64 */	lis r3, lit_946@ha /* 0x8064262C@ha */
/* 803C5F20  38 83 26 2C */	addi r4, r3, lit_946@l /* 0x8064262C@l */
/* 803C5F24  80 16 02 F0 */	lwz r0, 0x2f0(r22)
/* 803C5F28  3C 60 80 64 */	lis r3, lit_2606@ha /* 0x80642844@ha */
/* 803C5F2C  C0 24 00 00 */	lfs f1, 0(r4)
/* 803C5F30  90 01 00 20 */	stw r0, 0x20(r1)
/* 803C5F34  C0 03 28 44 */	lfs f0, lit_2606@l(r3)  /* 0x80642844@l */
/* 803C5F38  C0 54 04 28 */	lfs f2, 0x428(r20)
/* 803C5F3C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 803C5F40  EC 21 00 B2 */	fmuls f1, f1, f2
/* 803C5F44  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803C5F48  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 803C5F4C  C0 54 00 10 */	lfs f2, 0x10(r20)
/* 803C5F50  EC 22 08 28 */	fsubs f1, f2, f1
/* 803C5F54  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 803C5F58  C0 34 00 14 */	lfs f1, 0x14(r20)
/* 803C5F5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 803C5F60  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 803C5F64  80 74 04 0C */	lwz r3, 0x40c(r20)
/* 803C5F68  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 803C5F6C  41 82 00 40 */	beq lbl_803C5FAC
/* 803C5F70  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 803C5F74  41 82 00 0C */	beq lbl_803C5F80
/* 803C5F78  3A E0 00 01 */	li r23, 1
/* 803C5F7C  48 00 00 30 */	b lbl_803C5FAC
lbl_803C5F80:
/* 803C5F80  C0 14 04 14 */	lfs f0, 0x414(r20)
/* 803C5F84  3C 60 80 64 */	lis r3, lit_2607@ha /* 0x80642848@ha */
/* 803C5F88  FC 20 02 10 */	fabs f1, f0
/* 803C5F8C  C0 03 28 48 */	lfs f0, lit_2607@l(r3)  /* 0x80642848@l */
/* 803C5F90  FC 20 08 18 */	frsp f1, f1
/* 803C5F94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803C5F98  40 80 00 10 */	bge lbl_803C5FA8
/* 803C5F9C  88 14 03 F8 */	lbz r0, 0x3f8(r20)
/* 803C5FA0  28 00 00 01 */	cmplwi r0, 1
/* 803C5FA4  40 82 00 08 */	bne lbl_803C5FAC
lbl_803C5FA8:
/* 803C5FA8  3A E0 00 01 */	li r23, 1
lbl_803C5FAC:
/* 803C5FAC  3C 60 80 64 */	lis r3, lit_2457@ha /* 0x80642830@ha */
/* 803C5FB0  3B A0 00 00 */	li r29, 0
/* 803C5FB4  C3 E3 28 30 */	lfs f31, lit_2457@l(r3)  /* 0x80642830@l */
/* 803C5FB8  3A 60 00 00 */	li r19, 0
/* 803C5FBC  3B 20 00 00 */	li r25, 0
/* 803C5FC0  3B 40 00 00 */	li r26, 0
/* 803C5FC4  48 00 01 40 */	b lbl_803C6104
lbl_803C5FC8:
/* 803C5FC8  7F DC F3 78 */	mr r28, r30
/* 803C5FCC  3B 60 00 00 */	li r27, 0
/* 803C5FD0  3A 40 00 00 */	li r18, 0
/* 803C5FD4  48 00 00 4C */	b lbl_803C6020
lbl_803C5FD8:
/* 803C5FD8  88 1C 00 00 */	lbz r0, 0(r28)
/* 803C5FDC  28 00 00 CD */	cmplwi r0, 0xcd
/* 803C5FE0  40 82 00 0C */	bne lbl_803C5FEC
/* 803C5FE4  3A 40 00 01 */	li r18, 1
/* 803C5FE8  48 00 00 28 */	b lbl_803C6010
lbl_803C5FEC:
/* 803C5FEC  28 00 00 7F */	cmplwi r0, 0x7f
/* 803C5FF0  40 82 00 20 */	bne lbl_803C6010
/* 803C5FF4  88 1C 00 01 */	lbz r0, 1(r28)
/* 803C5FF8  28 00 00 01 */	cmplwi r0, 1
/* 803C5FFC  40 81 00 0C */	ble lbl_803C6008
/* 803C6000  28 00 00 58 */	cmplwi r0, 0x58
/* 803C6004  40 82 00 0C */	bne lbl_803C6010
lbl_803C6008:
/* 803C6008  3A 40 00 01 */	li r18, 1
/* 803C600C  3B 20 00 01 */	li r25, 1
lbl_803C6010:
/* 803C6010  7F 83 E3 78 */	mr r3, r28
/* 803C6014  4B FE 97 9D */	bl mFont_CodeSize_get
/* 803C6018  7F 9C 1A 14 */	add r28, r28, r3
/* 803C601C  7F 7B 1A 14 */	add r27, r27, r3
lbl_803C6020:
/* 803C6020  7C 1C F8 40 */	cmplw r28, r31
/* 803C6024  40 80 00 0C */	bge lbl_803C6030
/* 803C6028  2C 12 00 00 */	cmpwi r18, 0
/* 803C602C  41 82 FF AC */	beq lbl_803C5FD8
lbl_803C6030:
/* 803C6030  7C 1C F8 40 */	cmplw r28, r31
/* 803C6034  41 80 00 08 */	blt lbl_803C603C
/* 803C6038  3B 20 00 01 */	li r25, 1
lbl_803C603C:
/* 803C603C  2C 1D 00 00 */	cmpwi r29, 0
/* 803C6040  38 A0 00 59 */	li r5, 0x59
/* 803C6044  40 82 00 08 */	bne lbl_803C604C
/* 803C6048  38 A0 00 41 */	li r5, 0x41
lbl_803C604C:
/* 803C604C  2C 17 00 00 */	cmpwi r23, 0
/* 803C6050  7C A6 2B 78 */	mr r6, r5
/* 803C6054  41 82 00 30 */	beq lbl_803C6084
/* 803C6058  7C 18 D0 00 */	cmpw r24, r26
/* 803C605C  41 80 00 28 */	blt lbl_803C6084
/* 803C6060  7C 1A DA 14 */	add r0, r26, r27
/* 803C6064  7C 18 00 00 */	cmpw r24, r0
/* 803C6068  40 80 00 1C */	bge lbl_803C6084
/* 803C606C  3C 60 FF FC */	lis r3, 0xFFFC /* 0xFFFBFFDF@ha */
/* 803C6070  80 94 04 0C */	lwz r4, 0x40c(r20)
/* 803C6074  38 03 FF DF */	addi r0, r3, 0xFFDF /* 0xFFFBFFDF@l */
/* 803C6078  60 A6 00 80 */	ori r6, r5, 0x80
/* 803C607C  7C 80 00 38 */	and r0, r4, r0
/* 803C6080  90 14 04 0C */	stw r0, 0x40c(r20)
lbl_803C6084:
/* 803C6084  7C 1A C0 50 */	subf r0, r26, r24
/* 803C6088  39 53 02 BC */	addi r10, r19, 0x2bc
/* 803C608C  90 01 00 08 */	stw r0, 8(r1)
/* 803C6090  7F C4 F3 78 */	mr r4, r30
/* 803C6094  7F 65 DB 78 */	mr r5, r27
/* 803C6098  38 61 00 34 */	addi r3, r1, 0x34
/* 803C609C  88 14 03 F4 */	lbz r0, 0x3f4(r20)
/* 803C60A0  38 E1 00 24 */	addi r7, r1, 0x24
/* 803C60A4  39 21 00 2C */	addi r9, r1, 0x2c
/* 803C60A8  7D 54 52 14 */	add r10, r20, r10
/* 803C60AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 803C60B0  39 00 00 00 */	li r8, 0
/* 803C60B4  88 14 03 F5 */	lbz r0, 0x3f5(r20)
/* 803C60B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 803C60BC  88 14 03 F6 */	lbz r0, 0x3f6(r20)
/* 803C60C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C60C4  A8 14 03 EE */	lha r0, 0x3ee(r20)
/* 803C60C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 803C60CC  4B FE AE 39 */	bl mFontSentence_set
/* 803C60D0  7E A4 AB 78 */	mr r4, r21
/* 803C60D4  38 61 00 34 */	addi r3, r1, 0x34
/* 803C60D8  38 A1 00 20 */	addi r5, r1, 0x20
/* 803C60DC  4B FE B1 49 */	bl mFontSentence_gppDraw
/* 803C60E0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 803C60E4  7F 9E E3 78 */	mr r30, r28
/* 803C60E8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 803C60EC  7F 5A DA 14 */	add r26, r26, r27
/* 803C60F0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 803C60F4  3B BD 00 01 */	addi r29, r29, 1
/* 803C60F8  3A 73 00 04 */	addi r19, r19, 4
/* 803C60FC  EC 01 00 2A */	fadds f0, f1, f0
/* 803C6100  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_803C6104:
/* 803C6104  80 14 02 E0 */	lwz r0, 0x2e0(r20)
/* 803C6108  7C 1D 00 00 */	cmpw r29, r0
/* 803C610C  40 80 00 0C */	bge lbl_803C6118
/* 803C6110  2C 19 00 00 */	cmpwi r25, 0
/* 803C6114  41 82 FE B4 */	beq lbl_803C5FC8
lbl_803C6118:
/* 803C6118  80 01 00 20 */	lwz r0, 0x20(r1)
/* 803C611C  90 16 02 F0 */	stw r0, 0x2f0(r22)
lbl_803C6120:
/* 803C6120  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 803C6124  39 61 01 00 */	addi r11, r1, 0x100
/* 803C6128  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 803C612C  4B CD 4D C9 */	bl func_8009AEF4
/* 803C6130  80 01 01 14 */	lwz r0, 0x114(r1)
/* 803C6134  7C 08 03 A6 */	mtlr r0
/* 803C6138  38 21 01 10 */	addi r1, r1, 0x110
/* 803C613C  4E 80 00 20 */	blr 
