lbl_80598C6C:
/* 80598C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80598C70  7C 08 02 A6 */	mflr r0
/* 80598C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80598C78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80598C7C  7C 9F 23 78 */	mr r31, r4
/* 80598C80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80598C84  7C 7E 1B 78 */	mr r30, r3
/* 80598C88  3C 60 80 65 */	lis r3, lit_571@ha /* 0x80649EF0@ha */
/* 80598C8C  C0 5E 02 50 */	lfs f2, 0x250(r30)
/* 80598C90  C0 03 9E F0 */	lfs f0, lit_571@l(r3)  /* 0x80649EF0@l */
/* 80598C94  FC 20 12 10 */	fabs f1, f2
/* 80598C98  FC 20 08 18 */	frsp f1, f1
/* 80598C9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80598CA0  40 80 00 4C */	bge lbl_80598CEC
/* 80598CA4  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80598CA8  38 61 00 08 */	addi r3, r1, 8
/* 80598CAC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80598CB0  90 81 00 08 */	stw r4, 8(r1)
/* 80598CB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80598CB8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80598CBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80598CC0  4B E0 E7 71 */	bl mFI_GetUnitFG
/* 80598CC4  28 03 00 00 */	cmplwi r3, 0
/* 80598CC8  41 82 00 4C */	beq lbl_80598D14
/* 80598CCC  A0 03 00 00 */	lhz r0, 0(r3)
/* 80598CD0  28 00 08 45 */	cmplwi r0, 0x845
/* 80598CD4  40 82 00 40 */	bne lbl_80598D14
/* 80598CD8  7F C3 F3 78 */	mr r3, r30
/* 80598CDC  7F E5 FB 78 */	mr r5, r31
/* 80598CE0  38 80 00 03 */	li r4, 3
/* 80598CE4  48 00 0B 65 */	bl aICH_setupAction
/* 80598CE8  48 00 00 2C */	b lbl_80598D14
lbl_80598CEC:
/* 80598CEC  3C 80 80 65 */	lis r4, lit_448@ha /* 0x80649ED0@ha */
/* 80598CF0  3C 60 80 65 */	lis r3, lit_447@ha /* 0x80649ECC@ha */
/* 80598CF4  C0 24 9E D0 */	lfs f1, lit_448@l(r4)  /* 0x80649ED0@l */
/* 80598CF8  C0 03 9E CC */	lfs f0, lit_447@l(r3)  /* 0x80649ECC@l */
/* 80598CFC  EC 22 08 28 */	fsubs f1, f2, f1
/* 80598D00  D0 3E 02 50 */	stfs f1, 0x250(r30)
/* 80598D04  C0 3E 02 50 */	lfs f1, 0x250(r30)
/* 80598D08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80598D0C  40 80 00 08 */	bge lbl_80598D14
/* 80598D10  D0 1E 02 50 */	stfs f0, 0x250(r30)
lbl_80598D14:
/* 80598D14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80598D18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80598D1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80598D20  7C 08 03 A6 */	mtlr r0
/* 80598D24  38 21 00 20 */	addi r1, r1, 0x20
/* 80598D28  4E 80 00 20 */	blr 
