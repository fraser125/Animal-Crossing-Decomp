lbl_8049B6B4:
/* 8049B6B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049B6B8  7C 08 02 A6 */	mflr r0
/* 8049B6BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049B6C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8049B6C4  4B BF F8 0D */	bl func_8009AED0
/* 8049B6C8  7C 7C 1B 79 */	or. r28, r3, r3
/* 8049B6CC  7C 9D 23 78 */	mr r29, r4
/* 8049B6D0  38 60 00 00 */	li r3, 0
/* 8049B6D4  41 82 00 64 */	beq lbl_8049B738
/* 8049B6D8  3B E0 00 00 */	li r31, 0
lbl_8049B6DC:
/* 8049B6DC  3B C0 00 00 */	li r30, 0
lbl_8049B6E0:
/* 8049B6E0  2C 1F 00 02 */	cmpwi r31, 2
/* 8049B6E4  41 80 00 28 */	blt lbl_8049B70C
/* 8049B6E8  2C 1F 00 0E */	cmpwi r31, 0xe
/* 8049B6EC  40 80 00 20 */	bge lbl_8049B70C
/* 8049B6F0  2C 1E 00 02 */	cmpwi r30, 2
/* 8049B6F4  41 80 00 18 */	blt lbl_8049B70C
/* 8049B6F8  2C 1E 00 0E */	cmpwi r30, 0xe
/* 8049B6FC  40 80 00 10 */	bge lbl_8049B70C
/* 8049B700  7F 83 E3 78 */	mr r3, r28
/* 8049B704  7F A4 EB 78 */	mr r4, r29
/* 8049B708  4B FF FF 01 */	bl aSOI_ins_field_attr_check_get_sub
lbl_8049B70C:
/* 8049B70C  2C 03 00 01 */	cmpwi r3, 1
/* 8049B710  41 82 00 14 */	beq lbl_8049B724
/* 8049B714  3B DE 00 01 */	addi r30, r30, 1
/* 8049B718  3B 9C 00 04 */	addi r28, r28, 4
/* 8049B71C  2C 1E 00 10 */	cmpwi r30, 0x10
/* 8049B720  41 80 FF C0 */	blt lbl_8049B6E0
lbl_8049B724:
/* 8049B724  2C 03 00 01 */	cmpwi r3, 1
/* 8049B728  41 82 00 10 */	beq lbl_8049B738
/* 8049B72C  3B FF 00 01 */	addi r31, r31, 1
/* 8049B730  2C 1F 00 10 */	cmpwi r31, 0x10
/* 8049B734  41 80 FF A8 */	blt lbl_8049B6DC
lbl_8049B738:
/* 8049B738  39 61 00 20 */	addi r11, r1, 0x20
/* 8049B73C  4B BF F7 E1 */	bl func_8009AF1C
/* 8049B740  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049B744  7C 08 03 A6 */	mtlr r0
/* 8049B748  38 21 00 20 */	addi r1, r1, 0x20
/* 8049B74C  4E 80 00 20 */	blr 
