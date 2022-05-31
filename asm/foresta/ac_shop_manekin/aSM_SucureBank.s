lbl_8049FE68:
/* 8049FE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049FE6C  7C 08 02 A6 */	mflr r0
/* 8049FE70  38 80 00 20 */	li r4, 0x20
/* 8049FE74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049FE78  4B F1 C5 B1 */	bl func_803BC428
/* 8049FE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049FE80  7C 08 03 A6 */	mtlr r0
/* 8049FE84  38 21 00 10 */	addi r1, r1, 0x10
/* 8049FE88  4E 80 00 20 */	blr 
