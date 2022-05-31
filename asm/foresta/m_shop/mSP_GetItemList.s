lbl_803E7BDC:
/* 803E7BDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E7BE0  7C 08 02 A6 */	mflr r0
/* 803E7BE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E7BE8  39 61 00 20 */	addi r11, r1, 0x20
/* 803E7BEC  4B CB 32 E9 */	bl func_8009AED4
/* 803E7BF0  2C 05 00 08 */	cmpwi r5, 8
/* 803E7BF4  7C 7D 1B 78 */	mr r29, r3
/* 803E7BF8  7C 9E 23 78 */	mr r30, r4
/* 803E7BFC  40 82 00 8C */	bne lbl_803E7C88
/* 803E7C00  4B C7 50 F5 */	bl fqrand
/* 803E7C04  3C 60 80 64 */	lis r3, lit_495@ha /* 0x80643188@ha */
/* 803E7C08  C0 03 31 88 */	lfs f0, lit_495@l(r3)  /* 0x80643188@l */
/* 803E7C0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E7C10  FC 00 00 1E */	fctiwz f0, f0
/* 803E7C14  D8 01 00 08 */	stfd f0, 8(r1)
/* 803E7C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E7C1C  4B FF 93 E9 */	bl mPr_GetGoodsPower
/* 803E7C20  7C 63 07 35 */	extsh. r3, r3
/* 803E7C24  40 80 00 10 */	bge lbl_803E7C34
/* 803E7C28  38 03 00 28 */	addi r0, r3, 0x28
/* 803E7C2C  38 60 00 05 */	li r3, 5
/* 803E7C30  48 00 00 0C */	b lbl_803E7C3C
lbl_803E7C34:
/* 803E7C34  38 63 00 05 */	addi r3, r3, 5
/* 803E7C38  38 03 00 23 */	addi r0, r3, 0x23
lbl_803E7C3C:
/* 803E7C3C  7C 1F 18 00 */	cmpw r31, r3
/* 803E7C40  40 80 00 18 */	bge lbl_803E7C58
/* 803E7C44  7F A3 EB 78 */	mr r3, r29
/* 803E7C48  7F C4 F3 78 */	mr r4, r30
/* 803E7C4C  38 A0 00 02 */	li r5, 2
/* 803E7C50  4B FF FD 6D */	bl mSP_SelectListFromPriority
/* 803E7C54  48 00 00 38 */	b lbl_803E7C8C
lbl_803E7C58:
/* 803E7C58  7C 1F 00 00 */	cmpw r31, r0
/* 803E7C5C  40 80 00 18 */	bge lbl_803E7C74
/* 803E7C60  7F A3 EB 78 */	mr r3, r29
/* 803E7C64  7F C4 F3 78 */	mr r4, r30
/* 803E7C68  38 A0 00 01 */	li r5, 1
/* 803E7C6C  4B FF FD 51 */	bl mSP_SelectListFromPriority
/* 803E7C70  48 00 00 1C */	b lbl_803E7C8C
lbl_803E7C74:
/* 803E7C74  7F A3 EB 78 */	mr r3, r29
/* 803E7C78  7F C4 F3 78 */	mr r4, r30
/* 803E7C7C  38 A0 00 00 */	li r5, 0
/* 803E7C80  4B FF FD 3D */	bl mSP_SelectListFromPriority
/* 803E7C84  48 00 00 08 */	b lbl_803E7C8C
lbl_803E7C88:
/* 803E7C88  4B FF FD 35 */	bl mSP_SelectListFromPriority
lbl_803E7C8C:
/* 803E7C8C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E7C90  4B CB 32 91 */	bl func_8009AF20
/* 803E7C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E7C98  7C 08 03 A6 */	mtlr r0
/* 803E7C9C  38 21 00 20 */	addi r1, r1, 0x20
/* 803E7CA0  4E 80 00 20 */	blr 
