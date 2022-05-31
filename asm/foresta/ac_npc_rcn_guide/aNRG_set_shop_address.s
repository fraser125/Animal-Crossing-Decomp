lbl_8056F0C8:
/* 8056F0C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056F0CC  7C 08 02 A6 */	mflr r0
/* 8056F0D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056F0D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056F0D8  7C 7F 1B 78 */	mr r31, r3
/* 8056F0DC  4B E5 05 CD */	bl func_803BF6A8
/* 8056F0E0  3C 80 80 6C */	lis r4, choume_str@ha /* 0x806BED60@ha */
/* 8056F0E4  80 BF 09 B0 */	lwz r5, 0x9b0(r31)
/* 8056F0E8  38 04 ED 60 */	addi r0, r4, choume_str@l /* 0x806BED60@l */
/* 8056F0EC  38 80 00 01 */	li r4, 1
/* 8056F0F0  7C A0 2A 14 */	add r5, r0, r5
/* 8056F0F4  38 C0 00 01 */	li r6, 1
/* 8056F0F8  4B E5 0B 5D */	bl mMsg_Set_free_str
/* 8056F0FC  80 BF 09 AC */	lwz r5, 0x9ac(r31)
/* 8056F100  38 61 00 08 */	addi r3, r1, 8
/* 8056F104  38 80 00 01 */	li r4, 1
/* 8056F108  38 C0 00 01 */	li r6, 1
/* 8056F10C  38 E0 00 01 */	li r7, 1
/* 8056F110  39 00 00 00 */	li r8, 0
/* 8056F114  39 20 00 01 */	li r9, 1
/* 8056F118  4B E4 03 61 */	bl mFont_UnintToString
/* 8056F11C  4B E5 05 8D */	bl func_803BF6A8
/* 8056F120  38 A1 00 08 */	addi r5, r1, 8
/* 8056F124  38 80 00 02 */	li r4, 2
/* 8056F128  38 C0 00 01 */	li r6, 1
/* 8056F12C  4B E5 0B 29 */	bl mMsg_Set_free_str
/* 8056F130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056F134  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056F138  7C 08 03 A6 */	mtlr r0
/* 8056F13C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056F140  4E 80 00 20 */	blr 
