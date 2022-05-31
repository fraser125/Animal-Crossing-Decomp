lbl_8059F5D4:
/* 8059F5D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059F5D8  7C 08 02 A6 */	mflr r0
/* 8059F5DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059F5E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059F5E4  7C 7F 1B 78 */	mr r31, r3
/* 8059F5E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8059F5EC  7C 9E 23 78 */	mr r30, r4
/* 8059F5F0  4B FF FD F1 */	bl aISM_check_patience
/* 8059F5F4  2C 03 00 01 */	cmpwi r3, 1
/* 8059F5F8  40 82 00 30 */	bne lbl_8059F628
/* 8059F5FC  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 8059F600  2C 00 00 08 */	cmpwi r0, 8
/* 8059F604  41 82 00 10 */	beq lbl_8059F614
/* 8059F608  38 9F 00 28 */	addi r4, r31, 0x28
/* 8059F60C  38 60 01 15 */	li r3, 0x115
/* 8059F610  48 08 E9 99 */	bl sAdo_OngenTrgStart
lbl_8059F614:
/* 8059F614  7F E3 FB 78 */	mr r3, r31
/* 8059F618  7F C5 F3 78 */	mr r5, r30
/* 8059F61C  38 80 00 00 */	li r4, 0
/* 8059F620  48 00 02 55 */	bl aISM_setupAction
/* 8059F624  48 00 00 B0 */	b lbl_8059F6D4
lbl_8059F628:
/* 8059F628  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 8059F62C  2C 00 00 08 */	cmpwi r0, 8
/* 8059F630  41 82 00 A4 */	beq lbl_8059F6D4
/* 8059F634  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 8059F638  2C 00 00 00 */	cmpwi r0, 0
/* 8059F63C  40 82 00 98 */	bne lbl_8059F6D4
/* 8059F640  3C 60 80 65 */	lis r3, lit_510@ha /* 0x8064A22C@ha */
/* 8059F644  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 8059F648  C0 03 A2 2C */	lfs f0, lit_510@l(r3)  /* 0x8064A22C@l */
/* 8059F64C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059F650  40 80 00 7C */	bge lbl_8059F6CC
/* 8059F654  80 9F 02 28 */	lwz r4, 0x228(r31)
/* 8059F658  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8059F65C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8059F660  38 04 FF FF */	addi r0, r4, -1
/* 8059F664  90 1F 02 28 */	stw r0, 0x228(r31)
/* 8059F668  3C 63 00 02 */	addis r3, r3, 2
/* 8059F66C  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 8059F670  2C 00 00 01 */	cmpwi r0, 1
/* 8059F674  41 82 00 60 */	beq lbl_8059F6D4
/* 8059F678  80 1F 02 28 */	lwz r0, 0x228(r31)
/* 8059F67C  2C 00 00 00 */	cmpwi r0, 0
/* 8059F680  40 80 00 54 */	bge lbl_8059F6D4
/* 8059F684  80 BF 01 D0 */	lwz r5, 0x1d0(r31)
/* 8059F688  38 00 00 00 */	li r0, 0
/* 8059F68C  3C 80 80 6C */	lis r4, semi_sound_data@ha /* 0x806C35E8@ha */
/* 8059F690  7F E3 FB 78 */	mr r3, r31
/* 8059F694  90 1F 02 28 */	stw r0, 0x228(r31)
/* 8059F698  38 05 FF FC */	addi r0, r5, -4
/* 8059F69C  38 84 35 E8 */	addi r4, r4, semi_sound_data@l /* 0x806C35E8@l */
/* 8059F6A0  38 BF 00 28 */	addi r5, r31, 0x28
/* 8059F6A4  7C 84 00 AE */	lbzx r4, r4, r0
/* 8059F6A8  48 08 E8 9D */	bl sAdo_OngenPos
/* 8059F6AC  4B AB D6 49 */	bl fqrand
/* 8059F6B0  3C 60 80 65 */	lis r3, lit_511@ha /* 0x8064A230@ha */
/* 8059F6B4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8059F6B8  C0 43 A2 30 */	lfs f2, lit_511@l(r3)  /* 0x8064A230@l */
/* 8059F6BC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8059F6C0  EC 00 08 2A */	fadds f0, f0, f1
/* 8059F6C4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8059F6C8  48 00 00 0C */	b lbl_8059F6D4
lbl_8059F6CC:
/* 8059F6CC  38 00 00 3C */	li r0, 0x3c
/* 8059F6D0  90 1F 02 28 */	stw r0, 0x228(r31)
lbl_8059F6D4:
/* 8059F6D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059F6D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059F6DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059F6E0  7C 08 03 A6 */	mtlr r0
/* 8059F6E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059F6E8  4E 80 00 20 */	blr 
