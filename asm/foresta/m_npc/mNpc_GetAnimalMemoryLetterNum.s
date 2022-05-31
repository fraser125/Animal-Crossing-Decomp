lbl_803CC2D4:
/* 803CC2D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CC2D8  7C 08 02 A6 */	mflr r0
/* 803CC2DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CC2E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC2E4  4B CC EB ED */	bl func_8009AED0
/* 803CC2E8  7C 7C 1B 78 */	mr r28, r3
/* 803CC2EC  7C 9D 23 78 */	mr r29, r4
/* 803CC2F0  3B E0 00 00 */	li r31, 0
/* 803CC2F4  3B C0 00 00 */	li r30, 0
/* 803CC2F8  48 00 00 30 */	b lbl_803CC328
lbl_803CC2FC:
/* 803CC2FC  7F 83 E3 78 */	mr r3, r28
/* 803CC300  4B FF F5 71 */	bl mNpc_CheckFreeAnimalMemory
/* 803CC304  2C 03 00 00 */	cmpwi r3, 0
/* 803CC308  40 82 00 18 */	bne lbl_803CC320
/* 803CC30C  88 1C 00 31 */	lbz r0, 0x31(r28)
/* 803CC310  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 803CC314  28 00 00 01 */	cmplwi r0, 1
/* 803CC318  40 82 00 08 */	bne lbl_803CC320
/* 803CC31C  3B FF 00 01 */	addi r31, r31, 1
lbl_803CC320:
/* 803CC320  3B 9C 01 38 */	addi r28, r28, 0x138
/* 803CC324  3B DE 00 01 */	addi r30, r30, 1
lbl_803CC328:
/* 803CC328  7C 1E E8 00 */	cmpw r30, r29
/* 803CC32C  41 80 FF D0 */	blt lbl_803CC2FC
/* 803CC330  7F E3 FB 78 */	mr r3, r31
/* 803CC334  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC338  4B CC EB E5 */	bl func_8009AF1C
/* 803CC33C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC340  7C 08 03 A6 */	mtlr r0
/* 803CC344  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC348  4E 80 00 20 */	blr 
