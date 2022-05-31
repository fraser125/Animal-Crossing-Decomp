lbl_8056FBC0:
/* 8056FBC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FBC4  7C 08 02 A6 */	mflr r0
/* 8056FBC8  38 A0 00 00 */	li r5, 0
/* 8056FBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FBD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056FBD4  7C 7F 1B 78 */	mr r31, r3
/* 8056FBD8  7C 83 23 78 */	mr r3, r4
/* 8056FBDC  38 80 00 00 */	li r4, 0
/* 8056FBE0  4B E6 B1 A5 */	bl mPlib_request_main_demo_wait_type1
/* 8056FBE4  7F E3 FB 78 */	mr r3, r31
/* 8056FBE8  38 80 00 04 */	li r4, 4
/* 8056FBEC  38 A0 00 03 */	li r5, 3
/* 8056FBF0  38 C0 00 03 */	li r6, 3
/* 8056FBF4  38 E0 00 00 */	li r7, 0
/* 8056FBF8  39 00 08 C0 */	li r8, 0x8c0
/* 8056FBFC  39 20 05 14 */	li r9, 0x514
/* 8056FC00  4B FF F3 E9 */	bl func_8056EFE8
/* 8056FC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FC08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056FC0C  7C 08 03 A6 */	mtlr r0
/* 8056FC10  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FC14  4E 80 00 20 */	blr 
