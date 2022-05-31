lbl_80637C84:
/* 80637C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637C88  7C 08 02 A6 */	mflr r0
/* 80637C8C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80637C90  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80637C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637C98  3C C6 00 02 */	addis r6, r6, 2
/* 80637C9C  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 80637CA0  28 08 00 00 */	cmplwi r8, 0
/* 80637CA4  41 82 00 20 */	beq lbl_80637CC4
/* 80637CA8  81 88 00 34 */	lwz r12, 0x34(r8)
/* 80637CAC  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 80637CB0  3C C0 80 65 */	lis r6, lit_1282@ha /* 0x8064D2D8@ha */
/* 80637CB4  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 80637CB8  C0 46 D2 D8 */	lfs f2, lit_1282@l(r6)  /* 0x8064D2D8@l */
/* 80637CBC  7D 89 03 A6 */	mtctr r12
/* 80637CC0  4E 80 04 21 */	bctrl 
lbl_80637CC4:
/* 80637CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637CC8  7C 08 03 A6 */	mtlr r0
/* 80637CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80637CD0  4E 80 00 20 */	blr 
