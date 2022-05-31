lbl_8051DCE4:
/* 8051DCE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051DCE8  7C 08 02 A6 */	mflr r0
/* 8051DCEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051DCF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051DCF4  7C 9F 23 78 */	mr r31, r4
/* 8051DCF8  93 C1 00 08 */	stw r30, 8(r1)
/* 8051DCFC  7C 7E 1B 78 */	mr r30, r3
/* 8051DD00  4B FF FF 7D */	bl aEDSN_game_start_call_wait_init
/* 8051DD04  7F E3 FB 78 */	mr r3, r31
/* 8051DD08  38 80 00 00 */	li r4, 0
/* 8051DD0C  4B E6 0D B9 */	bl Camera2_change_priority
/* 8051DD10  38 60 00 01 */	li r3, 1
/* 8051DD14  4B E7 AC 0D */	bl mDemo_Set_camera
/* 8051DD18  38 00 00 00 */	li r0, 0
/* 8051DD1C  98 1E 09 A6 */	stb r0, 0x9a6(r30)
/* 8051DD20  4B EB FB D9 */	bl mPlib_Set_EndWashCar
/* 8051DD24  38 00 00 01 */	li r0, 1
/* 8051DD28  98 1E 09 A3 */	stb r0, 0x9a3(r30)
/* 8051DD2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051DD30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051DD34  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051DD38  7C 08 03 A6 */	mtlr r0
/* 8051DD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051DD40  4E 80 00 20 */	blr 
