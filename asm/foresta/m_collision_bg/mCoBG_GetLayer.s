lbl_803918FC:
/* 803918FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80391900  7C 08 02 A6 */	mflr r0
/* 80391904  3C 80 80 64 */	lis r4, data_806419A4@ha /* 0x806419A4@ha */
/* 80391908  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039190C  C0 24 19 A4 */	lfs f1, data_806419A4@l(r4)  /* 0x806419A4@l */
/* 80391910  80 C3 00 00 */	lwz r6, 0(r3)
/* 80391914  80 A3 00 04 */	lwz r5, 4(r3)
/* 80391918  80 03 00 08 */	lwz r0, 8(r3)
/* 8039191C  38 61 00 08 */	addi r3, r1, 8
/* 80391920  90 C1 00 08 */	stw r6, 8(r1)
/* 80391924  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80391928  90 01 00 10 */	stw r0, 0x10(r1)
/* 8039192C  4B FF E0 6D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80391930  4B FF FF 55 */	bl mCoBG_Height2GetLayer
/* 80391934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80391938  7C 08 03 A6 */	mtlr r0
/* 8039193C  38 21 00 20 */	addi r1, r1, 0x20
/* 80391940  4E 80 00 20 */	blr 
