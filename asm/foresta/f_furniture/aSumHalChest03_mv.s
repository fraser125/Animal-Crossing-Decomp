lbl_80637DD8:
/* 80637DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637DDC  7C 08 02 A6 */	mflr r0
/* 80637DE0  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80637DE4  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80637DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637DEC  3C C6 00 02 */	addis r6, r6, 2
/* 80637DF0  81 06 60 8C */	lwz r8, 0x608c(r6)
/* 80637DF4  28 08 00 00 */	cmplwi r8, 0
/* 80637DF8  41 82 00 20 */	beq lbl_80637E18
/* 80637DFC  81 88 00 34 */	lwz r12, 0x34(r8)
/* 80637E00  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 80637E04  3C C0 80 65 */	lis r6, lit_627@ha /* 0x8064D290@ha */
/* 80637E08  C0 27 D2 74 */	lfs f1, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 80637E0C  C0 46 D2 90 */	lfs f2, lit_627@l(r6)  /* 0x8064D290@l */
/* 80637E10  7D 89 03 A6 */	mtctr r12
/* 80637E14  4E 80 04 21 */	bctrl 
lbl_80637E18:
/* 80637E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637E1C  7C 08 03 A6 */	mtlr r0
/* 80637E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80637E24  4E 80 00 20 */	blr 
