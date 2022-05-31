lbl_805A0C58:
/* 805A0C58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A0C5C  7C 08 02 A6 */	mflr r0
/* 805A0C60  3C 80 80 65 */	lis r4, lit_551@ha /* 0x8064A2FC@ha */
/* 805A0C64  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A0C68  C0 04 A2 FC */	lfs f0, lit_551@l(r4)  /* 0x8064A2FC@l */
/* 805A0C6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A0C70  3B E0 00 00 */	li r31, 0
/* 805A0C74  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805A0C78  7C 7E 1B 78 */	mr r30, r3
/* 805A0C7C  C0 23 01 F0 */	lfs f1, 0x1f0(r3)
/* 805A0C80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A0C84  40 80 00 68 */	bge lbl_805A0CEC
/* 805A0C88  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805A0C8C  38 61 00 14 */	addi r3, r1, 0x14
/* 805A0C90  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805A0C94  90 81 00 14 */	stw r4, 0x14(r1)
/* 805A0C98  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A0C9C  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A0CA0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A0CA4  4B E0 67 8D */	bl mFI_GetUnitFG
/* 805A0CA8  28 03 00 00 */	cmplwi r3, 0
/* 805A0CAC  41 82 00 40 */	beq lbl_805A0CEC
/* 805A0CB0  A0 03 00 00 */	lhz r0, 0(r3)
/* 805A0CB4  28 00 F1 02 */	cmplwi r0, 0xf102
/* 805A0CB8  40 82 00 34 */	bne lbl_805A0CEC
/* 805A0CBC  38 00 00 02 */	li r0, 2
/* 805A0CC0  38 61 00 08 */	addi r3, r1, 8
/* 805A0CC4  90 1E 02 34 */	stw r0, 0x234(r30)
/* 805A0CC8  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805A0CCC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805A0CD0  90 81 00 08 */	stw r4, 8(r1)
/* 805A0CD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A0CD8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805A0CDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A0CE0  4B DE EB F9 */	bl mCoBG_Wpos2BgUtCenterHeight_AddColumn
/* 805A0CE4  D0 3E 02 48 */	stfs f1, 0x248(r30)
/* 805A0CE8  3B E0 00 01 */	li r31, 1
lbl_805A0CEC:
/* 805A0CEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A0CF0  7F E3 FB 78 */	mr r3, r31
/* 805A0CF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A0CF8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A0CFC  7C 08 03 A6 */	mtlr r0
/* 805A0D00  38 21 00 30 */	addi r1, r1, 0x30
/* 805A0D04  4E 80 00 20 */	blr 
