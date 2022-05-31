lbl_8055A7F4:
/* 8055A7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055A7F8  7C 08 02 A6 */	mflr r0
/* 8055A7FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055A800  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055A804  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055A808  3C 83 00 02 */	addis r4, r3, 2
/* 8055A80C  A0 64 61 26 */	lhz r3, 0x6126(r4)
/* 8055A810  88 84 61 25 */	lbz r4, 0x6125(r4)
/* 8055A814  4B EA BF 65 */	bl lbRTC_GetDaysByMonth
/* 8055A818  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 8055A81C  38 61 00 08 */	addi r3, r1, 8
/* 8055A820  4B E9 46 C1 */	bl mString_Load_DayStringFromRom
/* 8055A824  4B E6 4E 85 */	bl func_803BF6A8
/* 8055A828  38 A1 00 08 */	addi r5, r1, 8
/* 8055A82C  38 80 00 05 */	li r4, 5
/* 8055A830  38 C0 00 04 */	li r6, 4
/* 8055A834  4B E6 54 21 */	bl mMsg_Set_free_str
/* 8055A838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055A83C  7C 08 03 A6 */	mtlr r0
/* 8055A840  38 21 00 10 */	addi r1, r1, 0x10
/* 8055A844  4E 80 00 20 */	blr 
