lbl_8042E588:
/* 8042E588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042E58C  7C 08 02 A6 */	mflr r0
/* 8042E590  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042E594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042E598  7C 9F 23 78 */	mr r31, r4
/* 8042E59C  93 C1 00 08 */	stw r30, 8(r1)
/* 8042E5A0  7C 7E 1B 78 */	mr r30, r3
/* 8042E5A4  38 7E 01 74 */	addi r3, r30, 0x174
/* 8042E5A8  4B FF FC 31 */	bl aMSN_DrawDustcloth
/* 8042E5AC  7F E4 FB 78 */	mr r4, r31
/* 8042E5B0  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8042E5B4  4B FF FE D5 */	bl aMSN_DrawMisin
/* 8042E5B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042E5BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042E5C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042E5C4  7C 08 03 A6 */	mtlr r0
/* 8042E5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042E5CC  4E 80 00 20 */	blr 
