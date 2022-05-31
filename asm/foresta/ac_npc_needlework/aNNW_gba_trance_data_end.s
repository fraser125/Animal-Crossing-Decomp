lbl_8056125C:
/* 8056125C  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 80561260  7C 08 02 A6 */	mflr r0
/* 80561264  90 01 02 24 */	stw r0, 0x224(r1)
/* 80561268  39 61 02 20 */	addi r11, r1, 0x220
/* 8056126C  4B B3 9C 65 */	bl func_8009AED0
/* 80561270  3C 60 81 1F */	lis r3, data_811EC218@ha /* 0x811EC218@ha */
/* 80561274  3B 80 00 00 */	li r28, 0
/* 80561278  3B C3 C2 18 */	addi r30, r3, data_811EC218@l /* 0x811EC218@l */
/* 8056127C  3B E0 00 00 */	li r31, 0
lbl_80561280:
/* 80561280  7F BE FA 14 */	add r29, r30, r31
/* 80561284  38 81 00 08 */	addi r4, r1, 8
/* 80561288  38 7D 00 20 */	addi r3, r29, 0x20
/* 8056128C  4B E6 88 E9 */	bl mNW_AGB_to_GC_texture
/* 80561290  7F A3 EB 78 */	mr r3, r29
/* 80561294  38 81 00 08 */	addi r4, r1, 8
/* 80561298  4B E6 8A 11 */	bl mNW_OverWriteOriginalTexture
/* 8056129C  3B 9C 00 01 */	addi r28, r28, 1
/* 805612A0  3B FF 02 20 */	addi r31, r31, 0x220
/* 805612A4  2C 1C 00 08 */	cmpwi r28, 8
/* 805612A8  41 80 FF D8 */	blt lbl_80561280
/* 805612AC  39 61 02 20 */	addi r11, r1, 0x220
/* 805612B0  4B B3 9C 6D */	bl func_8009AF1C
/* 805612B4  80 01 02 24 */	lwz r0, 0x224(r1)
/* 805612B8  7C 08 03 A6 */	mtlr r0
/* 805612BC  38 21 02 20 */	addi r1, r1, 0x220
/* 805612C0  4E 80 00 20 */	blr 
