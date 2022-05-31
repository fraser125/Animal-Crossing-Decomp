lbl_80384BFC:
/* 80384BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384C00  7C 08 02 A6 */	mflr r0
/* 80384C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80384C08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80384C0C  7C 9F 23 78 */	mr r31, r4
/* 80384C10  93 C1 00 08 */	stw r30, 8(r1)
/* 80384C14  7C 7E 1B 78 */	mr r30, r3
/* 80384C18  4B FF FB ED */	bl mChoice_Main_Normal_SetChoice
/* 80384C1C  7C 60 1B 78 */	mr r0, r3
/* 80384C20  7F C3 F3 78 */	mr r3, r30
/* 80384C24  7C 05 03 78 */	mr r5, r0
/* 80384C28  7F E4 FB 78 */	mr r4, r31
/* 80384C2C  4B FF FF A5 */	bl mChoice_request_main_index_fromNormal
/* 80384C30  7F C3 F3 78 */	mr r3, r30
/* 80384C34  7F E4 FB 78 */	mr r4, r31
/* 80384C38  4B FF E7 2D */	bl func_80383364
/* 80384C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80384C44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80384C48  7C 08 03 A6 */	mtlr r0
/* 80384C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80384C50  4E 80 00 20 */	blr 
