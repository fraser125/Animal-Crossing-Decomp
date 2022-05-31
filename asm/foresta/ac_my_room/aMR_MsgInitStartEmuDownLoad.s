lbl_80475AE4:
/* 80475AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475AE8  7C 08 02 A6 */	mflr r0
/* 80475AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475AF4  7C 7F 1B 78 */	mr r31, r3
/* 80475AF8  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80475AFC  80 63 04 8C */	lwz r3, 0x48c(r3)
/* 80475B00  48 1B 7C 45 */	bl famicom_gba_getImage
/* 80475B04  90 7F 05 B4 */	stw r3, 0x5b4(r31)
/* 80475B08  4B BD 3C B5 */	bl mGcgba_InitVar
/* 80475B0C  4B F4 9B 9D */	bl func_803BF6A8
/* 80475B10  4B F4 B2 31 */	bl mMsg_Set_LockContinue
/* 80475B14  38 60 00 47 */	li r3, 0x47
/* 80475B18  48 1B 83 ED */	bl sAdo_SysLevStart
/* 80475B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475B24  7C 08 03 A6 */	mtlr r0
/* 80475B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80475B2C  4E 80 00 20 */	blr 
