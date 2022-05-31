lbl_80482C54:
/* 80482C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482C58  7C 08 02 A6 */	mflr r0
/* 80482C5C  38 A0 00 00 */	li r5, 0
/* 80482C60  38 C0 04 1C */	li r6, 0x41c
/* 80482C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80482C68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80482C6C  7C 7F 1B 78 */	mr r31, r3
/* 80482C70  93 C1 00 08 */	stw r30, 8(r1)
/* 80482C74  7C 9E 23 78 */	mr r30, r4
/* 80482C78  4B FF FC 6D */	bl aMR_DrawFurniture
/* 80482C7C  7F E3 FB 78 */	mr r3, r31
/* 80482C80  7F C4 F3 78 */	mr r4, r30
/* 80482C84  38 A0 00 01 */	li r5, 1
/* 80482C88  38 C0 04 1C */	li r6, 0x41c
/* 80482C8C  4B FF FC 59 */	bl aMR_DrawFurniture
/* 80482C90  7F E3 FB 78 */	mr r3, r31
/* 80482C94  7F C4 F3 78 */	mr r4, r30
/* 80482C98  4B FF FE C9 */	bl aMR_DrawLeaf
/* 80482C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80482CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80482CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80482CA8  7C 08 03 A6 */	mtlr r0
/* 80482CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80482CB0  4E 80 00 20 */	blr 
