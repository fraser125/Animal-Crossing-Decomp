lbl_8039A15C:
/* 8039A15C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8039A160  7C 08 02 A6 */	mflr r0
/* 8039A164  90 01 00 34 */	stw r0, 0x34(r1)
/* 8039A168  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8039A16C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8039A170  39 61 00 20 */	addi r11, r1, 0x20
/* 8039A174  4B D0 0D 5D */	bl func_8009AED0
/* 8039A178  3C C0 80 64 */	lis r6, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A17C  3C E0 80 64 */	lis r7, lit_880@ha /* 0x80641CE4@ha */
/* 8039A180  38 C6 1C BC */	addi r6, r6, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A184  7C 7C 1B 78 */	mr r28, r3
/* 8039A188  80 C6 00 00 */	lwz r6, 0(r6)
/* 8039A18C  7C 9D 23 78 */	mr r29, r4
/* 8039A190  C3 E7 1C E4 */	lfs f31, lit_880@l(r7)  /* 0x80641CE4@l */
/* 8039A194  7C BE 2B 78 */	mr r30, r5
/* 8039A198  80 66 02 F0 */	lwz r3, 0x2f0(r6)
/* 8039A19C  2C 03 00 20 */	cmpwi r3, 0x20
/* 8039A1A0  40 80 00 A0 */	bge lbl_8039A240
/* 8039A1A4  80 06 02 F4 */	lwz r0, 0x2f4(r6)
/* 8039A1A8  7C 1C 00 00 */	cmpw r28, r0
/* 8039A1AC  41 80 00 8C */	blt lbl_8039A238
/* 8039A1B0  54 63 20 36 */	slwi r3, r3, 4
/* 8039A1B4  2C 1C 00 07 */	cmpwi r28, 7
/* 8039A1B8  3B E3 00 F0 */	addi r31, r3, 0xf0
/* 8039A1BC  7F E6 FA 14 */	add r31, r6, r31
/* 8039A1C0  40 82 00 28 */	bne lbl_8039A1E8
/* 8039A1C4  7F A3 EB 78 */	mr r3, r29
/* 8039A1C8  4B FF F6 F9 */	bl weight_of_talk_position
/* 8039A1CC  3C 60 80 64 */	lis r3, lit_878@ha /* 0x80641CDC@ha */
/* 8039A1D0  FF E0 08 90 */	fmr f31, f1
/* 8039A1D4  C0 03 1C DC */	lfs f0, lit_878@l(r3)  /* 0x80641CDC@l */
/* 8039A1D8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8039A1DC  40 80 00 34 */	bge lbl_8039A210
/* 8039A1E0  38 60 00 00 */	li r3, 0
/* 8039A1E4  48 00 00 60 */	b lbl_8039A244
lbl_8039A1E8:
/* 8039A1E8  2C 1C 00 08 */	cmpwi r28, 8
/* 8039A1EC  40 82 00 24 */	bne lbl_8039A210
/* 8039A1F0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8039A1F4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8039A1F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A1FC  48 03 FD 5D */	bl mPlib_Check_able_force_speak_label
/* 8039A200  2C 03 00 00 */	cmpwi r3, 0
/* 8039A204  40 82 00 0C */	bne lbl_8039A210
/* 8039A208  38 60 00 00 */	li r3, 0
/* 8039A20C  48 00 00 38 */	b lbl_8039A244
lbl_8039A210:
/* 8039A210  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A214  80 83 1C BC */	lwz r4, data_80641CBC@l(r3)  /* 0x80641CBC@l */
/* 8039A218  93 84 02 F4 */	stw r28, 0x2f4(r4)
/* 8039A21C  93 9F 00 04 */	stw r28, 4(r31)
/* 8039A220  93 BF 00 00 */	stw r29, 0(r31)
/* 8039A224  93 DF 00 08 */	stw r30, 8(r31)
/* 8039A228  D3 FF 00 0C */	stfs f31, 0xc(r31)
/* 8039A22C  80 64 02 F0 */	lwz r3, 0x2f0(r4)
/* 8039A230  38 03 00 01 */	addi r0, r3, 1
/* 8039A234  90 04 02 F0 */	stw r0, 0x2f0(r4)
lbl_8039A238:
/* 8039A238  38 60 00 01 */	li r3, 1
/* 8039A23C  48 00 00 08 */	b lbl_8039A244
lbl_8039A240:
/* 8039A240  38 60 00 00 */	li r3, 0
lbl_8039A244:
/* 8039A244  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8039A248  39 61 00 20 */	addi r11, r1, 0x20
/* 8039A24C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8039A250  4B D0 0C CD */	bl func_8009AF1C
/* 8039A254  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8039A258  7C 08 03 A6 */	mtlr r0
/* 8039A25C  38 21 00 30 */	addi r1, r1, 0x30
/* 8039A260  4E 80 00 20 */	blr 
