lbl_803FD150:
/* 803FD150  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FD154  7C 08 02 A6 */	mflr r0
/* 803FD158  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FD15C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FD160  4B C9 DD 69 */	bl func_8009AEC8
/* 803FD164  7C 7D 1B 78 */	mr r29, r3
/* 803FD168  3C 60 80 66 */	lis r3, data_8065E370@ha /* 0x8065E370@ha */
/* 803FD16C  83 5D 00 0C */	lwz r26, 0xc(r29)
/* 803FD170  7C 9E 23 78 */	mr r30, r4
/* 803FD174  3B E3 E3 70 */	addi r31, r3, data_8065E370@l /* 0x8065E370@l */
/* 803FD178  28 1A 00 00 */	cmplwi r26, 0
/* 803FD17C  41 82 01 6C */	beq lbl_803FD2E8
/* 803FD180  3C 80 00 02 */	lis r4, 0x0002 /* 0x00026000@ha */
/* 803FD184  7F 43 D3 78 */	mr r3, r26
/* 803FD188  38 84 60 00 */	addi r4, r4, 0x6000 /* 0x00026000@l */
/* 803FD18C  4B C5 FE DD */	bl bzero
/* 803FD190  7F 44 D3 78 */	mr r4, r26
/* 803FD194  38 7F 02 18 */	addi r3, r31, 0x218
/* 803FD198  38 A0 00 20 */	li r5, 0x20
/* 803FD19C  4B C5 FE 81 */	bl func_8005D01C
/* 803FD1A0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FD1A4  38 7A 00 20 */	addi r3, r26, 0x20
/* 803FD1A8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FD1AC  3C 84 00 01 */	addis r4, r4, 1
/* 803FD1B0  38 84 91 20 */	addi r4, r4, -28384
/* 803FD1B4  4B FF E2 B5 */	bl mCD_get_land_comment1
/* 803FD1B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FD1BC  38 9F 04 C0 */	addi r4, r31, 0x4c0
/* 803FD1C0  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803FD1C4  38 7A 00 40 */	addi r3, r26, 0x40
/* 803FD1C8  3C C5 00 02 */	addis r6, r5, 2
/* 803FD1CC  38 A0 0C 00 */	li r5, 0xc00
/* 803FD1D0  80 06 61 10 */	lwz r0, 0x6110(r6)
/* 803FD1D4  38 C0 00 01 */	li r6, 1
/* 803FD1D8  38 E0 02 00 */	li r7, 0x200
/* 803FD1DC  54 00 10 3A */	slwi r0, r0, 2
/* 803FD1E0  7C 84 00 2E */	lwzx r4, r4, r0
/* 803FD1E4  48 00 64 39 */	bl mCD_set_bti_data
/* 803FD1E8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803FD1EC  38 9F 04 84 */	addi r4, r31, 0x484
/* 803FD1F0  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 803FD1F4  38 A0 04 00 */	li r5, 0x400
/* 803FD1F8  3C E6 00 02 */	addis r7, r6, 2
/* 803FD1FC  38 C0 00 01 */	li r6, 1
/* 803FD200  88 07 0F 18 */	lbz r0, 0xf18(r7)
/* 803FD204  38 E0 02 00 */	li r7, 0x200
/* 803FD208  54 00 10 3A */	slwi r0, r0, 2
/* 803FD20C  7C 84 00 2E */	lwzx r4, r4, r0
/* 803FD210  48 00 64 0D */	bl mCD_set_bti_data
/* 803FD214  3B 9F 04 04 */	addi r28, r31, 0x404
/* 803FD218  3B 43 00 20 */	addi r26, r3, 0x20
/* 803FD21C  80 9C 00 04 */	lwz r4, 4(r28)
/* 803FD220  7F 43 D3 78 */	mr r3, r26
/* 803FD224  38 A0 00 01 */	li r5, 1
/* 803FD228  4B FF CD 39 */	bl mCD_save_data_aram_to_main
/* 803FD22C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FD230  7F 43 D3 78 */	mr r3, r26
/* 803FD234  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FD238  3F 64 00 01 */	addis r27, r4, 1
/* 803FD23C  A0 1B 91 2A */	lhz r0, -0x6ed6(r27)
/* 803FD240  B0 1A 00 02 */	sth r0, 2(r26)
/* 803FD244  80 9C 00 04 */	lwz r4, 4(r28)
/* 803FD248  A0 BA 00 00 */	lhz r5, 0(r26)
/* 803FD24C  4B FA F2 E1 */	bl mFRm_GetFlatCheckSum
/* 803FD250  B0 7A 00 00 */	sth r3, 0(r26)
/* 803FD254  38 A0 00 00 */	li r5, 0
/* 803FD258  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FD25C  80 9F 04 04 */	lwz r4, 0x404(r31)
/* 803FD260  7F 5A 1A 14 */	add r26, r26, r3
/* 803FD264  3B 83 14 60 */	addi r28, r3, 0x1460
/* 803FD268  7F 43 D3 78 */	mr r3, r26
/* 803FD26C  4B FF CC F5 */	bl mCD_save_data_aram_to_main
/* 803FD270  A0 1B 91 2A */	lhz r0, -0x6ed6(r27)
/* 803FD274  7F 43 D3 78 */	mr r3, r26
/* 803FD278  B0 1A 00 02 */	sth r0, 2(r26)
/* 803FD27C  80 9F 04 04 */	lwz r4, 0x404(r31)
/* 803FD280  A0 BA 00 00 */	lhz r5, 0(r26)
/* 803FD284  4B FA F2 A9 */	bl mFRm_GetFlatCheckSum
/* 803FD288  B0 7A 00 00 */	sth r3, 0(r26)
/* 803FD28C  3B 7F 04 04 */	addi r27, r31, 0x404
/* 803FD290  38 A0 00 02 */	li r5, 2
/* 803FD294  80 1F 04 04 */	lwz r0, 0x404(r31)
/* 803FD298  80 9B 00 08 */	lwz r4, 8(r27)
/* 803FD29C  7F 5A 02 14 */	add r26, r26, r0
/* 803FD2A0  7F 9C 02 14 */	add r28, r28, r0
/* 803FD2A4  7F 43 D3 78 */	mr r3, r26
/* 803FD2A8  4B FF CC B9 */	bl mCD_save_data_aram_to_main
/* 803FD2AC  80 9B 00 08 */	lwz r4, 8(r27)
/* 803FD2B0  7F 43 D3 78 */	mr r3, r26
/* 803FD2B4  A0 BA 00 00 */	lhz r5, 0(r26)
/* 803FD2B8  4B FA F2 75 */	bl mFRm_GetFlatCheckSum
/* 803FD2BC  B0 7A 00 00 */	sth r3, 0(r26)
/* 803FD2C0  38 60 00 01 */	li r3, 1
/* 803FD2C4  80 1B 00 08 */	lwz r0, 8(r27)
/* 803FD2C8  7F 9C 02 14 */	add r28, r28, r0
/* 803FD2CC  38 1C 1F FF */	addi r0, r28, 0x1fff
/* 803FD2D0  54 00 00 24 */	rlwinm r0, r0, 0, 0, 0x12
/* 803FD2D4  90 1D 00 08 */	stw r0, 8(r29)
/* 803FD2D8  80 9E 00 00 */	lwz r4, 0(r30)
/* 803FD2DC  38 04 00 01 */	addi r0, r4, 1
/* 803FD2E0  90 1E 00 00 */	stw r0, 0(r30)
/* 803FD2E4  48 00 00 08 */	b lbl_803FD2EC
lbl_803FD2E8:
/* 803FD2E8  38 60 FF FF */	li r3, -1
lbl_803FD2EC:
/* 803FD2EC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FD2F0  4B C9 DC 25 */	bl func_8009AF14
/* 803FD2F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FD2F8  7C 08 03 A6 */	mtlr r0
/* 803FD2FC  38 21 00 20 */	addi r1, r1, 0x20
/* 803FD300  4E 80 00 20 */	blr 
