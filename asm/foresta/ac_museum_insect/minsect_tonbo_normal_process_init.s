lbl_8045F4D4:
/* 8045F4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045F4D8  7C 08 02 A6 */	mflr r0
/* 8045F4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045F4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045F4E4  7C 7F 1B 78 */	mr r31, r3
/* 8045F4E8  4B FF FB ED */	bl minsect_tonbo_max_speed_set
/* 8045F4EC  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045F4F0  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045F4F4  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8045F4F8  A8 1F 00 7A */	lha r0, 0x7a(r31)
/* 8045F4FC  2C 00 00 00 */	cmpwi r0, 0
/* 8045F500  41 82 00 2C */	beq lbl_8045F52C
/* 8045F504  3C 80 80 64 */	lis r4, lit_1067@ha /* 0x80644700@ha */
/* 8045F508  3C 60 80 64 */	lis r3, lit_1148@ha /* 0x80644724@ha */
/* 8045F50C  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 8045F510  C0 24 47 00 */	lfs f1, lit_1067@l(r4)  /* 0x80644700@l */
/* 8045F514  C0 03 47 24 */	lfs f0, lit_1148@l(r3)  /* 0x80644724@l */
/* 8045F518  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045F51C  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 8045F520  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8045F524  EC 01 00 24 */	fdivs f0, f1, f0
/* 8045F528  D0 1F 00 40 */	stfs f0, 0x40(r31)
lbl_8045F52C:
/* 8045F52C  38 80 00 00 */	li r4, 0
/* 8045F530  3C 60 80 46 */	lis r3, minsect_tonbo_normal_process@ha /* 0x8045F558@ha */
/* 8045F534  B0 9F 00 7A */	sth r4, 0x7a(r31)
/* 8045F538  38 03 F5 58 */	addi r0, r3, minsect_tonbo_normal_process@l /* 0x8045F558@l */
/* 8045F53C  B0 9F 00 78 */	sth r4, 0x78(r31)
/* 8045F540  90 1F 00 04 */	stw r0, 4(r31)
/* 8045F544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045F548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045F54C  7C 08 03 A6 */	mtlr r0
/* 8045F550  38 21 00 10 */	addi r1, r1, 0x10
/* 8045F554  4E 80 00 20 */	blr 
