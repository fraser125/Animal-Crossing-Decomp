lbl_803FE168:
/* 803FE168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FE16C  7C 08 02 A6 */	mflr r0
/* 803FE170  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FE174  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE178  4B C9 CD 59 */	bl func_8009AED0
/* 803FE17C  7C 7C 1B 78 */	mr r28, r3
/* 803FE180  7C 9D 23 78 */	mr r29, r4
/* 803FE184  83 C3 00 00 */	lwz r30, 0(r3)
/* 803FE188  2C 1E FF FF */	cmpwi r30, -1
/* 803FE18C  41 82 00 98 */	beq lbl_803FE224
/* 803FE190  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FE194  3C 80 80 66 */	lis r4, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FE198  38 04 E7 08 */	addi r0, r4, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FE19C  1C 83 00 0C */	mulli r4, r3, 0xc
/* 803FE1A0  7F E0 22 14 */	add r31, r0, r4
/* 803FE1A4  4B FF C2 6D */	bl mCD_get_offset
/* 803FE1A8  1C BE 00 94 */	mulli r5, r30, 0x94
/* 803FE1AC  7C 60 1B 78 */	mr r0, r3
/* 803FE1B0  7F C8 F3 78 */	mr r8, r30
/* 803FE1B4  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FE1B8  80 9F 00 00 */	lwz r4, 0(r31)
/* 803FE1BC  7C 07 03 78 */	mr r7, r0
/* 803FE1C0  3B C5 00 54 */	addi r30, r5, 0x54
/* 803FE1C4  80 BC 00 08 */	lwz r5, 8(r28)
/* 803FE1C8  7F DC F2 14 */	add r30, r28, r30
/* 803FE1CC  80 DF 00 04 */	lwz r6, 4(r31)
/* 803FE1D0  39 3E 00 74 */	addi r9, r30, 0x74
/* 803FE1D4  4B FF A6 15 */	bl mCD_write_comp_bg
/* 803FE1D8  7C 60 1B 78 */	mr r0, r3
/* 803FE1DC  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 803FE1E0  7C 1F 03 78 */	mr r31, r0
/* 803FE1E4  4B FF C0 D1 */	bl mCD_TransErrorCode
/* 803FE1E8  2C 1F 00 01 */	cmpwi r31, 1
/* 803FE1EC  90 7E 00 78 */	stw r3, 0x78(r30)
/* 803FE1F0  40 82 00 38 */	bne lbl_803FE228
/* 803FE1F4  80 7D 00 00 */	lwz r3, 0(r29)
/* 803FE1F8  38 03 00 01 */	addi r0, r3, 1
/* 803FE1FC  90 1D 00 00 */	stw r0, 0(r29)
/* 803FE200  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FE204  80 9C 00 08 */	lwz r4, 8(r28)
/* 803FE208  4B C5 EE 61 */	bl bzero
/* 803FE20C  38 00 00 00 */	li r0, 0
/* 803FE210  90 1C 00 04 */	stw r0, 4(r28)
/* 803FE214  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FE218  4B FF C2 41 */	bl mCD_get_size
/* 803FE21C  90 7C 00 08 */	stw r3, 8(r28)
/* 803FE220  48 00 00 08 */	b lbl_803FE228
lbl_803FE224:
/* 803FE224  3B E0 FF FF */	li r31, -1
lbl_803FE228:
/* 803FE228  7F E3 FB 78 */	mr r3, r31
/* 803FE22C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE230  4B C9 CC ED */	bl func_8009AF1C
/* 803FE234  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FE238  7C 08 03 A6 */	mtlr r0
/* 803FE23C  38 21 00 20 */	addi r1, r1, 0x20
/* 803FE240  4E 80 00 20 */	blr 
