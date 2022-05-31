lbl_80565E54:
/* 80565E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565E58  7C 08 02 A6 */	mflr r0
/* 80565E5C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80565E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565E64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80565E68  7C 9F 23 78 */	mr r31, r4
/* 80565E6C  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 80565E70  93 C1 00 08 */	stw r30, 8(r1)
/* 80565E74  3C A4 00 02 */	addis r5, r4, 2
/* 80565E78  7C 7E 1B 78 */	mr r30, r3
/* 80565E7C  38 80 00 7A */	li r4, 0x7a
/* 80565E80  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 80565E84  38 A0 00 00 */	li r5, 0
/* 80565E88  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80565E8C  7D 89 03 A6 */	mtctr r12
/* 80565E90  4E 80 04 21 */	bctrl 
/* 80565E94  38 60 00 01 */	li r3, 1
/* 80565E98  38 00 00 00 */	li r0, 0
/* 80565E9C  90 7E 01 BC */	stw r3, 0x1bc(r30)
/* 80565EA0  7F C3 F3 78 */	mr r3, r30
/* 80565EA4  7F E4 FB 78 */	mr r4, r31
/* 80565EA8  98 1E 07 F5 */	stb r0, 0x7f5(r30)
/* 80565EAC  4B FF FF 71 */	bl aNNW_normal_wait_init
/* 80565EB0  88 1E 09 BB */	lbz r0, 0x9bb(r30)
/* 80565EB4  28 00 00 00 */	cmplwi r0, 0
/* 80565EB8  41 82 00 18 */	beq lbl_80565ED0
/* 80565EBC  3C 60 80 65 */	lis r3, lit_1827@ha /* 0x806497B8@ha */
/* 80565EC0  38 00 00 01 */	li r0, 1
/* 80565EC4  98 1E 07 52 */	stb r0, 0x752(r30)
/* 80565EC8  C0 03 97 B8 */	lfs f0, lit_1827@l(r3)  /* 0x806497B8@l */
/* 80565ECC  D0 1E 07 64 */	stfs f0, 0x764(r30)
lbl_80565ED0:
/* 80565ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80565ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80565ED8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80565EDC  7C 08 03 A6 */	mtlr r0
/* 80565EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80565EE4  4E 80 00 20 */	blr 
