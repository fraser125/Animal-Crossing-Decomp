lbl_803C08B0:
/* 803C08B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C08B4  7C 08 02 A6 */	mflr r0
/* 803C08B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C08BC  39 61 00 20 */	addi r11, r1, 0x20
/* 803C08C0  4B CD A6 11 */	bl func_8009AED0
/* 803C08C4  7C 7C 1B 79 */	or. r28, r3, r3
/* 803C08C8  7C 9D 23 78 */	mr r29, r4
/* 803C08CC  7C BE 2B 78 */	mr r30, r5
/* 803C08D0  41 82 00 A4 */	beq lbl_803C0974
/* 803C08D4  7F A3 EB 78 */	mr r3, r29
/* 803C08D8  4B FE BC 09 */	bl func_803AC4E0
/* 803C08DC  7F A3 EB 78 */	mr r3, r29
/* 803C08E0  38 81 00 0C */	addi r4, r1, 0xc
/* 803C08E4  38 A1 00 08 */	addi r5, r1, 8
/* 803C08E8  4B FF FE DD */	bl mMsg_Get_MsgDataAddressAndSize
/* 803C08EC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803C08F0  28 04 00 00 */	cmplwi r4, 0
/* 803C08F4  41 82 00 80 */	beq lbl_803C0974
/* 803C08F8  80 A1 00 08 */	lwz r5, 8(r1)
/* 803C08FC  28 05 00 00 */	cmplwi r5, 0
/* 803C0900  41 82 00 74 */	beq lbl_803C0974
/* 803C0904  54 83 00 34 */	rlwinm r3, r4, 0, 0, 0x1a
/* 803C0908  38 05 00 1F */	addi r0, r5, 0x1f
/* 803C090C  7F E3 20 50 */	subf r31, r3, r4
/* 803C0910  38 9C 00 20 */	addi r4, r28, 0x20
/* 803C0914  7C 1F 02 14 */	add r0, r31, r0
/* 803C0918  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 803C091C  4B C4 63 59 */	bl _JW_GetResourceAram
/* 803C0920  80 01 00 08 */	lwz r0, 8(r1)
/* 803C0924  38 9F 00 20 */	addi r4, r31, 0x20
/* 803C0928  38 7C 00 20 */	addi r3, r28, 0x20
/* 803C092C  7C 9C 22 14 */	add r4, r28, r4
/* 803C0930  7C 09 03 A6 */	mtctr r0
/* 803C0934  2C 00 00 00 */	cmpwi r0, 0
/* 803C0938  40 81 00 18 */	ble lbl_803C0950
lbl_803C093C:
/* 803C093C  88 04 00 00 */	lbz r0, 0(r4)
/* 803C0940  38 84 00 01 */	addi r4, r4, 1
/* 803C0944  98 03 00 00 */	stb r0, 0(r3)
/* 803C0948  38 63 00 01 */	addi r3, r3, 1
/* 803C094C  42 00 FF F0 */	bdnz lbl_803C093C
lbl_803C0950:
/* 803C0950  93 BC 00 04 */	stw r29, 4(r28)
/* 803C0954  38 00 00 01 */	li r0, 1
/* 803C0958  38 7C 00 20 */	addi r3, r28, 0x20
/* 803C095C  90 1C 00 00 */	stw r0, 0(r28)
/* 803C0960  4B FF FE AD */	bl mMsg_Count_MsgData
/* 803C0964  90 7C 00 08 */	stw r3, 8(r28)
/* 803C0968  38 60 00 01 */	li r3, 1
/* 803C096C  93 DC 00 0C */	stw r30, 0xc(r28)
/* 803C0970  48 00 00 10 */	b lbl_803C0980
lbl_803C0974:
/* 803C0974  38 00 00 00 */	li r0, 0
/* 803C0978  38 60 00 00 */	li r3, 0
/* 803C097C  90 1C 00 00 */	stw r0, 0(r28)
lbl_803C0980:
/* 803C0980  39 61 00 20 */	addi r11, r1, 0x20
/* 803C0984  4B CD A5 99 */	bl func_8009AF1C
/* 803C0988  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C098C  7C 08 03 A6 */	mtlr r0
/* 803C0990  38 21 00 20 */	addi r1, r1, 0x20
/* 803C0994  4E 80 00 20 */	blr 
