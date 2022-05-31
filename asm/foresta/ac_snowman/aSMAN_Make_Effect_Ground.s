lbl_804A3B98:
/* 804A3B98  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A3B9C  7C 08 02 A6 */	mflr r0
/* 804A3BA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A3BA4  39 61 00 50 */	addi r11, r1, 0x50
/* 804A3BA8  4B BF 73 29 */	bl func_8009AED0
/* 804A3BAC  3C A0 80 64 */	lis r5, lit_639@ha /* 0x80645CB0@ha */
/* 804A3BB0  C0 23 01 D0 */	lfs f1, 0x1d0(r3)
/* 804A3BB4  C0 05 5C B0 */	lfs f0, lit_639@l(r5)  /* 0x80645CB0@l */
/* 804A3BB8  7C 7E 1B 78 */	mr r30, r3
/* 804A3BBC  7C 9F 23 78 */	mr r31, r4
/* 804A3BC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A3BC4  41 80 01 C4 */	blt lbl_804A3D88
/* 804A3BC8  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 804A3BCC  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804A3BD0  40 82 01 B8 */	bne lbl_804A3D88
/* 804A3BD4  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804A3BD8  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804A3BDC  28 00 00 09 */	cmplwi r0, 9
/* 804A3BE0  40 82 01 A8 */	bne lbl_804A3D88
/* 804A3BE4  3C 60 80 64 */	lis r3, lit_640@ha /* 0x80645CB4@ha */
/* 804A3BE8  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 804A3BEC  C0 03 5C B4 */	lfs f0, lit_640@l(r3)  /* 0x80645CB4@l */
/* 804A3BF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A3BF4  40 81 01 94 */	ble lbl_804A3D88
/* 804A3BF8  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804A3BFC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 804A3C00  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804A3C04  90 81 00 20 */	stw r4, 0x20(r1)
/* 804A3C08  90 61 00 24 */	stw r3, 0x24(r1)
/* 804A3C0C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804A3C10  4B BB 90 E5 */	bl fqrand
/* 804A3C14  3C 80 80 64 */	lis r4, lit_642@ha /* 0x80645CBC@ha */
/* 804A3C18  3C 60 80 64 */	lis r3, lit_641@ha /* 0x80645CB8@ha */
/* 804A3C1C  C0 44 5C BC */	lfs f2, lit_642@l(r4)  /* 0x80645CBC@l */
/* 804A3C20  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 804A3C24  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A3C28  C0 03 5C B8 */	lfs f0, lit_641@l(r3)  /* 0x80645CB8@l */
/* 804A3C2C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804A3C30  EC 22 08 2A */	fadds f1, f2, f1
/* 804A3C34  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A3C38  FC 00 00 1E */	fctiwz f0, f0
/* 804A3C3C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804A3C40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A3C44  7C 1C 07 34 */	extsh r28, r0
/* 804A3C48  41 82 00 0C */	beq lbl_804A3C54
/* 804A3C4C  7C 1C 00 D0 */	neg r0, r28
/* 804A3C50  7C 1C 07 34 */	extsh r28, r0
lbl_804A3C54:
/* 804A3C54  3C 60 80 64 */	lis r3, lit_643@ha /* 0x80645CC0@ha */
/* 804A3C58  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 804A3C5C  C0 03 5C C0 */	lfs f0, lit_643@l(r3)  /* 0x80645CC0@l */
/* 804A3C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A3C64  40 81 00 0C */	ble lbl_804A3C70
/* 804A3C68  3B A0 00 01 */	li r29, 1
/* 804A3C6C  48 00 00 08 */	b lbl_804A3C74
lbl_804A3C70:
/* 804A3C70  3B A0 00 00 */	li r29, 0
lbl_804A3C74:
/* 804A3C74  7F 83 E3 78 */	mr r3, r28
/* 804A3C78  4B F1 6E 79 */	bl sin_s
/* 804A3C7C  3C 60 80 64 */	lis r3, lit_644@ha /* 0x80645CC4@ha */
/* 804A3C80  3C 80 80 64 */	lis r4, lit_469@ha /* 0x80645C90@ha */
/* 804A3C84  C0 43 5C C4 */	lfs f2, lit_644@l(r3)  /* 0x80645CC4@l */
/* 804A3C88  7F 83 E3 78 */	mr r3, r28
/* 804A3C8C  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 804A3C90  C0 64 5C 90 */	lfs f3, lit_469@l(r4)  /* 0x80645C90@l */
/* 804A3C94  EC 42 00 32 */	fmuls f2, f2, f0
/* 804A3C98  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804A3C9C  EC 43 10 2A */	fadds f2, f3, f2
/* 804A3CA0  EC 22 00 72 */	fmuls f1, f2, f1
/* 804A3CA4  EC 00 08 2A */	fadds f0, f0, f1
/* 804A3CA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A3CAC  4B F1 6D F1 */	bl cos_s
/* 804A3CB0  3C 60 80 64 */	lis r3, lit_644@ha /* 0x80645CC4@ha */
/* 804A3CB4  3C A0 80 64 */	lis r5, lit_469@ha /* 0x80645C90@ha */
/* 804A3CB8  38 83 5C C4 */	addi r4, r3, lit_644@l /* 0x80645CC4@l */
/* 804A3CBC  C0 85 5C 90 */	lfs f4, lit_469@l(r5)  /* 0x80645C90@l */
/* 804A3CC0  C0 44 00 00 */	lfs f2, 0(r4)
/* 804A3CC4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804A3CC8  C0 1E 01 D0 */	lfs f0, 0x1d0(r30)
/* 804A3CCC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804A3CD0  3F 83 00 02 */	addis r28, r3, 2
/* 804A3CD4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 804A3CD8  EC 62 00 32 */	fmuls f3, f2, f0
/* 804A3CDC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 804A3CE0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804A3CE4  7F E7 FB 78 */	mr r7, r31
/* 804A3CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3CEC  38 81 00 14 */	addi r4, r1, 0x14
/* 804A3CF0  EC 64 18 2A */	fadds f3, f4, f3
/* 804A3CF4  80 DC 60 9C */	lwz r6, 0x609c(r28)
/* 804A3CF8  7F AA 07 34 */	extsh r10, r29
/* 804A3CFC  38 60 00 33 */	li r3, 0x33
/* 804A3D00  38 A0 00 01 */	li r5, 1
/* 804A3D04  39 20 00 00 */	li r9, 0
/* 804A3D08  EC 23 00 72 */	fmuls f1, f3, f1
/* 804A3D0C  EC 00 18 28 */	fsubs f0, f0, f3
/* 804A3D10  EC 22 08 2A */	fadds f1, f2, f1
/* 804A3D14  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A3D18  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804A3D1C  81 01 00 24 */	lwz r8, 0x24(r1)
/* 804A3D20  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804A3D24  91 01 00 18 */	stw r8, 0x18(r1)
/* 804A3D28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A3D2C  81 86 00 00 */	lwz r12, 0(r6)
/* 804A3D30  A8 DE 00 36 */	lha r6, 0x36(r30)
/* 804A3D34  A1 1E 00 06 */	lhz r8, 6(r30)
/* 804A3D38  7D 89 03 A6 */	mtctr r12
/* 804A3D3C  4E 80 04 21 */	bctrl 
/* 804A3D40  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 804A3D44  7F E7 FB 78 */	mr r7, r31
/* 804A3D48  81 01 00 24 */	lwz r8, 0x24(r1)
/* 804A3D4C  38 81 00 08 */	addi r4, r1, 8
/* 804A3D50  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804A3D54  38 60 00 34 */	li r3, 0x34
/* 804A3D58  90 A1 00 08 */	stw r5, 8(r1)
/* 804A3D5C  38 A0 00 01 */	li r5, 1
/* 804A3D60  80 DC 60 9C */	lwz r6, 0x609c(r28)
/* 804A3D64  39 20 00 00 */	li r9, 0
/* 804A3D68  91 01 00 0C */	stw r8, 0xc(r1)
/* 804A3D6C  39 40 00 00 */	li r10, 0
/* 804A3D70  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A3D74  81 86 00 00 */	lwz r12, 0(r6)
/* 804A3D78  A8 DE 00 36 */	lha r6, 0x36(r30)
/* 804A3D7C  A1 1E 00 06 */	lhz r8, 6(r30)
/* 804A3D80  7D 89 03 A6 */	mtctr r12
/* 804A3D84  4E 80 04 21 */	bctrl 
lbl_804A3D88:
/* 804A3D88  39 61 00 50 */	addi r11, r1, 0x50
/* 804A3D8C  4B BF 71 91 */	bl func_8009AF1C
/* 804A3D90  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A3D94  7C 08 03 A6 */	mtlr r0
/* 804A3D98  38 21 00 50 */	addi r1, r1, 0x50
/* 804A3D9C  4E 80 00 20 */	blr 
