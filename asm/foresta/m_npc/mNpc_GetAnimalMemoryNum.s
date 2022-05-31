lbl_803CC26C:
/* 803CC26C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CC270  7C 08 02 A6 */	mflr r0
/* 803CC274  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CC278  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC27C  4B CC EC 55 */	bl func_8009AED0
/* 803CC280  7C 7C 1B 78 */	mr r28, r3
/* 803CC284  7C 9D 23 78 */	mr r29, r4
/* 803CC288  3B E0 00 00 */	li r31, 0
/* 803CC28C  3B C0 00 00 */	li r30, 0
/* 803CC290  48 00 00 20 */	b lbl_803CC2B0
lbl_803CC294:
/* 803CC294  7F 83 E3 78 */	mr r3, r28
/* 803CC298  4B FF F5 D9 */	bl mNpc_CheckFreeAnimalMemory
/* 803CC29C  2C 03 00 00 */	cmpwi r3, 0
/* 803CC2A0  40 82 00 08 */	bne lbl_803CC2A8
/* 803CC2A4  3B FF 00 01 */	addi r31, r31, 1
lbl_803CC2A8:
/* 803CC2A8  3B 9C 01 38 */	addi r28, r28, 0x138
/* 803CC2AC  3B DE 00 01 */	addi r30, r30, 1
lbl_803CC2B0:
/* 803CC2B0  7C 1E E8 00 */	cmpw r30, r29
/* 803CC2B4  41 80 FF E0 */	blt lbl_803CC294
/* 803CC2B8  7F E3 FB 78 */	mr r3, r31
/* 803CC2BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC2C0  4B CC EC 5D */	bl func_8009AF1C
/* 803CC2C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC2C8  7C 08 03 A6 */	mtlr r0
/* 803CC2CC  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC2D0  4E 80 00 20 */	blr 
