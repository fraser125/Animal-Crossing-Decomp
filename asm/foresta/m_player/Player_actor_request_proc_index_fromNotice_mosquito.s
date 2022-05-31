lbl_80505EFC:
/* 80505EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505F00  7C 08 02 A6 */	mflr r0
/* 80505F04  2C 05 00 00 */	cmpwi r5, 0
/* 80505F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505F0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80505F10  7C 9F 23 78 */	mr r31, r4
/* 80505F14  41 82 00 2C */	beq lbl_80505F40
/* 80505F18  4B FC F4 55 */	bl Player_actor_SettleRequestMainIndexPriority
/* 80505F1C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80505F20  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 80505F24  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 80505F28  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 80505F2C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80505F30  7F E3 FB 78 */	mr r3, r31
/* 80505F34  38 80 00 00 */	li r4, 0
/* 80505F38  38 A0 00 01 */	li r5, 1
/* 80505F3C  4B FD FC C1 */	bl func_804E5BFC
lbl_80505F40:
/* 80505F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80505F48  7C 08 03 A6 */	mtlr r0
/* 80505F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80505F50  4E 80 00 20 */	blr 
