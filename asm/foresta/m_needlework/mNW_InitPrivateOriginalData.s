lbl_803C9E14:
/* 803C9E14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C9E18  7C 08 02 A6 */	mflr r0
/* 803C9E1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C9E20  39 61 00 20 */	addi r11, r1, 0x20
/* 803C9E24  4B CD 10 B1 */	bl func_8009AED4
/* 803C9E28  1C 83 24 40 */	mulli r4, r3, 0x2440
/* 803C9E2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C9E30  38 00 00 08 */	li r0, 8
/* 803C9E34  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C9E38  7C 63 22 14 */	add r3, r3, r4
/* 803C9E3C  38 80 00 00 */	li r4, 0
/* 803C9E40  3B A3 00 20 */	addi r29, r3, 0x20
/* 803C9E44  7C 09 03 A6 */	mtctr r0
lbl_803C9E48:
/* 803C9E48  38 04 23 40 */	addi r0, r4, 0x2340
/* 803C9E4C  7C 9D 01 AE */	stbx r4, r29, r0
/* 803C9E50  38 84 00 01 */	addi r4, r4, 1
/* 803C9E54  42 00 FF F4 */	bdnz lbl_803C9E48
/* 803C9E58  3B C0 00 00 */	li r30, 0
/* 803C9E5C  7F DF F3 78 */	mr r31, r30
lbl_803C9E60:
/* 803C9E60  38 7F 12 40 */	addi r3, r31, 0x1240
/* 803C9E64  7C 7D 1A 14 */	add r3, r29, r3
/* 803C9E68  4B FF FF 49 */	bl mNW_InitOriginalData
/* 803C9E6C  3B DE 00 01 */	addi r30, r30, 1
/* 803C9E70  3B FF 02 20 */	addi r31, r31, 0x220
/* 803C9E74  2C 1E 00 08 */	cmpwi r30, 8
/* 803C9E78  41 80 FF E8 */	blt lbl_803C9E60
/* 803C9E7C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C9E80  4B CD 10 A1 */	bl func_8009AF20
/* 803C9E84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C9E88  7C 08 03 A6 */	mtlr r0
/* 803C9E8C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C9E90  4E 80 00 20 */	blr 
