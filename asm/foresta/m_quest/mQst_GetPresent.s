lbl_803E370C:
/* 803E370C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E3710  7C 08 02 A6 */	mflr r0
/* 803E3714  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E3718  38 03 FF FD */	addi r0, r3, -3
/* 803E371C  38 60 00 00 */	li r3, 0
/* 803E3720  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E3724  28 00 00 08 */	cmplwi r0, 8
/* 803E3728  3B E0 FF FF */	li r31, -1
/* 803E372C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803E3730  3B C0 FF FF */	li r30, -1
/* 803E3734  B0 61 00 08 */	sth r3, 8(r1)
/* 803E3738  41 81 00 B4 */	bgt lbl_803E37EC
/* 803E373C  3C 60 80 66 */	lis r3, lit_750@ha /* 0x8065BF6C@ha */
/* 803E3740  54 00 10 3A */	slwi r0, r0, 2
/* 803E3744  38 63 BF 6C */	addi r3, r3, lit_750@l /* 0x8065BF6C@l */
/* 803E3748  7C 03 00 2E */	lwzx r0, r3, r0
/* 803E374C  7C 09 03 A6 */	mtctr r0
/* 803E3750  4E 80 04 20 */	bctr 
lbl_803E3754:
/* 803E3754  3B E0 00 02 */	li r31, 2
/* 803E3758  3B C0 00 08 */	li r30, 8
/* 803E375C  48 00 00 90 */	b lbl_803E37EC
lbl_803E3760:
/* 803E3760  3B E0 00 00 */	li r31, 0
/* 803E3764  3B C0 00 08 */	li r30, 8
/* 803E3768  48 00 00 84 */	b lbl_803E37EC
lbl_803E376C:
/* 803E376C  3B C0 00 08 */	li r30, 8
/* 803E3770  38 60 00 04 */	li r3, 4
/* 803E3774  48 00 0C 5D */	bl mQst_GetRandom
/* 803E3778  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 803E377C  40 82 00 0C */	bne lbl_803E3788
/* 803E3780  3B E0 00 03 */	li r31, 3
/* 803E3784  48 00 00 68 */	b lbl_803E37EC
lbl_803E3788:
/* 803E3788  3B E0 00 04 */	li r31, 4
/* 803E378C  48 00 00 60 */	b lbl_803E37EC
lbl_803E3790:
/* 803E3790  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E3794  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E3798  3C 63 00 02 */	addis r3, r3, 2
/* 803E379C  A0 03 06 88 */	lhz r0, 0x688(r3)
/* 803E37A0  B0 01 00 08 */	sth r0, 8(r1)
/* 803E37A4  48 00 00 48 */	b lbl_803E37EC
lbl_803E37A8:
/* 803E37A8  3B E0 00 02 */	li r31, 2
/* 803E37AC  3B C0 00 02 */	li r30, 2
/* 803E37B0  48 00 00 3C */	b lbl_803E37EC
lbl_803E37B4:
/* 803E37B4  4B FC 67 35 */	bl mFI_GetOtherFruit
/* 803E37B8  B0 61 00 08 */	sth r3, 8(r1)
/* 803E37BC  48 00 00 30 */	b lbl_803E37EC
lbl_803E37C0:
/* 803E37C0  3B E0 00 00 */	li r31, 0
/* 803E37C4  3B C0 00 02 */	li r30, 2
/* 803E37C8  48 00 00 24 */	b lbl_803E37EC
lbl_803E37CC:
/* 803E37CC  3B C0 00 02 */	li r30, 2
/* 803E37D0  38 60 00 04 */	li r3, 4
/* 803E37D4  48 00 0B FD */	bl mQst_GetRandom
/* 803E37D8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 803E37DC  40 82 00 0C */	bne lbl_803E37E8
/* 803E37E0  3B E0 00 03 */	li r31, 3
/* 803E37E4  48 00 00 08 */	b lbl_803E37EC
lbl_803E37E8:
/* 803E37E8  3B E0 00 04 */	li r31, 4
lbl_803E37EC:
/* 803E37EC  2C 1F FF FF */	cmpwi r31, -1
/* 803E37F0  41 82 00 30 */	beq lbl_803E3820
/* 803E37F4  2C 1E FF FF */	cmpwi r30, -1
/* 803E37F8  41 82 00 28 */	beq lbl_803E3820
/* 803E37FC  7F E8 FB 78 */	mr r8, r31
/* 803E3800  7F C9 F3 78 */	mr r9, r30
/* 803E3804  38 81 00 08 */	addi r4, r1, 8
/* 803E3808  38 60 00 00 */	li r3, 0
/* 803E380C  38 A0 00 01 */	li r5, 1
/* 803E3810  38 C0 00 00 */	li r6, 0
/* 803E3814  38 E0 00 00 */	li r7, 0
/* 803E3818  39 40 00 00 */	li r10, 0
/* 803E381C  48 00 4B C1 */	bl mSP_SelectRandomItem_New
lbl_803E3820:
/* 803E3820  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E3824  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E3828  A0 61 00 08 */	lhz r3, 8(r1)
/* 803E382C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803E3830  7C 08 03 A6 */	mtlr r0
/* 803E3834  38 21 00 20 */	addi r1, r1, 0x20
/* 803E3838  4E 80 00 20 */	blr 
