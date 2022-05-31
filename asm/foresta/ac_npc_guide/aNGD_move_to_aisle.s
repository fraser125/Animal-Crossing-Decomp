lbl_80553DD8:
/* 80553DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553DDC  7C 08 02 A6 */	mflr r0
/* 80553DE0  3C C0 80 65 */	lis r6, lit_800@ha /* 0x806495A4@ha */
/* 80553DE4  3C A0 80 65 */	lis r5, lit_653@ha /* 0x8064959C@ha */
/* 80553DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553DEC  C0 26 95 A4 */	lfs f1, lit_800@l(r6)  /* 0x806495A4@l */
/* 80553DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80553DF4  7C 9F 23 78 */	mr r31, r4
/* 80553DF8  C0 45 95 9C */	lfs f2, lit_653@l(r5)  /* 0x8064959C@l */
/* 80553DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80553E00  7C 7E 1B 78 */	mr r30, r3
/* 80553E04  4B FF F6 31 */	bl aNGD_calc_body_angl
/* 80553E08  3C 60 80 65 */	lis r3, lit_800@ha /* 0x806495A4@ha */
/* 80553E0C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80553E10  C0 03 95 A4 */	lfs f0, lit_800@l(r3)  /* 0x806495A4@l */
/* 80553E14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80553E18  40 81 00 14 */	ble lbl_80553E2C
/* 80553E1C  7F C3 F3 78 */	mr r3, r30
/* 80553E20  7F E4 FB 78 */	mr r4, r31
/* 80553E24  38 A0 00 16 */	li r5, 0x16
/* 80553E28  48 00 0A E1 */	bl aNGD_setupAction
lbl_80553E2C:
/* 80553E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80553E34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80553E38  7C 08 03 A6 */	mtlr r0
/* 80553E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80553E40  4E 80 00 20 */	blr 
