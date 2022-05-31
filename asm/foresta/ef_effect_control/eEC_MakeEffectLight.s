lbl_804CD794:
/* 804CD794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD798  7C 08 02 A6 */	mflr r0
/* 804CD79C  3C 80 81 1D */	lis r4, data_811D0840@ha /* 0x811D0840@ha */
/* 804CD7A0  38 A0 00 7F */	li r5, 0x7f
/* 804CD7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD7A8  38 C0 00 00 */	li r6, 0
/* 804CD7AC  38 E0 00 00 */	li r7, 0
/* 804CD7B0  39 00 00 00 */	li r8, 0
/* 804CD7B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD7B8  39 20 00 00 */	li r9, 0
/* 804CD7BC  93 C1 00 08 */	stw r30, 8(r1)
/* 804CD7C0  7C 7E 1B 78 */	mr r30, r3
/* 804CD7C4  38 64 08 40 */	addi r3, r4, data_811D0840@l /* 0x811D0840@l */
/* 804CD7C8  38 80 00 00 */	li r4, 0
/* 804CD7CC  3B E3 24 98 */	addi r31, r3, 0x2498
/* 804CD7D0  7F E3 FB 78 */	mr r3, r31
/* 804CD7D4  4B EE E1 29 */	bl Light_diffuse_ct
/* 804CD7D8  7F C3 F3 78 */	mr r3, r30
/* 804CD7DC  7F E5 FB 78 */	mr r5, r31
/* 804CD7E0  38 9E 1D 90 */	addi r4, r30, 0x1d90
/* 804CD7E4  4B EE E9 99 */	bl Global_light_list_new
/* 804CD7E8  3C 80 81 1D */	lis r4, data_811D0840@ha /* 0x811D0840@ha */
/* 804CD7EC  38 84 08 40 */	addi r4, r4, data_811D0840@l /* 0x811D0840@l */
/* 804CD7F0  90 64 24 A8 */	stw r3, 0x24a8(r4)
/* 804CD7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CD7F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804CD7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD800  7C 08 03 A6 */	mtlr r0
/* 804CD804  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD808  4E 80 00 20 */	blr 
