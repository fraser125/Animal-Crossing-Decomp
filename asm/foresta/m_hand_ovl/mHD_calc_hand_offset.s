lbl_805DD13C:
/* 805DD13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DD140  7C 08 02 A6 */	mflr r0
/* 805DD144  3C 80 80 6D */	lis r4, mHD_hand_offsetX_table@ha /* 0x806CD064@ha */
/* 805DD148  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DD14C  38 84 D0 64 */	addi r4, r4, mHD_hand_offsetX_table@l /* 0x806CD064@l */
/* 805DD150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DD154  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DD158  3C 60 80 65 */	lis r3, lit_438@ha /* 0x8064B2A0@ha */
/* 805DD15C  C0 43 B2 A0 */	lfs f2, lit_438@l(r3)  /* 0x8064B2A0@l */
/* 805DD160  83 E5 09 80 */	lwz r31, 0x980(r5)
/* 805DD164  A8 1F 02 30 */	lha r0, 0x230(r31)
/* 805DD168  38 7F 00 0C */	addi r3, r31, 0xc
/* 805DD16C  54 00 10 3A */	slwi r0, r0, 2
/* 805DD170  7C 24 04 2E */	lfsx f1, r4, r0
/* 805DD174  4B DD DA F5 */	bl chase_f
/* 805DD178  A8 1F 02 30 */	lha r0, 0x230(r31)
/* 805DD17C  3C A0 80 6D */	lis r5, mHD_hand_offsetY_table@ha /* 0x806CD080@ha */
/* 805DD180  3C 80 80 65 */	lis r4, lit_438@ha /* 0x8064B2A0@ha */
/* 805DD184  38 7F 00 10 */	addi r3, r31, 0x10
/* 805DD188  54 00 10 3A */	slwi r0, r0, 2
/* 805DD18C  38 A5 D0 80 */	addi r5, r5, mHD_hand_offsetY_table@l /* 0x806CD080@l */
/* 805DD190  C0 44 B2 A0 */	lfs f2, lit_438@l(r4)  /* 0x8064B2A0@l */
/* 805DD194  7C 25 04 2E */	lfsx f1, r5, r0
/* 805DD198  4B DD DA D1 */	bl chase_f
/* 805DD19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DD1A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DD1A4  7C 08 03 A6 */	mtlr r0
/* 805DD1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805DD1AC  4E 80 00 20 */	blr 
