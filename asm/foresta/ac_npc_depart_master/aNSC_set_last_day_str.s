lbl_8054D88C:
/* 8054D88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D890  7C 08 02 A6 */	mflr r0
/* 8054D894  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054D898  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054D89C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D8A0  3C 83 00 02 */	addis r4, r3, 2
/* 8054D8A4  A0 64 61 26 */	lhz r3, 0x6126(r4)
/* 8054D8A8  88 84 61 25 */	lbz r4, 0x6125(r4)
/* 8054D8AC  4B EB 8E CD */	bl lbRTC_GetDaysByMonth
/* 8054D8B0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8054D8B4  38 61 00 08 */	addi r3, r1, 8
/* 8054D8B8  4B EA 16 29 */	bl mString_Load_DayStringFromRom
/* 8054D8BC  4B E7 1D ED */	bl func_803BF6A8
/* 8054D8C0  38 A1 00 08 */	addi r5, r1, 8
/* 8054D8C4  38 80 00 05 */	li r4, 5
/* 8054D8C8  38 C0 00 04 */	li r6, 4
/* 8054D8CC  4B E7 23 89 */	bl mMsg_Set_free_str
/* 8054D8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D8D4  7C 08 03 A6 */	mtlr r0
/* 8054D8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D8DC  4E 80 00 20 */	blr 
