lbl_8042CD1C:
/* 8042CD1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042CD20  7C 08 02 A6 */	mflr r0
/* 8042CD24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042CD28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042CD2C  7C 9F 23 78 */	mr r31, r4
/* 8042CD30  93 C1 00 08 */	stw r30, 8(r1)
/* 8042CD34  7C 7E 1B 78 */	mr r30, r3
/* 8042CD38  4B FF FA 91 */	bl aLS_GetNowPoleAnimeSpeed
/* 8042CD3C  7F C3 F3 78 */	mr r3, r30
/* 8042CD40  7F E4 FB 78 */	mr r4, r31
/* 8042CD44  4B FF FF 8D */	bl aLS_PolePlayKeyAnime
/* 8042CD48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042CD4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042CD50  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042CD54  7C 08 03 A6 */	mtlr r0
/* 8042CD58  38 21 00 10 */	addi r1, r1, 0x10
/* 8042CD5C  4E 80 00 20 */	blr 
