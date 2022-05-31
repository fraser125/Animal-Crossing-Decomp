lbl_8047D26C:
/* 8047D26C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047D270  7C 08 02 A6 */	mflr r0
/* 8047D274  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047D278  39 61 00 20 */	addi r11, r1, 0x20
/* 8047D27C  4B C1 DC 59 */	bl func_8009AED4
/* 8047D280  7C 7F 1B 78 */	mr r31, r3
/* 8047D284  A8 03 03 EC */	lha r0, 0x3ec(r3)
/* 8047D288  2C 00 00 01 */	cmpwi r0, 1
/* 8047D28C  41 82 00 0C */	beq lbl_8047D298
/* 8047D290  2C 00 00 17 */	cmpwi r0, 0x17
/* 8047D294  40 82 00 10 */	bne lbl_8047D2A4
lbl_8047D298:
/* 8047D298  A8 7F 04 04 */	lha r3, 0x404(r31)
/* 8047D29C  38 03 00 01 */	addi r0, r3, 1
/* 8047D2A0  B0 1F 04 04 */	sth r0, 0x404(r31)
lbl_8047D2A4:
/* 8047D2A4  A8 1F 03 F8 */	lha r0, 0x3f8(r31)
/* 8047D2A8  2C 00 00 01 */	cmpwi r0, 1
/* 8047D2AC  40 82 02 04 */	bne lbl_8047D4B0
/* 8047D2B0  A8 1F 03 EC */	lha r0, 0x3ec(r31)
/* 8047D2B4  2C 00 00 01 */	cmpwi r0, 1
/* 8047D2B8  40 82 01 4C */	bne lbl_8047D404
/* 8047D2BC  A8 9F 03 FA */	lha r4, 0x3fa(r31)
/* 8047D2C0  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047D2C4  A8 1F 04 04 */	lha r0, 0x404(r31)
/* 8047D2C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047D2CC  38 A5 DF E8 */	addi r5, r5, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047D2D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047D2D4  2C 00 00 00 */	cmpwi r0, 0
/* 8047D2D8  3C 63 00 02 */	addis r3, r3, 2
/* 8047D2DC  80 A5 00 00 */	lwz r5, 0(r5)
/* 8047D2E0  1C 04 08 58 */	mulli r0, r4, 0x858
/* 8047D2E4  8B A3 60 03 */	lbz r29, 0x6003(r3)
/* 8047D2E8  7F C5 02 14 */	add r30, r5, r0
/* 8047D2EC  40 81 01 C4 */	ble lbl_8047D4B0
/* 8047D2F0  7F C3 F3 78 */	mr r3, r30
/* 8047D2F4  4B FF 2E E9 */	bl aMR_GetItemCountInFurniture
/* 8047D2F8  2C 03 00 00 */	cmpwi r3, 0
/* 8047D2FC  41 81 00 30 */	bgt lbl_8047D32C
/* 8047D300  7F A3 EB 78 */	mr r3, r29
/* 8047D304  7F E4 FB 78 */	mr r4, r31
/* 8047D308  4B FF 58 D5 */	bl aMR_CheckRoomOwner
/* 8047D30C  2C 03 00 00 */	cmpwi r3, 0
/* 8047D310  41 82 00 10 */	beq lbl_8047D320
/* 8047D314  38 00 00 02 */	li r0, 2
/* 8047D318  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D31C  48 00 01 94 */	b lbl_8047D4B0
lbl_8047D320:
/* 8047D320  38 00 00 09 */	li r0, 9
/* 8047D324  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D328  48 00 01 88 */	b lbl_8047D4B0
lbl_8047D32C:
/* 8047D32C  7F C3 F3 78 */	mr r3, r30
/* 8047D330  4B FF 2E AD */	bl aMR_GetItemCountInFurniture
/* 8047D334  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8047D338  7C 7E 1B 78 */	mr r30, r3
/* 8047D33C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8047D340  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8047D344  2C 00 00 06 */	cmpwi r0, 6
/* 8047D348  41 82 00 0C */	beq lbl_8047D354
/* 8047D34C  2C 00 00 30 */	cmpwi r0, 0x30
/* 8047D350  40 82 00 10 */	bne lbl_8047D360
lbl_8047D354:
/* 8047D354  38 00 00 09 */	li r0, 9
/* 8047D358  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D35C  48 00 01 54 */	b lbl_8047D4B0
lbl_8047D360:
/* 8047D360  7F A3 EB 78 */	mr r3, r29
/* 8047D364  7F E4 FB 78 */	mr r4, r31
/* 8047D368  4B FF 58 75 */	bl aMR_CheckRoomOwner
/* 8047D36C  2C 03 00 00 */	cmpwi r3, 0
/* 8047D370  41 82 00 4C */	beq lbl_8047D3BC
/* 8047D374  2C 1E 00 01 */	cmpwi r30, 1
/* 8047D378  41 82 00 20 */	beq lbl_8047D398
/* 8047D37C  40 80 00 10 */	bge lbl_8047D38C
/* 8047D380  2C 1E 00 00 */	cmpwi r30, 0
/* 8047D384  40 80 01 2C */	bge lbl_8047D4B0
/* 8047D388  48 00 00 28 */	b lbl_8047D3B0
lbl_8047D38C:
/* 8047D38C  2C 1E 00 03 */	cmpwi r30, 3
/* 8047D390  40 80 00 20 */	bge lbl_8047D3B0
/* 8047D394  48 00 00 10 */	b lbl_8047D3A4
lbl_8047D398:
/* 8047D398  38 00 00 03 */	li r0, 3
/* 8047D39C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D3A0  48 00 01 10 */	b lbl_8047D4B0
lbl_8047D3A4:
/* 8047D3A4  38 00 00 04 */	li r0, 4
/* 8047D3A8  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D3AC  48 00 01 04 */	b lbl_8047D4B0
lbl_8047D3B0:
/* 8047D3B0  38 00 00 05 */	li r0, 5
/* 8047D3B4  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D3B8  48 00 00 F8 */	b lbl_8047D4B0
lbl_8047D3BC:
/* 8047D3BC  2C 1E 00 01 */	cmpwi r30, 1
/* 8047D3C0  41 82 00 20 */	beq lbl_8047D3E0
/* 8047D3C4  40 80 00 10 */	bge lbl_8047D3D4
/* 8047D3C8  2C 1E 00 00 */	cmpwi r30, 0
/* 8047D3CC  40 80 00 E4 */	bge lbl_8047D4B0
/* 8047D3D0  48 00 00 28 */	b lbl_8047D3F8
lbl_8047D3D4:
/* 8047D3D4  2C 1E 00 03 */	cmpwi r30, 3
/* 8047D3D8  40 80 00 20 */	bge lbl_8047D3F8
/* 8047D3DC  48 00 00 10 */	b lbl_8047D3EC
lbl_8047D3E0:
/* 8047D3E0  38 00 00 0A */	li r0, 0xa
/* 8047D3E4  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D3E8  48 00 00 C8 */	b lbl_8047D4B0
lbl_8047D3EC:
/* 8047D3EC  38 00 00 0B */	li r0, 0xb
/* 8047D3F0  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D3F4  48 00 00 BC */	b lbl_8047D4B0
lbl_8047D3F8:
/* 8047D3F8  38 00 00 0C */	li r0, 0xc
/* 8047D3FC  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D400  48 00 00 B0 */	b lbl_8047D4B0
lbl_8047D404:
/* 8047D404  2C 00 00 17 */	cmpwi r0, 0x17
/* 8047D408  40 82 00 A8 */	bne lbl_8047D4B0
/* 8047D40C  A8 9F 03 FA */	lha r4, 0x3fa(r31)
/* 8047D410  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047D414  A8 1F 04 04 */	lha r0, 0x404(r31)
/* 8047D418  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047D41C  38 A5 DF E8 */	addi r5, r5, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047D420  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047D424  2C 00 00 00 */	cmpwi r0, 0
/* 8047D428  3C 63 00 02 */	addis r3, r3, 2
/* 8047D42C  80 A5 00 00 */	lwz r5, 0(r5)
/* 8047D430  1C 04 08 58 */	mulli r0, r4, 0x858
/* 8047D434  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8047D438  7F A5 02 14 */	add r29, r5, r0
/* 8047D43C  40 81 00 74 */	ble lbl_8047D4B0
/* 8047D440  A0 1D 08 44 */	lhz r0, 0x844(r29)
/* 8047D444  28 00 00 00 */	cmplwi r0, 0
/* 8047D448  40 82 00 2C */	bne lbl_8047D474
/* 8047D44C  7F E4 FB 78 */	mr r4, r31
/* 8047D450  4B FF 57 8D */	bl aMR_CheckRoomOwner
/* 8047D454  2C 03 00 00 */	cmpwi r3, 0
/* 8047D458  41 82 00 10 */	beq lbl_8047D468
/* 8047D45C  38 00 00 18 */	li r0, 0x18
/* 8047D460  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D464  48 00 00 4C */	b lbl_8047D4B0
lbl_8047D468:
/* 8047D468  38 00 00 1B */	li r0, 0x1b
/* 8047D46C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D470  48 00 00 40 */	b lbl_8047D4B0
lbl_8047D474:
/* 8047D474  7F E4 FB 78 */	mr r4, r31
/* 8047D478  4B FF 57 65 */	bl aMR_CheckRoomOwner
/* 8047D47C  2C 03 00 00 */	cmpwi r3, 0
/* 8047D480  41 82 00 28 */	beq lbl_8047D4A8
/* 8047D484  88 1D 01 2C */	lbz r0, 0x12c(r29)
/* 8047D488  28 00 00 00 */	cmplwi r0, 0
/* 8047D48C  41 82 00 10 */	beq lbl_8047D49C
/* 8047D490  38 00 00 19 */	li r0, 0x19
/* 8047D494  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D498  48 00 00 18 */	b lbl_8047D4B0
lbl_8047D49C:
/* 8047D49C  38 00 00 1A */	li r0, 0x1a
/* 8047D4A0  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047D4A4  48 00 00 0C */	b lbl_8047D4B0
lbl_8047D4A8:
/* 8047D4A8  38 00 00 1C */	li r0, 0x1c
/* 8047D4AC  B0 1F 03 EE */	sth r0, 0x3ee(r31)
lbl_8047D4B0:
/* 8047D4B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8047D4B4  4B C1 DA 6D */	bl func_8009AF20
/* 8047D4B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047D4BC  7C 08 03 A6 */	mtlr r0
/* 8047D4C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8047D4C4  4E 80 00 20 */	blr 
