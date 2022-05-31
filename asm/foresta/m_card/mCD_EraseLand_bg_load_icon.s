lbl_803FE244:
/* 803FE244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FE248  7C 08 02 A6 */	mflr r0
/* 803FE24C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FE250  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE254  4B C9 CC 81 */	bl func_8009AED4
/* 803FE258  7C 7D 1B 78 */	mr r29, r3
/* 803FE25C  7C 9E 23 78 */	mr r30, r4
/* 803FE260  80 A3 00 00 */	lwz r5, 0(r3)
/* 803FE264  2C 05 FF FF */	cmpwi r5, -1
/* 803FE268  41 82 00 5C */	beq lbl_803FE2C4
/* 803FE26C  1C C5 00 94 */	mulli r6, r5, 0x94
/* 803FE270  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 803FE274  80 9D 00 04 */	lwz r4, 4(r29)
/* 803FE278  38 C6 00 C8 */	addi r6, r6, 0xc8
/* 803FE27C  7C DD 32 14 */	add r6, r29, r6
/* 803FE280  4B FF C7 41 */	bl mCD_load_file
/* 803FE284  7C 7F 1B 78 */	mr r31, r3
/* 803FE288  2C 1F 00 01 */	cmpwi r31, 1
/* 803FE28C  40 82 00 3C */	bne lbl_803FE2C8
/* 803FE290  80 9E 00 00 */	lwz r4, 0(r30)
/* 803FE294  3C 60 80 66 */	lis r3, l_comment_erase_land@ha /* 0x8065E5C8@ha */
/* 803FE298  38 63 E5 C8 */	addi r3, r3, l_comment_erase_land@l /* 0x8065E5C8@l */
/* 803FE29C  38 A0 00 20 */	li r5, 0x20
/* 803FE2A0  38 04 00 01 */	addi r0, r4, 1
/* 803FE2A4  90 1E 00 00 */	stw r0, 0(r30)
/* 803FE2A8  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 803FE2AC  38 84 00 20 */	addi r4, r4, 0x20
/* 803FE2B0  4B C5 ED 6D */	bl func_8005D01C
/* 803FE2B4  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 803FE2B8  38 63 14 40 */	addi r3, r3, 0x1440
/* 803FE2BC  4B FF C4 A9 */	bl mCD_MakeProtectCode
/* 803FE2C0  48 00 00 08 */	b lbl_803FE2C8
lbl_803FE2C4:
/* 803FE2C4  3B E0 FF FF */	li r31, -1
lbl_803FE2C8:
/* 803FE2C8  7F E3 FB 78 */	mr r3, r31
/* 803FE2CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE2D0  4B C9 CC 51 */	bl func_8009AF20
/* 803FE2D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FE2D8  7C 08 03 A6 */	mtlr r0
/* 803FE2DC  38 21 00 20 */	addi r1, r1, 0x20
/* 803FE2E0  4E 80 00 20 */	blr 
