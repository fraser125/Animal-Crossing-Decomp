lbl_80555C80:
/* 80555C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555C84  7C 08 02 A6 */	mflr r0
/* 80555C88  3C C0 80 65 */	lis r6, lit_786@ha /* 0x80649624@ha */
/* 80555C8C  3C A0 80 65 */	lis r5, lit_666@ha /* 0x8064961C@ha */
/* 80555C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555C94  C0 26 96 24 */	lfs f1, lit_786@l(r6)  /* 0x80649624@l */
/* 80555C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555C9C  7C 9F 23 78 */	mr r31, r4
/* 80555CA0  C0 45 96 1C */	lfs f2, lit_666@l(r5)  /* 0x8064961C@l */
/* 80555CA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80555CA8  7C 7E 1B 78 */	mr r30, r3
/* 80555CAC  4B FF F7 D1 */	bl aNG2_calc_body_angl
/* 80555CB0  3C 60 80 65 */	lis r3, lit_786@ha /* 0x80649624@ha */
/* 80555CB4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80555CB8  C0 03 96 24 */	lfs f0, lit_786@l(r3)  /* 0x80649624@l */
/* 80555CBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80555CC0  40 81 00 14 */	ble lbl_80555CD4
/* 80555CC4  7F C3 F3 78 */	mr r3, r30
/* 80555CC8  7F E4 FB 78 */	mr r4, r31
/* 80555CCC  38 A0 00 11 */	li r5, 0x11
/* 80555CD0  48 00 08 4D */	bl aNG2_setupAction
lbl_80555CD4:
/* 80555CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80555CDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80555CE0  7C 08 03 A6 */	mtlr r0
/* 80555CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80555CE8  4E 80 00 20 */	blr 
