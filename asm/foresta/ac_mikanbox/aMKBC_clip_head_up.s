lbl_805B375C:
/* 805B375C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B3760  7C 08 02 A6 */	mflr r0
/* 805B3764  3C 80 80 65 */	lis r4, lit_585@ha /* 0x8064A8F4@ha */
/* 805B3768  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B376C  38 C4 A8 F4 */	addi r6, r4, lit_585@l /* 0x8064A8F4@l */
/* 805B3770  C0 46 00 00 */	lfs f2, 0(r6)
/* 805B3774  3C 80 80 65 */	lis r4, lit_586@ha /* 0x8064A8F8@ha */
/* 805B3778  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805B377C  38 A4 A8 F8 */	addi r5, r4, lit_586@l /* 0x8064A8F8@l */
/* 805B3780  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B3784  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B3788  D0 01 00 08 */	stfs f0, 8(r1)
/* 805B378C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B3790  3C 84 00 02 */	addis r4, r4, 2
/* 805B3794  38 E1 00 08 */	addi r7, r1, 8
/* 805B3798  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805B379C  38 A0 00 02 */	li r5, 2
/* 805B37A0  81 04 60 4C */	lwz r8, 0x604c(r4)
/* 805B37A4  38 80 00 04 */	li r4, 4
/* 805B37A8  EC 02 00 2A */	fadds f0, f2, f0
/* 805B37AC  38 C0 00 00 */	li r6, 0
/* 805B37B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805B37B4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805B37B8  EC 01 00 2A */	fadds f0, f1, f0
/* 805B37BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805B37C0  81 88 01 0C */	lwz r12, 0x10c(r8)
/* 805B37C4  7D 89 03 A6 */	mtctr r12
/* 805B37C8  4E 80 04 21 */	bctrl 
/* 805B37CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B37D0  7C 08 03 A6 */	mtlr r0
/* 805B37D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805B37D8  4E 80 00 20 */	blr 
