lbl_8057BB88:
/* 8057BB88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057BB8C  7C 08 02 A6 */	mflr r0
/* 8057BB90  38 80 00 01 */	li r4, 1
/* 8057BB94  38 A0 00 00 */	li r5, 0
/* 8057BB98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057BB9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057BBA0  7C 7F 1B 78 */	mr r31, r3
/* 8057BBA4  38 60 00 04 */	li r3, 4
/* 8057BBA8  4B E1 C8 91 */	bl mDemo_Set_OrderValue
/* 8057BBAC  7F E3 FB 78 */	mr r3, r31
/* 8057BBB0  4B FF B7 FD */	bl aNSC_set_walk_spd
/* 8057BBB4  4B AE 11 41 */	bl fqrand
/* 8057BBB8  3C 80 80 65 */	lis r4, lit_553@ha /* 0x806499B4@ha */
/* 8057BBBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057BBC0  C0 04 99 B4 */	lfs f0, lit_553@l(r4)  /* 0x806499B4@l */
/* 8057BBC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057BBC8  3C 63 00 02 */	addis r3, r3, 2
/* 8057BBCC  38 A0 00 01 */	li r5, 1
/* 8057BBD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8057BBD4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8057BBD8  FC 00 00 1E */	fctiwz f0, f0
/* 8057BBDC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8057BBE0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8057BBE4  38 04 22 44 */	addi r0, r4, 0x2244
/* 8057BBE8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8057BBEC  4B E6 53 1D */	bl mPr_SetFreePossessionItem
/* 8057BBF0  4B E4 3A B9 */	bl func_803BF6A8
/* 8057BBF4  4B E4 51 4D */	bl mMsg_Set_LockContinue
/* 8057BBF8  38 00 00 01 */	li r0, 1
/* 8057BBFC  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 8057BC00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057BC04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057BC08  7C 08 03 A6 */	mtlr r0
/* 8057BC0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8057BC10  4E 80 00 20 */	blr 
