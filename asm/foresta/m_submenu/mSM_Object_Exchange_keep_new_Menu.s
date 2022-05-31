lbl_803F049C:
/* 803F049C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F04A0  7C 08 02 A6 */	mflr r0
/* 803F04A4  38 80 00 00 */	li r4, 0
/* 803F04A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F04AC  38 00 00 00 */	li r0, 0
/* 803F04B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F04B4  7C 7F 1B 78 */	mr r31, r3
/* 803F04B8  98 03 1F A4 */	stb r0, 0x1fa4(r3)
/* 803F04BC  4B FF FF 55 */	bl mSM_Object_Exchange_keep_new_MenuTexAndPallet
/* 803F04C0  7F E3 FB 78 */	mr r3, r31
/* 803F04C4  38 80 00 01 */	li r4, 1
/* 803F04C8  4B FF FF 49 */	bl mSM_Object_Exchange_keep_new_MenuTexAndPallet
/* 803F04CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F04D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F04D4  7C 08 03 A6 */	mtlr r0
/* 803F04D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803F04DC  4E 80 00 20 */	blr 
