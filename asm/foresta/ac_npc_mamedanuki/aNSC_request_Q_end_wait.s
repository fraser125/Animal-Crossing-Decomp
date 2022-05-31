lbl_8055C860:
/* 8055C860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C864  7C 08 02 A6 */	mflr r0
/* 8055C868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C86C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C870  7C 7F 1B 78 */	mr r31, r3
/* 8055C874  38 60 00 08 */	li r3, 8
/* 8055C878  93 C1 00 08 */	stw r30, 8(r1)
/* 8055C87C  7C 9E 23 78 */	mr r30, r4
/* 8055C880  7F E4 FB 78 */	mr r4, r31
/* 8055C884  4B E3 D9 E1 */	bl mDemo_Check
/* 8055C888  2C 03 00 00 */	cmpwi r3, 0
/* 8055C88C  40 82 00 30 */	bne lbl_8055C8BC
/* 8055C890  7F E4 FB 78 */	mr r4, r31
/* 8055C894  38 60 00 07 */	li r3, 7
/* 8055C898  4B E3 D9 CD */	bl mDemo_Check
/* 8055C89C  2C 03 00 00 */	cmpwi r3, 0
/* 8055C8A0  40 82 00 1C */	bne lbl_8055C8BC
/* 8055C8A4  38 00 00 00 */	li r0, 0
/* 8055C8A8  7F E3 FB 78 */	mr r3, r31
/* 8055C8AC  B0 1F 09 B4 */	sth r0, 0x9b4(r31)
/* 8055C8B0  7F C4 F3 78 */	mr r4, r30
/* 8055C8B4  38 A0 00 3D */	li r5, 0x3d
/* 8055C8B8  48 00 25 19 */	bl aNSC_setupAction
lbl_8055C8BC:
/* 8055C8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C8C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055C8C8  7C 08 03 A6 */	mtlr r0
/* 8055C8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C8D0  4E 80 00 20 */	blr 
