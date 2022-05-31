lbl_803EE0A8:
/* 803EE0A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EE0AC  7C 08 02 A6 */	mflr r0
/* 803EE0B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EE0B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE0B8  4B CA CE 1D */	bl func_8009AED4
/* 803EE0BC  7C 7D 1B 78 */	mr r29, r3
/* 803EE0C0  7C 9E 23 78 */	mr r30, r4
/* 803EE0C4  54 9F 08 3C */	slwi r31, r4, 1
/* 803EE0C8  48 00 00 14 */	b lbl_803EE0DC
lbl_803EE0CC:
/* 803EE0CC  7C 7D FA 14 */	add r3, r29, r31
/* 803EE0D0  4B FF FF 89 */	bl mSDI_PullTreeUT
/* 803EE0D4  3B DE 00 10 */	addi r30, r30, 0x10
/* 803EE0D8  3B FF 00 20 */	addi r31, r31, 0x20
lbl_803EE0DC:
/* 803EE0DC  2C 1E 01 00 */	cmpwi r30, 0x100
/* 803EE0E0  41 80 FF EC */	blt lbl_803EE0CC
/* 803EE0E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803EE0E8  4B CA CE 39 */	bl func_8009AF20
/* 803EE0EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EE0F0  7C 08 03 A6 */	mtlr r0
/* 803EE0F4  38 21 00 20 */	addi r1, r1, 0x20
/* 803EE0F8  4E 80 00 20 */	blr 
