lbl_80545F74:
/* 80545F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545F78  7C 08 02 A6 */	mflr r0
/* 80545F7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80545F80  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80545F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545F88  3C 83 00 02 */	addis r4, r3, 2
/* 80545F8C  A0 64 61 26 */	lhz r3, 0x6126(r4)
/* 80545F90  88 84 61 25 */	lbz r4, 0x6125(r4)
/* 80545F94  4B EC 07 E5 */	bl lbRTC_GetDaysByMonth
/* 80545F98  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80545F9C  38 61 00 08 */	addi r3, r1, 8
/* 80545FA0  4B EA 8F 41 */	bl mString_Load_DayStringFromRom
/* 80545FA4  4B E7 97 05 */	bl func_803BF6A8
/* 80545FA8  38 A1 00 08 */	addi r5, r1, 8
/* 80545FAC  38 80 00 05 */	li r4, 5
/* 80545FB0  38 C0 00 04 */	li r6, 4
/* 80545FB4  4B E7 9C A1 */	bl mMsg_Set_free_str
/* 80545FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80545FBC  7C 08 03 A6 */	mtlr r0
/* 80545FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80545FC4  4E 80 00 20 */	blr 
