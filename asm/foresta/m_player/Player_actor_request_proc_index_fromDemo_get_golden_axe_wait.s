lbl_80508CA4:
/* 80508CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508CA8  7C 08 02 A6 */	mflr r0
/* 80508CAC  3C A0 80 65 */	lis r5, lit_16988@ha /* 0x806485C8@ha */
/* 80508CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508CB4  C0 05 85 C8 */	lfs f0, lit_16988@l(r5)  /* 0x806485C8@l */
/* 80508CB8  C0 23 0D 18 */	lfs f1, 0xd18(r3)
/* 80508CBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80508CC0  40 80 00 18 */	bge lbl_80508CD8
/* 80508CC4  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 80508CC8  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 80508CCC  EC 01 00 2A */	fadds f0, f1, f0
/* 80508CD0  D0 03 0D 18 */	stfs f0, 0xd18(r3)
/* 80508CD4  48 00 00 10 */	b lbl_80508CE4
lbl_80508CD8:
/* 80508CD8  7C 83 23 78 */	mr r3, r4
/* 80508CDC  38 80 00 00 */	li r4, 0
/* 80508CE0  4B ED 15 41 */	bl mPlib_request_main_demo_get_golden_item2_type1
lbl_80508CE4:
/* 80508CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508CE8  7C 08 03 A6 */	mtlr r0
/* 80508CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80508CF0  4E 80 00 20 */	blr 
