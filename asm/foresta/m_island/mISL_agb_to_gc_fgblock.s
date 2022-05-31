lbl_803B45E0:
/* 803B45E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B45E4  7C 08 02 A6 */	mflr r0
/* 803B45E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B45EC  39 61 00 20 */	addi r11, r1, 0x20
/* 803B45F0  4B CE 68 E5 */	bl func_8009AED4
/* 803B45F4  7C 7D 1B 78 */	mr r29, r3
/* 803B45F8  7C 9E 23 78 */	mr r30, r4
/* 803B45FC  3B E0 00 00 */	li r31, 0
lbl_803B4600:
/* 803B4600  7F A3 EB 78 */	mr r3, r29
/* 803B4604  7F C4 F3 78 */	mr r4, r30
/* 803B4608  4B FF FF 5D */	bl mISL_agb_to_gc_fg
/* 803B460C  3B FF 00 01 */	addi r31, r31, 1
/* 803B4610  3B BD 02 00 */	addi r29, r29, 0x200
/* 803B4614  2C 1F 00 02 */	cmpwi r31, 2
/* 803B4618  3B DE 02 00 */	addi r30, r30, 0x200
/* 803B461C  41 80 FF E4 */	blt lbl_803B4600
/* 803B4620  39 61 00 20 */	addi r11, r1, 0x20
/* 803B4624  4B CE 68 FD */	bl func_8009AF20
/* 803B4628  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B462C  7C 08 03 A6 */	mtlr r0
/* 803B4630  38 21 00 20 */	addi r1, r1, 0x20
/* 803B4634  4E 80 00 20 */	blr 
