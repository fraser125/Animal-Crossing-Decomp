lbl_8060B7FC:
/* 8060B7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060B800  7C 08 02 A6 */	mflr r0
/* 8060B804  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060B808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060B80C  7C 7F 1B 78 */	mr r31, r3
/* 8060B810  A8 03 00 00 */	lha r0, 0(r3)
/* 8060B814  20 00 00 05 */	subfic r0, r0, 5
/* 8060B818  7C 03 07 34 */	extsh r3, r0
/* 8060B81C  2C 03 00 04 */	cmpwi r3, 4
/* 8060B820  41 81 00 48 */	bgt lbl_8060B868
/* 8060B824  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8060B828  3C A0 80 65 */	lis r5, lit_402@ha /* 0x8064BF9C@ha */
/* 8060B82C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8060B830  3C C0 80 65 */	lis r6, lit_403@ha /* 0x8064BFA0@ha */
/* 8060B834  3C 84 00 02 */	addis r4, r4, 2
/* 8060B838  38 E5 BF 9C */	addi r7, r5, lit_402@l /* 0x8064BF9C@l */
/* 8060B83C  80 A4 60 9C */	lwz r5, 0x609c(r4)
/* 8060B840  38 80 00 00 */	li r4, 0
/* 8060B844  C0 27 00 00 */	lfs f1, 0(r7)
/* 8060B848  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8060B84C  81 85 00 14 */	lwz r12, 0x14(r5)
/* 8060B850  38 A0 00 02 */	li r5, 2
/* 8060B854  EC 21 00 32 */	fmuls f1, f1, f0
/* 8060B858  C0 46 BF A0 */	lfs f2, lit_403@l(r6)  /* 0x8064BFA0@l */
/* 8060B85C  7D 89 03 A6 */	mtctr r12
/* 8060B860  4E 80 04 21 */	bctrl 
/* 8060B864  48 00 00 44 */	b lbl_8060B8A8
lbl_8060B868:
/* 8060B868  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8060B86C  3C A0 80 65 */	lis r5, lit_403@ha /* 0x8064BFA0@ha */
/* 8060B870  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8060B874  3C C0 80 65 */	lis r6, lit_404@ha /* 0x8064BFA4@ha */
/* 8060B878  3C 84 00 02 */	addis r4, r4, 2
/* 8060B87C  38 E5 BF A0 */	addi r7, r5, lit_403@l /* 0x8064BFA0@l */
/* 8060B880  80 A4 60 9C */	lwz r5, 0x609c(r4)
/* 8060B884  38 80 00 03 */	li r4, 3
/* 8060B888  C0 27 00 00 */	lfs f1, 0(r7)
/* 8060B88C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8060B890  81 85 00 14 */	lwz r12, 0x14(r5)
/* 8060B894  38 A0 00 04 */	li r5, 4
/* 8060B898  EC 21 00 32 */	fmuls f1, f1, f0
/* 8060B89C  C0 46 BF A4 */	lfs f2, lit_404@l(r6)  /* 0x8064BFA4@l */
/* 8060B8A0  7D 89 03 A6 */	mtctr r12
/* 8060B8A4  4E 80 04 21 */	bctrl 
lbl_8060B8A8:
/* 8060B8A8  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8060B8AC  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8060B8B0  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 8060B8B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060B8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060B8BC  7C 08 03 A6 */	mtlr r0
/* 8060B8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8060B8C4  4E 80 00 20 */	blr 
