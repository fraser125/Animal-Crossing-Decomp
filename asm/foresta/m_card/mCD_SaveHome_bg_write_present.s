lbl_803FC370:
/* 803FC370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FC374  7C 08 02 A6 */	mflr r0
/* 803FC378  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FC37C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FC380  4B C9 EB 51 */	bl func_8009AED0
/* 803FC384  7C 7D 1B 78 */	mr r29, r3
/* 803FC388  7C 9E 23 78 */	mr r30, r4
/* 803FC38C  83 E3 00 00 */	lwz r31, 0(r3)
/* 803FC390  2C 1F FF FF */	cmpwi r31, -1
/* 803FC394  41 82 01 20 */	beq lbl_803FC4B4
/* 803FC398  80 7D 00 04 */	lwz r3, 4(r29)
/* 803FC39C  3C 80 80 66 */	lis r4, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FC3A0  38 04 E7 08 */	addi r0, r4, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FC3A4  1C 83 00 0C */	mulli r4, r3, 0xc
/* 803FC3A8  7F 80 22 14 */	add r28, r0, r4
/* 803FC3AC  4B FF E0 65 */	bl mCD_get_offset
/* 803FC3B0  1C 9F 00 94 */	mulli r4, r31, 0x94
/* 803FC3B4  7C 60 1B 78 */	mr r0, r3
/* 803FC3B8  7F E8 FB 78 */	mr r8, r31
/* 803FC3BC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 803FC3C0  80 BD 00 08 */	lwz r5, 8(r29)
/* 803FC3C4  7C 07 03 78 */	mr r7, r0
/* 803FC3C8  3B E4 00 54 */	addi r31, r4, 0x54
/* 803FC3CC  80 DC 00 04 */	lwz r6, 4(r28)
/* 803FC3D0  7F FD FA 14 */	add r31, r29, r31
/* 803FC3D4  38 9D 11 BC */	addi r4, r29, 0x11bc
/* 803FC3D8  39 3F 00 74 */	addi r9, r31, 0x74
/* 803FC3DC  4B FF C4 0D */	bl mCD_write_comp_bg
/* 803FC3E0  7C 7C 1B 78 */	mr r28, r3
/* 803FC3E4  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FC3E8  4B FF DE CD */	bl mCD_TransErrorCode
/* 803FC3EC  2C 1C 00 00 */	cmpwi r28, 0
/* 803FC3F0  90 7F 00 78 */	stw r3, 0x78(r31)
/* 803FC3F4  41 82 00 AC */	beq lbl_803FC4A0
/* 803FC3F8  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FC3FC  2C 03 FF FE */	cmpwi r3, -2
/* 803FC400  41 82 00 30 */	beq lbl_803FC430
/* 803FC404  2C 03 FF FD */	cmpwi r3, -3
/* 803FC408  41 82 00 28 */	beq lbl_803FC430
/* 803FC40C  38 03 00 06 */	addi r0, r3, 6
/* 803FC410  28 00 00 01 */	cmplwi r0, 1
/* 803FC414  40 81 00 1C */	ble lbl_803FC430
/* 803FC418  2C 03 FF 80 */	cmpwi r3, -128
/* 803FC41C  41 82 00 14 */	beq lbl_803FC430
/* 803FC420  2C 03 FF F5 */	cmpwi r3, -11
/* 803FC424  41 82 00 0C */	beq lbl_803FC430
/* 803FC428  2C 03 FF F3 */	cmpwi r3, -13
/* 803FC42C  40 82 00 1C */	bne lbl_803FC448
lbl_803FC430:
/* 803FC430  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 803FC434  38 00 00 00 */	li r0, 0
/* 803FC438  38 63 00 01 */	addi r3, r3, 1
/* 803FC43C  90 7E 00 0C */	stw r3, 0xc(r30)
/* 803FC440  90 1E 00 08 */	stw r0, 8(r30)
/* 803FC444  48 00 00 10 */	b lbl_803FC454
lbl_803FC448:
/* 803FC448  80 7E 00 08 */	lwz r3, 8(r30)
/* 803FC44C  38 03 00 01 */	addi r0, r3, 1
/* 803FC450  90 1E 00 08 */	stw r0, 8(r30)
lbl_803FC454:
/* 803FC454  80 1E 00 08 */	lwz r0, 8(r30)
/* 803FC458  2C 00 00 20 */	cmpwi r0, 0x20
/* 803FC45C  41 80 00 10 */	blt lbl_803FC46C
/* 803FC460  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 803FC464  38 03 00 01 */	addi r0, r3, 1
/* 803FC468  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_803FC46C:
/* 803FC46C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 803FC470  2C 00 00 02 */	cmpwi r0, 2
/* 803FC474  41 80 00 24 */	blt lbl_803FC498
/* 803FC478  80 9E 00 00 */	lwz r4, 0(r30)
/* 803FC47C  38 60 00 01 */	li r3, 1
/* 803FC480  38 00 FF FF */	li r0, -1
/* 803FC484  38 84 00 01 */	addi r4, r4, 1
/* 803FC488  90 9E 00 00 */	stw r4, 0(r30)
/* 803FC48C  90 7D 00 04 */	stw r3, 4(r29)
/* 803FC490  90 1D 00 00 */	stw r0, 0(r29)
/* 803FC494  48 00 00 0C */	b lbl_803FC4A0
lbl_803FC498:
/* 803FC498  38 00 00 03 */	li r0, 3
/* 803FC49C  90 1E 00 00 */	stw r0, 0(r30)
lbl_803FC4A0:
/* 803FC4A0  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FC4A4  4B FF DE 11 */	bl mCD_TransErrorCode
/* 803FC4A8  90 7F 00 78 */	stw r3, 0x78(r31)
/* 803FC4AC  38 60 00 01 */	li r3, 1
/* 803FC4B0  48 00 00 08 */	b lbl_803FC4B8
lbl_803FC4B4:
/* 803FC4B4  38 60 FF FF */	li r3, -1
lbl_803FC4B8:
/* 803FC4B8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FC4BC  4B C9 EA 61 */	bl func_8009AF1C
/* 803FC4C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FC4C4  7C 08 03 A6 */	mtlr r0
/* 803FC4C8  38 21 00 20 */	addi r1, r1, 0x20
/* 803FC4CC  4E 80 00 20 */	blr 
