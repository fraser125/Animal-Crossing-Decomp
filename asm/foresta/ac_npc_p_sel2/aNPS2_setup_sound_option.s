lbl_80567920:
/* 80567920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80567924  7C 08 02 A6 */	mflr r0
/* 80567928  38 60 00 04 */	li r3, 4
/* 8056792C  38 80 00 09 */	li r4, 9
/* 80567930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80567934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80567938  93 C1 00 08 */	stw r30, 8(r1)
/* 8056793C  4B E3 0B 41 */	bl mDemo_Get_OrderValue
/* 80567940  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80567944  38 60 00 00 */	li r3, 0
/* 80567948  41 82 00 9C */	beq lbl_805679E4
/* 8056794C  3B C0 00 00 */	li r30, 0
/* 80567950  4B E1 BB F1 */	bl func_80383540
/* 80567954  4B E1 C2 19 */	bl mChoice_Get_ChoseNum
/* 80567958  2C 03 00 01 */	cmpwi r3, 1
/* 8056795C  41 82 00 28 */	beq lbl_80567984
/* 80567960  40 80 00 10 */	bge lbl_80567970
/* 80567964  2C 03 00 00 */	cmpwi r3, 0
/* 80567968  40 80 00 14 */	bge lbl_8056797C
/* 8056796C  48 00 00 24 */	b lbl_80567990
lbl_80567970:
/* 80567970  2C 03 00 03 */	cmpwi r3, 3
/* 80567974  40 80 00 1C */	bge lbl_80567990
/* 80567978  48 00 00 14 */	b lbl_8056798C
lbl_8056797C:
/* 8056797C  3B C0 00 00 */	li r30, 0
/* 80567980  48 00 00 10 */	b lbl_80567990
lbl_80567984:
/* 80567984  3B C0 00 01 */	li r30, 1
/* 80567988  48 00 00 08 */	b lbl_80567990
lbl_8056798C:
/* 8056798C  3B C0 00 02 */	li r30, 2
lbl_80567990:
/* 80567990  3C 60 80 6C */	lis r3, sound_mode@ha /* 0x806BE408@ha */
/* 80567994  3B E3 E4 08 */	addi r31, r3, sound_mode@l /* 0x806BE408@l */
/* 80567998  7C 1F F0 AE */	lbzx r0, r31, r30
/* 8056799C  20 60 00 01 */	subfic r3, r0, 1
/* 805679A0  30 03 FF FF */	addic r0, r3, -1
/* 805679A4  7C 60 19 10 */	subfe r3, r0, r3
/* 805679A8  4B B1 5D ED */	bl OSSetSoundMode
/* 805679AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805679B0  3C 60 80 6C */	lis r3, aNPS2_sound_mode@ha /* 0x806BE3A4@ha */
/* 805679B4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805679B8  7C 1F F0 AE */	lbzx r0, r31, r30
/* 805679BC  3C 84 00 02 */	addis r4, r4, 2
/* 805679C0  38 63 E3 A4 */	addi r3, r3, aNPS2_sound_mode@l /* 0x806BE3A4@l */
/* 805679C4  98 04 0F 10 */	stb r0, 0xf10(r4)
/* 805679C8  7C 63 F0 AE */	lbzx r3, r3, r30
/* 805679CC  48 0C 66 25 */	bl sAdo_SetOutMode
/* 805679D0  38 60 00 04 */	li r3, 4
/* 805679D4  38 80 00 09 */	li r4, 9
/* 805679D8  38 A0 00 00 */	li r5, 0
/* 805679DC  4B E3 0A 5D */	bl mDemo_Set_OrderValue
/* 805679E0  38 60 00 01 */	li r3, 1
lbl_805679E4:
/* 805679E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805679E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805679EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805679F0  7C 08 03 A6 */	mtlr r0
/* 805679F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805679F8  4E 80 00 20 */	blr 