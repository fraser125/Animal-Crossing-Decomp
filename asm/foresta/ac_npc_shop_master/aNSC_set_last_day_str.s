lbl_8057750C:
/* 8057750C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80577510  7C 08 02 A6 */	mflr r0
/* 80577514  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80577518  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057751C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80577520  3C 83 00 02 */	addis r4, r3, 2
/* 80577524  A0 64 61 26 */	lhz r3, 0x6126(r4)
/* 80577528  88 84 61 25 */	lbz r4, 0x6125(r4)
/* 8057752C  4B E8 F2 4D */	bl lbRTC_GetDaysByMonth
/* 80577530  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80577534  38 61 00 08 */	addi r3, r1, 8
/* 80577538  4B E7 79 A9 */	bl mString_Load_DayStringFromRom
/* 8057753C  4B E4 81 6D */	bl func_803BF6A8
/* 80577540  38 A1 00 08 */	addi r5, r1, 8
/* 80577544  38 80 00 05 */	li r4, 5
/* 80577548  38 C0 00 04 */	li r6, 4
/* 8057754C  4B E4 87 09 */	bl mMsg_Set_free_str
/* 80577550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80577554  7C 08 03 A6 */	mtlr r0
/* 80577558  38 21 00 10 */	addi r1, r1, 0x10
/* 8057755C  4E 80 00 20 */	blr 
