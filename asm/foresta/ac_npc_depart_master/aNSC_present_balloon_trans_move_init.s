lbl_80551F08:
/* 80551F08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80551F0C  7C 08 02 A6 */	mflr r0
/* 80551F10  38 80 00 01 */	li r4, 1
/* 80551F14  38 A0 00 00 */	li r5, 0
/* 80551F18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80551F1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80551F20  7C 7F 1B 78 */	mr r31, r3
/* 80551F24  38 60 00 04 */	li r3, 4
/* 80551F28  4B E4 65 11 */	bl mDemo_Set_OrderValue
/* 80551F2C  7F E3 FB 78 */	mr r3, r31
/* 80551F30  4B FF B7 FD */	bl aNSC_set_walk_spd
/* 80551F34  4B B0 AD C1 */	bl fqrand
/* 80551F38  3C 80 80 65 */	lis r4, lit_578@ha /* 0x806494E8@ha */
/* 80551F3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80551F40  C0 04 94 E8 */	lfs f0, lit_578@l(r4)  /* 0x806494E8@l */
/* 80551F44  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80551F48  3C 63 00 02 */	addis r3, r3, 2
/* 80551F4C  38 A0 00 01 */	li r5, 1
/* 80551F50  EC 00 00 72 */	fmuls f0, f0, f1
/* 80551F54  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80551F58  FC 00 00 1E */	fctiwz f0, f0
/* 80551F5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80551F60  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80551F64  38 04 22 44 */	addi r0, r4, 0x2244
/* 80551F68  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80551F6C  4B E8 EF 9D */	bl mPr_SetFreePossessionItem
/* 80551F70  4B E6 D7 39 */	bl func_803BF6A8
/* 80551F74  4B E6 ED CD */	bl mMsg_Set_LockContinue
/* 80551F78  38 00 00 01 */	li r0, 1
/* 80551F7C  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 80551F80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80551F84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80551F88  7C 08 03 A6 */	mtlr r0
/* 80551F8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80551F90  4E 80 00 20 */	blr 
