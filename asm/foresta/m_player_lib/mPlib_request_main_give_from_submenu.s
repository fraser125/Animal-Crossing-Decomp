lbl_803D98E4:
/* 803D98E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D98E8  7C 08 02 A6 */	mflr r0
/* 803D98EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D98F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803D98F4  4B CC 15 DD */	bl func_8009AED0
/* 803D98F8  7C 7C 1B 78 */	mr r28, r3
/* 803D98FC  7C 9D 23 78 */	mr r29, r4
/* 803D9900  7C BE 2B 78 */	mr r30, r5
/* 803D9904  7C DF 33 78 */	mr r31, r6
/* 803D9908  4B FF FF A5 */	bl mPlib_Get_change_data_from_submenu_p
/* 803D990C  38 80 00 46 */	li r4, 0x46
/* 803D9910  38 00 00 01 */	li r0, 1
/* 803D9914  90 83 00 00 */	stw r4, 0(r3)
/* 803D9918  90 03 00 04 */	stw r0, 4(r3)
/* 803D991C  B3 83 00 14 */	sth r28, 0x14(r3)
/* 803D9920  93 A3 00 18 */	stw r29, 0x18(r3)
/* 803D9924  93 C3 00 1C */	stw r30, 0x1c(r3)
/* 803D9928  93 E3 00 20 */	stw r31, 0x20(r3)
/* 803D992C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9930  4B CC 15 ED */	bl func_8009AF1C
/* 803D9934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D9938  7C 08 03 A6 */	mtlr r0
/* 803D993C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D9940  4E 80 00 20 */	blr 
