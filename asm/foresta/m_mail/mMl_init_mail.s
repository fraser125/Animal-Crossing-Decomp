lbl_803BC84C:
/* 803BC84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC850  7C 08 02 A6 */	mflr r0
/* 803BC854  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BC85C  7C 9F 23 78 */	mr r31, r4
/* 803BC860  93 C1 00 08 */	stw r30, 8(r1)
/* 803BC864  7C 7E 1B 78 */	mr r30, r3
/* 803BC868  4B FF FE 99 */	bl mMl_clear_mail
/* 803BC86C  7F C3 F3 78 */	mr r3, r30
/* 803BC870  7F E4 FB 78 */	mr r4, r31
/* 803BC874  4B FF FF A1 */	bl mMl_set_playername
/* 803BC878  38 60 00 01 */	li r3, 1
/* 803BC87C  38 00 00 00 */	li r0, 0
/* 803BC880  98 7E 00 2E */	stb r3, 0x2e(r30)
/* 803BC884  98 1E 00 30 */	stb r0, 0x30(r30)
/* 803BC888  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803BC88C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC890  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BC894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC898  7C 08 03 A6 */	mtlr r0
/* 803BC89C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC8A0  4E 80 00 20 */	blr 
