lbl_80548850:
/* 80548850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80548854  7C 08 02 A6 */	mflr r0
/* 80548858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054885C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80548860  7C 7F 1B 78 */	mr r31, r3
/* 80548864  38 60 00 08 */	li r3, 8
/* 80548868  93 C1 00 08 */	stw r30, 8(r1)
/* 8054886C  7C 9E 23 78 */	mr r30, r4
/* 80548870  7F E4 FB 78 */	mr r4, r31
/* 80548874  4B E5 19 F1 */	bl mDemo_Check
/* 80548878  2C 03 00 00 */	cmpwi r3, 0
/* 8054887C  40 82 00 30 */	bne lbl_805488AC
/* 80548880  7F E4 FB 78 */	mr r4, r31
/* 80548884  38 60 00 07 */	li r3, 7
/* 80548888  4B E5 19 DD */	bl mDemo_Check
/* 8054888C  2C 03 00 00 */	cmpwi r3, 0
/* 80548890  40 82 00 1C */	bne lbl_805488AC
/* 80548894  38 00 00 00 */	li r0, 0
/* 80548898  7F E3 FB 78 */	mr r3, r31
/* 8054889C  B0 1F 09 B4 */	sth r0, 0x9b4(r31)
/* 805488A0  7F C4 F3 78 */	mr r4, r30
/* 805488A4  38 A0 00 3D */	li r5, 0x3d
/* 805488A8  48 00 26 75 */	bl aNSC_setupAction
lbl_805488AC:
/* 805488AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805488B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805488B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805488B8  7C 08 03 A6 */	mtlr r0
/* 805488BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805488C0  4E 80 00 20 */	blr 