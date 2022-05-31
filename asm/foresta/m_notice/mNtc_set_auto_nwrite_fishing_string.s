lbl_803CA8E8:
/* 803CA8E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803CA8EC  7C 08 02 A6 */	mflr r0
/* 803CA8F0  3C A0 80 64 */	lis r5, lit_594@ha /* 0x806428B4@ha */
/* 803CA8F4  3C 80 80 64 */	lis r4, lit_595@ha /* 0x806428C0@ha */
/* 803CA8F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 803CA8FC  38 E5 28 B4 */	addi r7, r5, lit_594@l /* 0x806428B4@l */
/* 803CA900  38 A4 28 C0 */	addi r5, r4, lit_595@l /* 0x806428C0@l */
/* 803CA904  38 81 00 10 */	addi r4, r1, 0x10
/* 803CA908  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803CA90C  7C 7F 1B 78 */	mr r31, r3
/* 803CA910  3C 60 80 64 */	lis r3, lit_596@ha /* 0x806428C4@ha */
/* 803CA914  38 C3 28 C4 */	addi r6, r3, lit_596@l /* 0x806428C4@l */
/* 803CA918  81 47 00 00 */	lwz r10, 0(r7)
/* 803CA91C  81 27 00 04 */	lwz r9, 4(r7)
/* 803CA920  38 61 00 24 */	addi r3, r1, 0x24
/* 803CA924  89 07 00 08 */	lbz r8, 8(r7)
/* 803CA928  80 E5 00 00 */	lwz r7, 0(r5)
/* 803CA92C  38 A1 00 0C */	addi r5, r1, 0xc
/* 803CA930  A0 C6 00 00 */	lhz r6, 0(r6)
/* 803CA934  80 1F 00 00 */	lwz r0, 0(r31)
/* 803CA938  91 41 00 18 */	stw r10, 0x18(r1)
/* 803CA93C  91 21 00 1C */	stw r9, 0x1c(r1)
/* 803CA940  99 01 00 20 */	stb r8, 0x20(r1)
/* 803CA944  90 E1 00 14 */	stw r7, 0x14(r1)
/* 803CA948  B0 C1 00 08 */	sth r6, 8(r1)
/* 803CA94C  90 01 00 0C */	stw r0, 0xc(r1)
/* 803CA950  4B FE 13 B5 */	bl mEv_fishRecord_holder
/* 803CA954  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803CA958  38 61 00 08 */	addi r3, r1, 8
/* 803CA95C  38 80 00 02 */	li r4, 2
/* 803CA960  38 C0 00 02 */	li r6, 2
/* 803CA964  38 E0 00 00 */	li r7, 0
/* 803CA968  39 00 00 00 */	li r8, 0
/* 803CA96C  39 20 00 01 */	li r9, 1
/* 803CA970  4B FE 4B 09 */	bl mFont_UnintToString
/* 803CA974  88 9F 00 02 */	lbz r4, 2(r31)
/* 803CA978  38 61 00 18 */	addi r3, r1, 0x18
/* 803CA97C  48 02 44 AD */	bl mString_Load_MonthStringFromRom
/* 803CA980  38 81 00 18 */	addi r4, r1, 0x18
/* 803CA984  38 60 00 00 */	li r3, 0
/* 803CA988  38 A0 00 09 */	li r5, 9
/* 803CA98C  4B FE 6F CD */	bl mHandbill_Set_free_str
/* 803CA990  88 9F 00 03 */	lbz r4, 3(r31)
/* 803CA994  38 61 00 14 */	addi r3, r1, 0x14
/* 803CA998  48 02 45 49 */	bl mString_Load_DayStringFromRom
/* 803CA99C  38 81 00 14 */	addi r4, r1, 0x14
/* 803CA9A0  38 60 00 01 */	li r3, 1
/* 803CA9A4  38 A0 00 04 */	li r5, 4
/* 803CA9A8  4B FE 6F B1 */	bl mHandbill_Set_free_str
/* 803CA9AC  38 81 00 24 */	addi r4, r1, 0x24
/* 803CA9B0  38 60 00 02 */	li r3, 2
/* 803CA9B4  38 A0 00 08 */	li r5, 8
/* 803CA9B8  4B FE 6F A1 */	bl mHandbill_Set_free_str
/* 803CA9BC  38 81 00 08 */	addi r4, r1, 8
/* 803CA9C0  38 60 00 03 */	li r3, 3
/* 803CA9C4  38 A0 00 02 */	li r5, 2
/* 803CA9C8  4B FE 6F 91 */	bl mHandbill_Set_free_str
/* 803CA9CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803CA9D0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803CA9D4  7C 08 03 A6 */	mtlr r0
/* 803CA9D8  38 21 00 40 */	addi r1, r1, 0x40
/* 803CA9DC  4E 80 00 20 */	blr 
