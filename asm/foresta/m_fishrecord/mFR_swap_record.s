lbl_803AC020:
/* 803AC020  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AC024  7C 08 02 A6 */	mflr r0
/* 803AC028  38 A0 00 20 */	li r5, 0x20
/* 803AC02C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AC030  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803AC034  7C 9F 23 78 */	mr r31, r4
/* 803AC038  38 81 00 08 */	addi r4, r1, 8
/* 803AC03C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803AC040  7C 7E 1B 78 */	mr r30, r3
/* 803AC044  4B CB 0F D9 */	bl func_8005D01C
/* 803AC048  7F E3 FB 78 */	mr r3, r31
/* 803AC04C  7F C4 F3 78 */	mr r4, r30
/* 803AC050  38 A0 00 20 */	li r5, 0x20
/* 803AC054  4B CB 0F C9 */	bl func_8005D01C
/* 803AC058  7F E4 FB 78 */	mr r4, r31
/* 803AC05C  38 61 00 08 */	addi r3, r1, 8
/* 803AC060  38 A0 00 20 */	li r5, 0x20
/* 803AC064  4B CB 0F B9 */	bl func_8005D01C
/* 803AC068  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AC06C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803AC070  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803AC074  7C 08 03 A6 */	mtlr r0
/* 803AC078  38 21 00 30 */	addi r1, r1, 0x30
/* 803AC07C  4E 80 00 20 */	blr 
