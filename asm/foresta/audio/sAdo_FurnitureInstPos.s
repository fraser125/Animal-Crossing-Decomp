lbl_8062E750:
/* 8062E750  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062E754  7C 08 02 A6 */	mflr r0
/* 8062E758  7C 85 23 78 */	mr r5, r4
/* 8062E75C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062E760  38 81 00 08 */	addi r4, r1, 8
/* 8062E764  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062E768  7C 7F 1B 78 */	mr r31, r3
/* 8062E76C  38 61 00 0C */	addi r3, r1, 0xc
/* 8062E770  4B FF F5 15 */	bl sAdo_Calc_MicPosition_forLevel
/* 8062E774  A0 81 00 08 */	lhz r4, 8(r1)
/* 8062E778  7F E3 FB 78 */	mr r3, r31
/* 8062E77C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062E780  4B 9E 6A 65 */	bl Na_FurnitureInstPos
/* 8062E784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062E788  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062E78C  7C 08 03 A6 */	mtlr r0
/* 8062E790  38 21 00 20 */	addi r1, r1, 0x20
/* 8062E794  4E 80 00 20 */	blr 
