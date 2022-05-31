lbl_80523C88:
/* 80523C88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80523C8C  7C 08 02 A6 */	mflr r0
/* 80523C90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80523C94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80523C98  7C 7F 1B 78 */	mr r31, r3
/* 80523C9C  4B E9 BA 0D */	bl func_803BF6A8
/* 80523CA0  7F E5 FB 78 */	mr r5, r31
/* 80523CA4  38 80 00 00 */	li r4, 0
/* 80523CA8  38 C0 00 08 */	li r6, 8
/* 80523CAC  4B E9 BF A9 */	bl mMsg_Set_free_str
/* 80523CB0  4B B3 90 45 */	bl fqrand
/* 80523CB4  3C 60 80 65 */	lis r3, data_8064917C@ha /* 0x8064917C@ha */
/* 80523CB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80523CBC  C0 03 91 7C */	lfs f0, data_8064917C@l(r3)  /* 0x8064917C@l */
/* 80523CC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80523CC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80523CC8  FC 00 00 1E */	fctiwz f0, f0
/* 80523CCC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80523CD0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80523CD4  38 63 00 03 */	addi r3, r3, 3
/* 80523CD8  7C 08 03 A6 */	mtlr r0
/* 80523CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80523CE0  4E 80 00 20 */	blr 
