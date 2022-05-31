lbl_80420DF0:
/* 80420DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80420DF4  7C 08 02 A6 */	mflr r0
/* 80420DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80420DFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80420E00  4B C7 A0 D1 */	bl func_8009AED0
/* 80420E04  7C 9F 23 79 */	or. r31, r4, r4
/* 80420E08  7C 7E 1B 78 */	mr r30, r3
/* 80420E0C  38 80 00 00 */	li r4, 0
/* 80420E10  38 00 00 00 */	li r0, 0
/* 80420E14  7F E9 03 A6 */	mtctr r31
/* 80420E18  40 81 00 18 */	ble lbl_80420E30
lbl_80420E1C:
/* 80420E1C  7C 7E 22 14 */	add r3, r30, r4
/* 80420E20  38 84 00 02 */	addi r4, r4, 2
/* 80420E24  98 03 00 00 */	stb r0, 0(r3)
/* 80420E28  98 03 00 01 */	stb r0, 1(r3)
/* 80420E2C  42 00 FF F0 */	bdnz lbl_80420E1C
lbl_80420E30:
/* 80420E30  38 61 00 0C */	addi r3, r1, 0xc
/* 80420E34  38 81 00 08 */	addi r4, r1, 8
/* 80420E38  4B FF FF 59 */	bl river_start_block
/* 80420E3C  2C 03 00 00 */	cmpwi r3, 0
/* 80420E40  41 82 00 AC */	beq lbl_80420EEC
/* 80420E44  3B 80 00 01 */	li r28, 1
/* 80420E48  3B A0 00 02 */	li r29, 2
/* 80420E4C  48 00 00 8C */	b lbl_80420ED8
lbl_80420E50:
/* 80420E50  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80420E54  7C 7E EA 14 */	add r3, r30, r29
/* 80420E58  98 03 FF FE */	stb r0, -2(r3)
/* 80420E5C  80 01 00 08 */	lwz r0, 8(r1)
/* 80420E60  98 03 FF FF */	stb r0, -1(r3)
/* 80420E64  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80420E68  80 81 00 08 */	lwz r4, 8(r1)
/* 80420E6C  4B F8 53 79 */	bl mFI_BkNum2BlockType
/* 80420E70  4B FC 3F A1 */	bl mRF_BlockType2RiverNextDirect
/* 80420E74  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80420E78  2C 00 00 02 */	cmpwi r0, 2
/* 80420E7C  41 82 00 40 */	beq lbl_80420EBC
/* 80420E80  40 80 00 10 */	bge lbl_80420E90
/* 80420E84  2C 00 00 01 */	cmpwi r0, 1
/* 80420E88  40 80 00 14 */	bge lbl_80420E9C
/* 80420E8C  48 00 00 60 */	b lbl_80420EEC
lbl_80420E90:
/* 80420E90  2C 00 00 04 */	cmpwi r0, 4
/* 80420E94  40 80 00 58 */	bge lbl_80420EEC
/* 80420E98  48 00 00 14 */	b lbl_80420EAC
lbl_80420E9C:
/* 80420E9C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80420EA0  38 03 FF FF */	addi r0, r3, -1
/* 80420EA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80420EA8  48 00 00 28 */	b lbl_80420ED0
lbl_80420EAC:
/* 80420EAC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80420EB0  38 03 00 01 */	addi r0, r3, 1
/* 80420EB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80420EB8  48 00 00 18 */	b lbl_80420ED0
lbl_80420EBC:
/* 80420EBC  80 61 00 08 */	lwz r3, 8(r1)
/* 80420EC0  38 03 00 01 */	addi r0, r3, 1
/* 80420EC4  90 01 00 08 */	stw r0, 8(r1)
/* 80420EC8  48 00 00 08 */	b lbl_80420ED0
/* 80420ECC  48 00 00 20 */	b lbl_80420EEC
lbl_80420ED0:
/* 80420ED0  3B 9C 00 01 */	addi r28, r28, 1
/* 80420ED4  3B BD 00 02 */	addi r29, r29, 2
lbl_80420ED8:
/* 80420ED8  7C 1C F8 00 */	cmpw r28, r31
/* 80420EDC  40 80 00 10 */	bge lbl_80420EEC
/* 80420EE0  80 01 00 08 */	lwz r0, 8(r1)
/* 80420EE4  2C 00 00 07 */	cmpwi r0, 7
/* 80420EE8  41 80 FF 68 */	blt lbl_80420E50
lbl_80420EEC:
/* 80420EEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80420EF0  4B C7 A0 2D */	bl func_8009AF1C
/* 80420EF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80420EF8  7C 08 03 A6 */	mtlr r0
/* 80420EFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80420F00  4E 80 00 20 */	blr 
