lbl_80520898:
/* 80520898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052089C  7C 08 02 A6 */	mflr r0
/* 805208A0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805208A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805208A8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805208AC  3C C5 00 02 */	addis r6, r5, 2
/* 805208B0  38 80 00 7E */	li r4, 0x7e
/* 805208B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805208B8  7C 7F 1B 78 */	mr r31, r3
/* 805208BC  38 A0 00 00 */	li r5, 0
/* 805208C0  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 805208C4  81 86 01 14 */	lwz r12, 0x114(r6)
/* 805208C8  7D 89 03 A6 */	mtctr r12
/* 805208CC  4E 80 04 21 */	bctrl 
/* 805208D0  38 60 00 01 */	li r3, 1
/* 805208D4  38 00 00 00 */	li r0, 0
/* 805208D8  90 7F 01 BC */	stw r3, 0x1bc(r31)
/* 805208DC  7F E3 FB 78 */	mr r3, r31
/* 805208E0  38 80 00 04 */	li r4, 4
/* 805208E4  38 A0 00 00 */	li r5, 0
/* 805208E8  98 1F 07 F5 */	stb r0, 0x7f5(r31)
/* 805208EC  38 C0 00 00 */	li r6, 0
/* 805208F0  38 E0 00 00 */	li r7, 0
/* 805208F4  39 00 00 00 */	li r8, 0
/* 805208F8  39 20 00 00 */	li r9, 0
/* 805208FC  4B FF E9 F5 */	bl aEGH_set_request_act
/* 80520900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80520904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80520908  7C 08 03 A6 */	mtlr r0
/* 8052090C  38 21 00 10 */	addi r1, r1, 0x10
/* 80520910  4E 80 00 20 */	blr 
