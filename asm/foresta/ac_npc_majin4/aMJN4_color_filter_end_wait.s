lbl_805593C4:
/* 805593C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805593C8  7C 08 02 A6 */	mflr r0
/* 805593CC  3C A0 81 1F */	lis r5, data_811EC1F8@ha /* 0x811EC1F8@ha */
/* 805593D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805593D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805593D8  8B E5 C1 F8 */	lbz r31, data_811EC1F8@l(r5)  /* 0x811EC1F8@l */
/* 805593DC  37 FF FF F8 */	addic. r31, r31, -8
/* 805593E0  40 80 00 10 */	bge lbl_805593F0
/* 805593E4  3B E0 00 00 */	li r31, 0
/* 805593E8  38 A0 00 05 */	li r5, 5
/* 805593EC  48 00 03 15 */	bl aMJN4_setup_think_proc
lbl_805593F0:
/* 805593F0  3C 60 81 1F */	lis r3, data_811EC1F8@ha /* 0x811EC1F8@ha */
/* 805593F4  9B E3 C1 F8 */	stb r31, data_811EC1F8@l(r3)  /* 0x811EC1F8@l */
/* 805593F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805593FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80559400  7C 08 03 A6 */	mtlr r0
/* 80559404  38 21 00 10 */	addi r1, r1, 0x10
/* 80559408  4E 80 00 20 */	blr 
