lbl_80524960:
/* 80524960  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80524964  7C 08 02 A6 */	mflr r0
/* 80524968  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052496C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80524970  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80524974  38 61 00 14 */	addi r3, r1, 0x14
/* 80524978  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8052497C  3F E4 00 02 */	addis r31, r4, 2
/* 80524980  3B FF 61 20 */	addi r31, r31, 0x6120
/* 80524984  7F E4 FB 78 */	mr r4, r31
/* 80524988  4B EE 28 AD */	bl lbRTC_TimeCopy
/* 8052498C  38 61 00 14 */	addi r3, r1, 0x14
/* 80524990  38 80 00 07 */	li r4, 7
/* 80524994  4B EE 23 91 */	bl lbRTC_Add_DD
/* 80524998  7F E4 FB 78 */	mr r4, r31
/* 8052499C  38 61 00 0C */	addi r3, r1, 0xc
/* 805249A0  4B EE 28 95 */	bl lbRTC_TimeCopy
/* 805249A4  38 61 00 0C */	addi r3, r1, 0xc
/* 805249A8  38 80 00 08 */	li r4, 8
/* 805249AC  4B EE 23 79 */	bl lbRTC_Add_DD
/* 805249B0  88 81 00 17 */	lbz r4, 0x17(r1)
/* 805249B4  38 61 00 08 */	addi r3, r1, 8
/* 805249B8  4B EC A5 29 */	bl mString_Load_DayStringFromRom
/* 805249BC  4B E9 AC ED */	bl func_803BF6A8
/* 805249C0  38 A1 00 08 */	addi r5, r1, 8
/* 805249C4  38 80 00 00 */	li r4, 0
/* 805249C8  38 C0 00 04 */	li r6, 4
/* 805249CC  4B E9 B2 89 */	bl mMsg_Set_free_str
/* 805249D0  88 81 00 0F */	lbz r4, 0xf(r1)
/* 805249D4  38 61 00 08 */	addi r3, r1, 8
/* 805249D8  4B EC A5 09 */	bl mString_Load_DayStringFromRom
/* 805249DC  4B E9 AC CD */	bl func_803BF6A8
/* 805249E0  38 A1 00 08 */	addi r5, r1, 8
/* 805249E4  38 80 00 01 */	li r4, 1
/* 805249E8  38 C0 00 04 */	li r6, 4
/* 805249EC  4B E9 B2 69 */	bl mMsg_Set_free_str
/* 805249F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805249F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805249F8  7C 08 03 A6 */	mtlr r0
/* 805249FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80524A00  4E 80 00 20 */	blr 
