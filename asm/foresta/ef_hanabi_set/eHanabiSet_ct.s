lbl_8060F148:
/* 8060F148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060F14C  7C 08 02 A6 */	mflr r0
/* 8060F150  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060F154  39 61 00 20 */	addi r11, r1, 0x20
/* 8060F158  4B A8 BD 7D */	bl func_8009AED4
/* 8060F15C  7C 7F 1B 78 */	mr r31, r3
/* 8060F160  4B A4 DB 95 */	bl fqrand
/* 8060F164  3C 80 80 65 */	lis r4, lit_405@ha /* 0x8064C260@ha */
/* 8060F168  38 60 00 20 */	li r3, 0x20
/* 8060F16C  C0 04 C2 60 */	lfs f0, lit_405@l(r4)  /* 0x8064C260@l */
/* 8060F170  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060F174  FC 00 00 1E */	fctiwz f0, f0
/* 8060F178  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060F17C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8060F180  54 80 F0 02 */	slwi r0, r4, 0x1e
/* 8060F184  54 84 0F FE */	srwi r4, r4, 0x1f
/* 8060F188  7C 04 00 50 */	subf r0, r4, r0
/* 8060F18C  54 00 10 3E */	rotlwi r0, r0, 2
/* 8060F190  7F C0 22 14 */	add r30, r0, r4
/* 8060F194  4B D8 C4 BD */	bl mEv_get_end_time
/* 8060F198  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8060F19C  38 A3 FF FF */	addi r5, r3, -1
/* 8060F1A0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8060F1A4  38 00 00 C8 */	li r0, 0xc8
/* 8060F1A8  3C 63 00 02 */	addis r3, r3, 2
/* 8060F1AC  8B A3 61 22 */	lbz r29, 0x6122(r3)
/* 8060F1B0  7C 1D 28 00 */	cmpw r29, r5
/* 8060F1B4  B0 1F 00 00 */	sth r0, 0(r31)
/* 8060F1B8  40 81 00 28 */	ble lbl_8060F1E0
/* 8060F1BC  38 60 00 20 */	li r3, 0x20
/* 8060F1C0  4B D8 C4 91 */	bl mEv_get_end_time
/* 8060F1C4  7C 1D 18 00 */	cmpw r29, r3
/* 8060F1C8  41 81 00 18 */	bgt lbl_8060F1E0
/* 8060F1CC  38 60 00 01 */	li r3, 1
/* 8060F1D0  38 1E 00 04 */	addi r0, r30, 4
/* 8060F1D4  B0 7F 00 4E */	sth r3, 0x4e(r31)
/* 8060F1D8  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8060F1DC  48 00 00 10 */	b lbl_8060F1EC
lbl_8060F1E0:
/* 8060F1E0  38 00 00 00 */	li r0, 0
/* 8060F1E4  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 8060F1E8  B3 DF 00 4C */	sth r30, 0x4c(r31)
lbl_8060F1EC:
/* 8060F1EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8060F1F0  4B A8 BD 31 */	bl func_8009AF20
/* 8060F1F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060F1F8  7C 08 03 A6 */	mtlr r0
/* 8060F1FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8060F200  4E 80 00 20 */	blr 
