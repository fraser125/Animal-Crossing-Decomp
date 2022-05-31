lbl_805F72F8:
/* 805F72F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F72FC  7C 08 02 A6 */	mflr r0
/* 805F7300  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F7304  39 61 00 20 */	addi r11, r1, 0x20
/* 805F7308  4B AA 3B C1 */	bl func_8009AEC8
/* 805F730C  7C 7B 1B 78 */	mr r27, r3
/* 805F7310  7C 9A 23 78 */	mr r26, r4
/* 805F7314  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805F7318  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805F731C  83 84 09 80 */	lwz r28, 0x980(r4)
/* 805F7320  38 63 00 08 */	addi r3, r3, 8
/* 805F7324  4B FF 88 3D */	bl mTG_get_table_idx
/* 805F7328  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F732C  7C 7F 1B 78 */	mr r31, r3
/* 805F7330  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F7334  7F 63 DB 78 */	mr r3, r27
/* 805F7338  3F C4 00 02 */	addis r30, r4, 2
/* 805F733C  57 FD 08 3C */	slwi r29, r31, 1
/* 805F7340  80 1E 61 3C */	lwz r0, 0x613c(r30)
/* 805F7344  7F 44 D3 78 */	mr r4, r26
/* 805F7348  7C A0 EA 14 */	add r5, r0, r29
/* 805F734C  A3 45 00 68 */	lhz r26, 0x68(r5)
/* 805F7350  4B FF F9 0D */	bl mTG_mark_main_CLR
/* 805F7354  28 1A 2D 28 */	cmplwi r26, 0x2d28
/* 805F7358  41 80 00 58 */	blt lbl_805F73B0
/* 805F735C  28 1A 2D 2C */	cmplwi r26, 0x2d2c
/* 805F7360  41 81 00 50 */	bgt lbl_805F73B0
/* 805F7364  38 00 00 02 */	li r0, 2
/* 805F7368  38 A0 2D 28 */	li r5, 0x2d28
/* 805F736C  B0 1C 02 32 */	sth r0, 0x232(r28)
/* 805F7370  7F A3 EB 78 */	mr r3, r29
/* 805F7374  38 00 00 00 */	li r0, 0
/* 805F7378  38 9A FF FF */	addi r4, r26, -1
/* 805F737C  B0 BC 02 34 */	sth r5, 0x234(r28)
/* 805F7380  80 BE 61 3C */	lwz r5, 0x613c(r30)
/* 805F7384  80 A5 00 88 */	lwz r5, 0x88(r5)
/* 805F7388  7C A3 1C 30 */	srw r3, r5, r3
/* 805F738C  54 63 07 BE */	clrlwi r3, r3, 0x1e
/* 805F7390  90 7C 03 60 */	stw r3, 0x360(r28)
/* 805F7394  98 1C 03 64 */	stb r0, 0x364(r28)
/* 805F7398  9B FC 03 65 */	stb r31, 0x365(r28)
/* 805F739C  98 1C 03 67 */	stb r0, 0x367(r28)
/* 805F73A0  80 1E 61 3C */	lwz r0, 0x613c(r30)
/* 805F73A4  7C 60 EA 14 */	add r3, r0, r29
/* 805F73A8  B0 83 00 68 */	sth r4, 0x68(r3)
/* 805F73AC  48 00 00 D4 */	b lbl_805F7480
lbl_805F73B0:
/* 805F73B0  28 1A 20 00 */	cmplwi r26, 0x2000
/* 805F73B4  41 80 00 80 */	blt lbl_805F7434
/* 805F73B8  28 1A 20 FF */	cmplwi r26, 0x20ff
/* 805F73BC  41 81 00 78 */	bgt lbl_805F7434
/* 805F73C0  38 9A E0 00 */	addi r4, r26, -8192
/* 805F73C4  38 00 00 02 */	li r0, 2
/* 805F73C8  54 83 D0 0A */	slwi r3, r4, 0x1a
/* 805F73CC  B0 1C 02 32 */	sth r0, 0x232(r28)
/* 805F73D0  54 85 0F FE */	srwi r5, r4, 0x1f
/* 805F73D4  7C 80 36 70 */	srawi r0, r4, 6
/* 805F73D8  7C 65 18 50 */	subf r3, r5, r3
/* 805F73DC  57 E6 08 3C */	slwi r6, r31, 1
/* 805F73E0  54 64 30 3E */	rotlwi r4, r3, 6
/* 805F73E4  7C 84 2A 14 */	add r4, r4, r5
/* 805F73E8  7C 60 01 94 */	addze r3, r0
/* 805F73EC  38 84 20 00 */	addi r4, r4, 0x2000
/* 805F73F0  38 A0 00 00 */	li r5, 0
/* 805F73F4  B0 9C 02 34 */	sth r4, 0x234(r28)
/* 805F73F8  38 03 FF FF */	addi r0, r3, -1
/* 805F73FC  54 00 30 32 */	slwi r0, r0, 6
/* 805F7400  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 805F7404  7C 84 02 14 */	add r4, r4, r0
/* 805F7408  80 03 00 88 */	lwz r0, 0x88(r3)
/* 805F740C  7C 00 34 30 */	srw r0, r0, r6
/* 805F7410  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805F7414  90 1C 03 60 */	stw r0, 0x360(r28)
/* 805F7418  98 BC 03 64 */	stb r5, 0x364(r28)
/* 805F741C  9B FC 03 65 */	stb r31, 0x365(r28)
/* 805F7420  98 BC 03 67 */	stb r5, 0x367(r28)
/* 805F7424  80 1E 61 3C */	lwz r0, 0x613c(r30)
/* 805F7428  7C 60 EA 14 */	add r3, r0, r29
/* 805F742C  B0 83 00 68 */	sth r4, 0x68(r3)
/* 805F7430  48 00 00 50 */	b lbl_805F7480
lbl_805F7434:
/* 805F7434  38 60 00 02 */	li r3, 2
/* 805F7438  57 40 06 78 */	rlwinm r0, r26, 0, 0x19, 0x1c
/* 805F743C  B0 7C 02 32 */	sth r3, 0x232(r28)
/* 805F7440  60 00 2C 00 */	ori r0, r0, 0x2c00
/* 805F7444  57 E3 08 3C */	slwi r3, r31, 1
/* 805F7448  38 9A FF FF */	addi r4, r26, -1
/* 805F744C  B0 1C 02 34 */	sth r0, 0x234(r28)
/* 805F7450  38 00 00 00 */	li r0, 0
/* 805F7454  80 BE 61 3C */	lwz r5, 0x613c(r30)
/* 805F7458  80 A5 00 88 */	lwz r5, 0x88(r5)
/* 805F745C  7C A3 1C 30 */	srw r3, r5, r3
/* 805F7460  54 63 07 BE */	clrlwi r3, r3, 0x1e
/* 805F7464  90 7C 03 60 */	stw r3, 0x360(r28)
/* 805F7468  98 1C 03 64 */	stb r0, 0x364(r28)
/* 805F746C  9B FC 03 65 */	stb r31, 0x365(r28)
/* 805F7470  98 1C 03 67 */	stb r0, 0x367(r28)
/* 805F7474  80 1E 61 3C */	lwz r0, 0x613c(r30)
/* 805F7478  7C 60 EA 14 */	add r3, r0, r29
/* 805F747C  B0 83 00 68 */	sth r4, 0x68(r3)
lbl_805F7480:
/* 805F7480  7F 63 DB 78 */	mr r3, r27
/* 805F7484  38 80 00 00 */	li r4, 0
/* 805F7488  38 A0 00 00 */	li r5, 0
/* 805F748C  4B FF 83 29 */	bl mTG_return_tag_init
/* 805F7490  7F 63 DB 78 */	mr r3, r27
/* 805F7494  4B FF A1 09 */	bl mTG_init_tag_data_item_win
/* 805F7498  38 60 00 33 */	li r3, 0x33
/* 805F749C  48 03 68 69 */	bl sAdo_SysTrgStart
/* 805F74A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805F74A4  4B AA 3A 71 */	bl func_8009AF14
/* 805F74A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F74AC  7C 08 03 A6 */	mtlr r0
/* 805F74B0  38 21 00 20 */	addi r1, r1, 0x20
/* 805F74B4  4E 80 00 20 */	blr 
