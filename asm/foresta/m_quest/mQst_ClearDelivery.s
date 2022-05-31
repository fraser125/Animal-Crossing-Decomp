lbl_803E28E8:
/* 803E28E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E28EC  7C 08 02 A6 */	mflr r0
/* 803E28F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E28F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803E28F8  4B CB 85 DD */	bl func_8009AED4
/* 803E28FC  7C 7D 1B 78 */	mr r29, r3
/* 803E2900  7C 9E 23 78 */	mr r30, r4
/* 803E2904  3B E0 00 00 */	li r31, 0
/* 803E2908  48 00 00 24 */	b lbl_803E292C
lbl_803E290C:
/* 803E290C  7F A3 EB 78 */	mr r3, r29
/* 803E2910  4B FF FF 99 */	bl func_803E28A8
/* 803E2914  38 7D 00 0C */	addi r3, r29, 0xc
/* 803E2918  4B FE 8A 6D */	bl mNpc_ClearAnimalPersonalID
/* 803E291C  38 7D 00 1A */	addi r3, r29, 0x1a
/* 803E2920  4B FE 8A 65 */	bl mNpc_ClearAnimalPersonalID
/* 803E2924  3B BD 00 28 */	addi r29, r29, 0x28
/* 803E2928  3B FF 00 01 */	addi r31, r31, 1
lbl_803E292C:
/* 803E292C  7C 1F F0 00 */	cmpw r31, r30
/* 803E2930  41 80 FF DC */	blt lbl_803E290C
/* 803E2934  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2938  4B CB 85 E9 */	bl func_8009AF20
/* 803E293C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E2940  7C 08 03 A6 */	mtlr r0
/* 803E2944  38 21 00 20 */	addi r1, r1, 0x20
/* 803E2948  4E 80 00 20 */	blr 
