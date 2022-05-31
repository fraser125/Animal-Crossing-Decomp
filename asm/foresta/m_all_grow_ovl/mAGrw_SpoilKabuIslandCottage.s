lbl_80514E38:
/* 80514E38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80514E3C  7C 08 02 A6 */	mflr r0
/* 80514E40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80514E44  39 61 00 20 */	addi r11, r1, 0x20
/* 80514E48  4B B8 60 8D */	bl func_8009AED4
/* 80514E4C  7C 7D 1B 78 */	mr r29, r3
/* 80514E50  3B C0 00 00 */	li r30, 0
/* 80514E54  3B E0 00 00 */	li r31, 0
lbl_80514E58:
/* 80514E58  38 7F 04 20 */	addi r3, r31, 0x420
/* 80514E5C  38 80 01 00 */	li r4, 0x100
/* 80514E60  7C 7D 1A 14 */	add r3, r29, r3
/* 80514E64  4B FF F0 2D */	bl mAGrw_SpoilPossession
/* 80514E68  3B DE 00 01 */	addi r30, r30, 1
/* 80514E6C  3B FF 02 28 */	addi r31, r31, 0x228
/* 80514E70  2C 1E 00 04 */	cmpwi r30, 4
/* 80514E74  41 80 FF E4 */	blt lbl_80514E58
/* 80514E78  39 61 00 20 */	addi r11, r1, 0x20
/* 80514E7C  4B B8 60 A5 */	bl func_8009AF20
/* 80514E80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80514E84  7C 08 03 A6 */	mtlr r0
/* 80514E88  38 21 00 20 */	addi r1, r1, 0x20
/* 80514E8C  4E 80 00 20 */	blr 
