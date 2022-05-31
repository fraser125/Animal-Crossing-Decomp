lbl_803BF4D8:
/* 803BF4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF4DC  7C 08 02 A6 */	mflr r0
/* 803BF4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF4E4  4B FC 3F D9 */	bl mChoice_aram_init
/* 803BF4E8  48 02 F7 61 */	bl func_803EEC48
/* 803BF4EC  4B FF 23 95 */	bl func_803B1880
/* 803BF4F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF4F4  7C 08 03 A6 */	mtlr r0
/* 803BF4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF4FC  4E 80 00 20 */	blr 
