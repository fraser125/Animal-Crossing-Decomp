lbl_80581018:
/* 80581018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058101C  7C 08 02 A6 */	mflr r0
/* 80581020  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80581024  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80581028  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058102C  3C 83 00 02 */	addis r4, r3, 2
/* 80581030  A0 64 61 26 */	lhz r3, 0x6126(r4)
/* 80581034  88 84 61 25 */	lbz r4, 0x6125(r4)
/* 80581038  4B E8 57 41 */	bl lbRTC_GetDaysByMonth
/* 8058103C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80581040  38 61 00 08 */	addi r3, r1, 8
/* 80581044  4B E6 DE 9D */	bl mString_Load_DayStringFromRom
/* 80581048  4B E3 E6 61 */	bl func_803BF6A8
/* 8058104C  38 A1 00 08 */	addi r5, r1, 8
/* 80581050  38 80 00 05 */	li r4, 5
/* 80581054  38 C0 00 04 */	li r6, 4
/* 80581058  4B E3 EB FD */	bl mMsg_Set_free_str
/* 8058105C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581060  7C 08 03 A6 */	mtlr r0
/* 80581064  38 21 00 10 */	addi r1, r1, 0x10
/* 80581068  4E 80 00 20 */	blr 
