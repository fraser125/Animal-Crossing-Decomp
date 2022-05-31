lbl_805089B4:
/* 805089B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805089B8  7C 08 02 A6 */	mflr r0
/* 805089BC  2C 05 00 00 */	cmpwi r5, 0
/* 805089C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805089C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805089C8  7C 9F 23 78 */	mr r31, r4
/* 805089CC  41 82 00 2C */	beq lbl_805089F8
/* 805089D0  4B FC C9 9D */	bl Player_actor_SettleRequestMainIndexPriority
/* 805089D4  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 805089D8  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 805089DC  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 805089E0  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 805089E4  C0 25 00 00 */	lfs f1, 0(r5)
/* 805089E8  7F E3 FB 78 */	mr r3, r31
/* 805089EC  38 80 00 00 */	li r4, 0
/* 805089F0  38 A0 00 01 */	li r5, 1
/* 805089F4  4B FD D2 09 */	bl func_804E5BFC
lbl_805089F8:
/* 805089F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805089FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80508A00  7C 08 03 A6 */	mtlr r0
/* 80508A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80508A08  4E 80 00 20 */	blr 
