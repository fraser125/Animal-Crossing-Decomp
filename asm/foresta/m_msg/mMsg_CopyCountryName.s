lbl_803C1854:
/* 803C1854  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803C1858  7C 08 02 A6 */	mflr r0
/* 803C185C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803C1860  39 61 00 40 */	addi r11, r1, 0x40
/* 803C1864  4B CD 96 61 */	bl func_8009AEC4
/* 803C1868  7C 7F 1B 78 */	mr r31, r3
/* 803C186C  7C 9D 23 78 */	mr r29, r4
/* 803C1870  7C BC 2B 78 */	mr r28, r5
/* 803C1874  7C D9 33 78 */	mr r25, r6
/* 803C1878  4B FE DF 91 */	bl mFont_CodeSize_idx_get
/* 803C187C  7C 7E 1B 78 */	mr r30, r3
/* 803C1880  4B FF 22 1D */	bl mLd_GetLandName
/* 803C1884  38 80 00 08 */	li r4, 8
/* 803C1888  7C 7B 1B 78 */	mr r27, r3
/* 803C188C  4B FF F3 D9 */	bl mMsg_Get_Length_String
/* 803C1890  7C 60 1B 78 */	mr r0, r3
/* 803C1894  7F E3 FB 78 */	mr r3, r31
/* 803C1898  7C 1A 03 78 */	mr r26, r0
/* 803C189C  7F 86 E3 78 */	mr r6, r28
/* 803C18A0  7C 9D D2 14 */	add r4, r29, r26
/* 803C18A4  7C BD F2 14 */	add r5, r29, r30
/* 803C18A8  7C 9C 23 78 */	mr r28, r4
/* 803C18AC  38 E0 00 00 */	li r7, 0
/* 803C18B0  4B FF F4 C5 */	bl mMsg_MoveDataCut
/* 803C18B4  7F DF EA 14 */	add r30, r31, r29
/* 803C18B8  7C 7D 1B 78 */	mr r29, r3
/* 803C18BC  7F 64 DB 78 */	mr r4, r27
/* 803C18C0  7F 45 D3 78 */	mr r5, r26
/* 803C18C4  7F C3 F3 78 */	mr r3, r30
/* 803C18C8  4B FF F5 75 */	bl mMsg_CopyString
/* 803C18CC  38 61 00 08 */	addi r3, r1, 8
/* 803C18D0  38 80 00 10 */	li r4, 0x10
/* 803C18D4  38 A0 01 E4 */	li r5, 0x1e4
/* 803C18D8  48 02 D3 F5 */	bl mString_Load_StringFromRom
/* 803C18DC  38 61 00 08 */	addi r3, r1, 8
/* 803C18E0  38 80 00 10 */	li r4, 0x10
/* 803C18E4  4B FF F3 81 */	bl mMsg_Get_Length_String
/* 803C18E8  7C 60 1B 78 */	mr r0, r3
/* 803C18EC  7F E3 FB 78 */	mr r3, r31
/* 803C18F0  7C 1A 03 78 */	mr r26, r0
/* 803C18F4  7F 85 E3 78 */	mr r5, r28
/* 803C18F8  7F A6 EB 78 */	mr r6, r29
/* 803C18FC  38 E0 00 00 */	li r7, 0
/* 803C1900  7C 9C D2 14 */	add r4, r28, r26
/* 803C1904  4B FF F4 71 */	bl mMsg_MoveDataCut
/* 803C1908  7C 7D 1B 78 */	mr r29, r3
/* 803C190C  7F 45 D3 78 */	mr r5, r26
/* 803C1910  7C 7F E2 14 */	add r3, r31, r28
/* 803C1914  38 81 00 08 */	addi r4, r1, 8
/* 803C1918  4B FF F5 25 */	bl mMsg_CopyString
/* 803C191C  28 19 00 00 */	cmplwi r25, 0
/* 803C1920  41 82 00 10 */	beq lbl_803C1930
/* 803C1924  88 7E 00 00 */	lbz r3, 0(r30)
/* 803C1928  4B FE DD 21 */	bl mFont_small_to_capital
/* 803C192C  98 7E 00 00 */	stb r3, 0(r30)
lbl_803C1930:
/* 803C1930  7F A3 EB 78 */	mr r3, r29
/* 803C1934  39 61 00 40 */	addi r11, r1, 0x40
/* 803C1938  4B CD 95 D9 */	bl func_8009AF10
/* 803C193C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803C1940  7C 08 03 A6 */	mtlr r0
/* 803C1944  38 21 00 40 */	addi r1, r1, 0x40
/* 803C1948  4E 80 00 20 */	blr 
