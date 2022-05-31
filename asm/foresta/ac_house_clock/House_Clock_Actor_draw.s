lbl_8042A73C:
/* 8042A73C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042A740  7C 08 02 A6 */	mflr r0
/* 8042A744  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042A748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042A74C  7C 9F 23 78 */	mr r31, r4
/* 8042A750  93 C1 00 08 */	stw r30, 8(r1)
/* 8042A754  7C 7E 1B 78 */	mr r30, r3
/* 8042A758  4B FF FC 5D */	bl aHC_SetEnvMapping
/* 8042A75C  7F C3 F3 78 */	mr r3, r30
/* 8042A760  7F E4 FB 78 */	mr r4, r31
/* 8042A764  4B FF FF 11 */	bl aHC_DrawClock
/* 8042A768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042A76C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042A770  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042A774  7C 08 03 A6 */	mtlr r0
/* 8042A778  38 21 00 10 */	addi r1, r1, 0x10
/* 8042A77C  4E 80 00 20 */	blr 
