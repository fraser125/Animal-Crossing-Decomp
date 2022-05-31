lbl_803BC700:
/* 803BC700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC704  7C 08 02 A6 */	mflr r0
/* 803BC708  38 80 01 2A */	li r4, 0x12a
/* 803BC70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BC714  7C 7F 1B 78 */	mr r31, r3
/* 803BC718  4B CA 09 51 */	bl bzero
/* 803BC71C  7F E3 FB 78 */	mr r3, r31
/* 803BC720  4B FF FF 9D */	bl mMl_clear_mail_header
/* 803BC724  38 7F 00 32 */	addi r3, r31, 0x32
/* 803BC728  38 80 00 F8 */	li r4, 0xf8
/* 803BC72C  38 A0 00 20 */	li r5, 0x20
/* 803BC730  4B FF E3 19 */	bl mem_clear
/* 803BC734  38 00 00 FF */	li r0, 0xff
/* 803BC738  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 803BC73C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC744  7C 08 03 A6 */	mtlr r0
/* 803BC748  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC74C  4E 80 00 20 */	blr 
