lbl_8055C494:
/* 8055C494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055C498  7C 08 02 A6 */	mflr r0
/* 8055C49C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055C4A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055C4A4  7C 7F 1B 78 */	mr r31, r3
/* 8055C4A8  38 60 00 08 */	li r3, 8
/* 8055C4AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8055C4B0  7C 9E 23 78 */	mr r30, r4
/* 8055C4B4  7F E4 FB 78 */	mr r4, r31
/* 8055C4B8  4B E3 DD AD */	bl mDemo_Check
/* 8055C4BC  2C 03 00 00 */	cmpwi r3, 0
/* 8055C4C0  40 82 00 30 */	bne lbl_8055C4F0
/* 8055C4C4  7F E4 FB 78 */	mr r4, r31
/* 8055C4C8  38 60 00 07 */	li r3, 7
/* 8055C4CC  4B E3 DD 99 */	bl mDemo_Check
/* 8055C4D0  2C 03 00 00 */	cmpwi r3, 0
/* 8055C4D4  40 82 00 1C */	bne lbl_8055C4F0
/* 8055C4D8  38 00 00 00 */	li r0, 0
/* 8055C4DC  7F E3 FB 78 */	mr r3, r31
/* 8055C4E0  B0 1F 09 78 */	sth r0, 0x978(r31)
/* 8055C4E4  7F C4 F3 78 */	mr r4, r30
/* 8055C4E8  38 A0 00 3D */	li r5, 0x3d
/* 8055C4EC  48 00 28 E5 */	bl aNSC_setupAction
lbl_8055C4F0:
/* 8055C4F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055C4F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055C4F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055C4FC  7C 08 03 A6 */	mtlr r0
/* 8055C500  38 21 00 10 */	addi r1, r1, 0x10
/* 8055C504  4E 80 00 20 */	blr 
