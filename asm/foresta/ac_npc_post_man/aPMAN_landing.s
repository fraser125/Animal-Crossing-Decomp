lbl_8056E448:
/* 8056E448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056E44C  7C 08 02 A6 */	mflr r0
/* 8056E450  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056E454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056E458  7C 9F 23 78 */	mr r31, r4
/* 8056E45C  88 03 00 98 */	lbz r0, 0x98(r3)
/* 8056E460  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8056E464  41 82 00 18 */	beq lbl_8056E47C
/* 8056E468  3C 80 80 65 */	lis r4, data_8064987C@ha /* 0x8064987C@ha */
/* 8056E46C  C0 04 98 7C */	lfs f0, data_8064987C@l(r4)  /* 0x8064987C@l */
/* 8056E470  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 8056E474  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8056E478  D0 03 09 00 */	stfs f0, 0x900(r3)
lbl_8056E47C:
/* 8056E47C  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8056E480  2C 00 00 01 */	cmpwi r0, 1
/* 8056E484  40 82 00 3C */	bne lbl_8056E4C0
/* 8056E488  88 03 09 9B */	lbz r0, 0x99b(r3)
/* 8056E48C  38 80 00 0B */	li r4, 0xb
/* 8056E490  7C 00 07 74 */	extsb r0, r0
/* 8056E494  2C 00 FF FF */	cmpwi r0, -1
/* 8056E498  41 82 00 08 */	beq lbl_8056E4A0
/* 8056E49C  38 80 00 05 */	li r4, 5
lbl_8056E4A0:
/* 8056E4A0  98 83 09 99 */	stb r4, 0x999(r3)
/* 8056E4A4  7F E4 FB 78 */	mr r4, r31
/* 8056E4A8  38 A0 00 04 */	li r5, 4
/* 8056E4AC  48 00 08 25 */	bl aPMAN_setupAction
/* 8056E4B0  3C 80 80 57 */	lis r4, aPMAN_eff_wings@ha /* 0x8056E218@ha */
/* 8056E4B4  38 7F 1C C0 */	addi r3, r31, 0x1cc0
/* 8056E4B8  38 84 E2 18 */	addi r4, r4, aPMAN_eff_wings@l /* 0x8056E218@l */
/* 8056E4BC  4B E4 7D 59 */	bl mEnv_unregist_nature
lbl_8056E4C0:
/* 8056E4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056E4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056E4C8  7C 08 03 A6 */	mtlr r0
/* 8056E4CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056E4D0  4E 80 00 20 */	blr 
