lbl_803E6804:
/* 803E6804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E6808  7C 08 02 A6 */	mflr r0
/* 803E680C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803E6810  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E6814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E6818  7C 7F 1B 78 */	mr r31, r3
/* 803E681C  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803E6820  80 63 00 00 */	lwz r3, 0(r3)
/* 803E6824  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 803E6828  54 00 04 E6 */	rlwinm r0, r0, 0, 0x13, 0x13
/* 803E682C  2C 00 10 00 */	cmpwi r0, 0x1000
/* 803E6830  40 82 00 18 */	bne lbl_803E6848
/* 803E6834  3C 60 81 17 */	lis r3, mRmTp_famicom_idx@ha /* 0x81171438@ha */
/* 803E6838  38 83 14 38 */	addi r4, r3, mRmTp_famicom_idx@l /* 0x81171438@l */
/* 803E683C  80 64 00 00 */	lwz r3, 0(r4)
/* 803E6840  38 03 00 01 */	addi r0, r3, 1
/* 803E6844  90 04 00 00 */	stw r0, 0(r4)
lbl_803E6848:
/* 803E6848  3C 60 81 17 */	lis r3, mRmTp_famicom_idx@ha /* 0x81171438@ha */
/* 803E684C  84 03 14 38 */	lwzu r0, mRmTp_famicom_idx@l(r3)  /* 0x81171438@l */
/* 803E6850  2C 00 00 00 */	cmpwi r0, 0
/* 803E6854  40 80 00 0C */	bge lbl_803E6860
/* 803E6858  38 00 00 14 */	li r0, 0x14
/* 803E685C  90 03 00 00 */	stw r0, 0(r3)
lbl_803E6860:
/* 803E6860  3C 60 81 17 */	lis r3, mRmTp_famicom_idx@ha /* 0x81171438@ha */
/* 803E6864  84 03 14 38 */	lwzu r0, mRmTp_famicom_idx@l(r3)  /* 0x81171438@l */
/* 803E6868  2C 00 00 15 */	cmpwi r0, 0x15
/* 803E686C  41 80 00 0C */	blt lbl_803E6878
/* 803E6870  38 00 00 00 */	li r0, 0
/* 803E6874  90 03 00 00 */	stw r0, 0(r3)
lbl_803E6878:
/* 803E6878  7F E3 FB 78 */	mr r3, r31
/* 803E687C  38 80 00 C8 */	li r4, 0xc8
/* 803E6880  38 A0 00 C8 */	li r5, 0xc8
/* 803E6884  38 C0 00 FA */	li r6, 0xfa
/* 803E6888  38 E0 00 FF */	li r7, 0xff
/* 803E688C  4B C7 49 15 */	bl gfxprint_color
/* 803E6890  7F E3 FB 78 */	mr r3, r31
/* 803E6894  38 80 00 03 */	li r4, 3
/* 803E6898  38 A0 00 1A */	li r5, 0x1a
/* 803E689C  4B C7 49 75 */	bl gfxprint_locate8x8
/* 803E68A0  3C 60 81 17 */	lis r3, mRmTp_famicom_idx@ha /* 0x81171438@ha */
/* 803E68A4  3C 80 80 66 */	lis r4, lit_812@ha /* 0x8065D4C8@ha */
/* 803E68A8  38 A3 14 38 */	addi r5, r3, mRmTp_famicom_idx@l /* 0x81171438@l */
/* 803E68AC  80 A5 00 00 */	lwz r5, 0(r5)
/* 803E68B0  7F E3 FB 78 */	mr r3, r31
/* 803E68B4  38 84 D4 C8 */	addi r4, r4, lit_812@l /* 0x8065D4C8@l */
/* 803E68B8  4C C6 31 82 */	crclr 6
/* 803E68BC  4B C7 50 61 */	bl gfxprint_printf
/* 803E68C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E68C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E68C8  7C 08 03 A6 */	mtlr r0
/* 803E68CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E68D0  4E 80 00 20 */	blr 
