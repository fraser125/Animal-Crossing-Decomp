lbl_8056ABF4:
/* 8056ABF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056ABF8  7C 08 02 A6 */	mflr r0
/* 8056ABFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056AC00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056AC04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8056AC08  4B E3 14 45 */	bl mEv_get_special_event_day
/* 8056AC0C  54 7F 04 3F */	clrlwi. r31, r3, 0x10
/* 8056AC10  41 82 00 4C */	beq lbl_8056AC5C
/* 8056AC14  4B E5 4A 95 */	bl func_803BF6A8
/* 8056AC18  7C 7E 1B 78 */	mr r30, r3
/* 8056AC1C  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8056AC20  38 61 00 08 */	addi r3, r1, 8
/* 8056AC24  4B E8 42 BD */	bl mString_Load_DayStringFromRom
/* 8056AC28  7F C3 F3 78 */	mr r3, r30
/* 8056AC2C  38 A1 00 08 */	addi r5, r1, 8
/* 8056AC30  38 80 00 04 */	li r4, 4
/* 8056AC34  38 C0 00 04 */	li r6, 4
/* 8056AC38  4B E5 50 1D */	bl mMsg_Set_free_str
/* 8056AC3C  57 E4 C6 3E */	rlwinm r4, r31, 0x18, 0x18, 0x1f
/* 8056AC40  38 61 00 08 */	addi r3, r1, 8
/* 8056AC44  4B E8 41 E5 */	bl mString_Load_MonthStringFromRom
/* 8056AC48  7F C3 F3 78 */	mr r3, r30
/* 8056AC4C  38 A1 00 08 */	addi r5, r1, 8
/* 8056AC50  38 80 00 05 */	li r4, 5
/* 8056AC54  38 C0 00 09 */	li r6, 9
/* 8056AC58  4B E5 4F FD */	bl mMsg_Set_free_str
lbl_8056AC5C:
/* 8056AC5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056AC60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056AC64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8056AC68  7C 08 03 A6 */	mtlr r0
/* 8056AC6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056AC70  4E 80 00 20 */	blr 
