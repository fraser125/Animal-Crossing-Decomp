lbl_805B2D64:
/* 805B2D64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B2D68  7C 08 02 A6 */	mflr r0
/* 805B2D6C  38 A0 00 00 */	li r5, 0
/* 805B2D70  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B2D74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B2D78  7C 9F 23 78 */	mr r31, r4
/* 805B2D7C  38 81 00 08 */	addi r4, r1, 8
/* 805B2D80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B2D84  7C 7E 1B 78 */	mr r30, r3
/* 805B2D88  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F11B@ha */
/* 805B2D8C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 805B2D90  38 63 F1 1B */	addi r3, r3, 0xF11B /* 0x0000F11B@l */
/* 805B2D94  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 805B2D98  90 C1 00 08 */	stw r6, 8(r1)
/* 805B2D9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B2DA0  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 805B2DA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B2DA8  4B DF 4A 89 */	bl mFI_SetFG_common
/* 805B2DAC  7F C3 F3 78 */	mr r3, r30
/* 805B2DB0  7F E4 FB 78 */	mr r4, r31
/* 805B2DB4  4B FF FF 3D */	bl aLOT_actor_move
/* 805B2DB8  3C 60 80 5B */	lis r3, aLOT_actor_move@ha /* 0x805B2CF0@ha */
/* 805B2DBC  38 03 2C F0 */	addi r0, r3, aLOT_actor_move@l /* 0x805B2CF0@l */
/* 805B2DC0  90 1E 01 64 */	stw r0, 0x164(r30)
/* 805B2DC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B2DC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B2DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B2DD0  7C 08 03 A6 */	mtlr r0
/* 805B2DD4  38 21 00 20 */	addi r1, r1, 0x20
/* 805B2DD8  4E 80 00 20 */	blr 
