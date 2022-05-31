lbl_8050F5C4:
/* 8050F5C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050F5C8  7C 08 02 A6 */	mflr r0
/* 8050F5CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050F5D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F5D4  4B B8 B8 FD */	bl func_8009AED0
/* 8050F5D8  7C 7C 1B 78 */	mr r28, r3
/* 8050F5DC  7C 9D 23 78 */	mr r29, r4
/* 8050F5E0  3B C0 00 00 */	li r30, 0
/* 8050F5E4  48 00 00 60 */	b lbl_8050F644
lbl_8050F5E8:
/* 8050F5E8  88 7C 00 00 */	lbz r3, 0(r28)
/* 8050F5EC  4B FF FC 09 */	bl mMck_cmp_sep_nes
/* 8050F5F0  2C 03 00 01 */	cmpwi r3, 1
/* 8050F5F4  40 82 00 48 */	bne lbl_8050F63C
/* 8050F5F8  3B E0 00 00 */	li r31, 0
/* 8050F5FC  3B BD FF FF */	addi r29, r29, -1
/* 8050F600  3B 9C 00 01 */	addi r28, r28, 1
/* 8050F604  48 00 00 18 */	b lbl_8050F61C
lbl_8050F608:
/* 8050F608  3B FF 00 01 */	addi r31, r31, 1
/* 8050F60C  2C 1F 00 4B */	cmpwi r31, 0x4b
/* 8050F610  40 80 00 1C */	bge lbl_8050F62C
/* 8050F614  3B 9C 00 01 */	addi r28, r28, 1
/* 8050F618  3B BD FF FF */	addi r29, r29, -1
lbl_8050F61C:
/* 8050F61C  88 7C 00 00 */	lbz r3, 0(r28)
/* 8050F620  4B FF FB D5 */	bl mMck_cmp_sep_nes
/* 8050F624  2C 03 00 00 */	cmpwi r3, 0
/* 8050F628  41 82 FF E0 */	beq lbl_8050F608
lbl_8050F62C:
/* 8050F62C  2C 1F 00 4B */	cmpwi r31, 0x4b
/* 8050F630  41 80 00 0C */	blt lbl_8050F63C
/* 8050F634  3B C0 FF 6A */	li r30, -150
/* 8050F638  48 00 00 14 */	b lbl_8050F64C
lbl_8050F63C:
/* 8050F63C  3B BD FF FF */	addi r29, r29, -1
/* 8050F640  3B 9C 00 01 */	addi r28, r28, 1
lbl_8050F644:
/* 8050F644  2C 1D 00 4C */	cmpwi r29, 0x4c
/* 8050F648  41 81 FF A0 */	bgt lbl_8050F5E8
lbl_8050F64C:
/* 8050F64C  7F C3 F3 78 */	mr r3, r30
/* 8050F650  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F654  4B B8 B8 C9 */	bl func_8009AF1C
/* 8050F658  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050F65C  7C 08 03 A6 */	mtlr r0
/* 8050F660  38 21 00 20 */	addi r1, r1, 0x20
/* 8050F664  4E 80 00 20 */	blr 
