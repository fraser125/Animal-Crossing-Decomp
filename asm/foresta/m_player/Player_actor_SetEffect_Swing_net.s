lbl_804F2B58:
/* 804F2B58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804F2B5C  7C 08 02 A6 */	mflr r0
/* 804F2B60  3C A0 80 65 */	lis r5, lit_10958@ha /* 0x80648504@ha */
/* 804F2B64  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F2B68  C0 05 85 04 */	lfs f0, lit_10958@l(r5)  /* 0x80648504@l */
/* 804F2B6C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804F2B70  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804F2B74  7C 9E 23 78 */	mr r30, r4
/* 804F2B78  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804F2B7C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804F2B80  40 80 00 F4 */	bge lbl_804F2C74
/* 804F2B84  3C 80 80 64 */	lis r4, lit_3573@ha /* 0x80647A44@ha */
/* 804F2B88  C0 04 7A 44 */	lfs f0, lit_3573@l(r4)  /* 0x80647A44@l */
/* 804F2B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F2B90  4C 40 13 82 */	cror 2, 0, 2
/* 804F2B94  40 82 00 E0 */	bne lbl_804F2C74
/* 804F2B98  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 804F2B9C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 804F2BA0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804F2BA4  AB E3 00 36 */	lha r31, 0x36(r3)
/* 804F2BA8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804F2BAC  7F E3 FB 78 */	mr r3, r31
/* 804F2BB0  90 81 00 24 */	stw r4, 0x24(r1)
/* 804F2BB4  90 01 00 28 */	stw r0, 0x28(r1)
/* 804F2BB8  4B EC 7F 39 */	bl sin_s
/* 804F2BBC  3C 60 80 64 */	lis r3, lit_5205@ha /* 0x80647CE0@ha */
/* 804F2BC0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804F2BC4  38 83 7C E0 */	addi r4, r3, lit_5205@l /* 0x80647CE0@l */
/* 804F2BC8  7F E3 FB 78 */	mr r3, r31
/* 804F2BCC  C0 44 00 00 */	lfs f2, 0(r4)
/* 804F2BD0  EC 22 00 72 */	fmuls f1, f2, f1
/* 804F2BD4  EC 00 08 2A */	fadds f0, f0, f1
/* 804F2BD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804F2BDC  4B EC 7E C1 */	bl cos_s
/* 804F2BE0  3C 60 80 64 */	lis r3, lit_5205@ha /* 0x80647CE0@ha */
/* 804F2BE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F2BE8  C0 43 7C E0 */	lfs f2, lit_5205@l(r3)  /* 0x80647CE0@l */
/* 804F2BEC  38 61 00 14 */	addi r3, r1, 0x14
/* 804F2BF0  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 804F2BF4  38 80 00 00 */	li r4, 0
/* 804F2BF8  EC 22 00 72 */	fmuls f1, f2, f1
/* 804F2BFC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804F2C00  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F2C04  EC 00 08 2A */	fadds f0, f0, f1
/* 804F2C08  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804F2C0C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804F2C10  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804F2C14  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804F2C18  4B E9 64 95 */	bl mCoBG_Wpos2Attribute
/* 804F2C1C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804F2C20  7C 69 07 34 */	extsh r9, r3
/* 804F2C24  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804F2C28  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804F2C2C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804F2C30  3C 63 00 02 */	addis r3, r3, 2
/* 804F2C34  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804F2C38  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F2C3C  90 C1 00 08 */	stw r6, 8(r1)
/* 804F2C40  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F2C44  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 804F2C48  7F E6 FB 78 */	mr r6, r31
/* 804F2C4C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F2C50  7F C7 F3 78 */	mr r7, r30
/* 804F2C54  38 81 00 08 */	addi r4, r1, 8
/* 804F2C58  38 60 00 39 */	li r3, 0x39
/* 804F2C5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F2C60  38 A0 00 02 */	li r5, 2
/* 804F2C64  39 40 00 00 */	li r10, 0
/* 804F2C68  81 8B 00 00 */	lwz r12, 0(r11)
/* 804F2C6C  7D 89 03 A6 */	mtctr r12
/* 804F2C70  4E 80 04 21 */	bctrl 
lbl_804F2C74:
/* 804F2C74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F2C78  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804F2C7C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804F2C80  7C 08 03 A6 */	mtlr r0
/* 804F2C84  38 21 00 40 */	addi r1, r1, 0x40
/* 804F2C88  4E 80 00 20 */	blr 
