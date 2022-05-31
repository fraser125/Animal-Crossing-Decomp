lbl_8056AB58:
/* 8056AB58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056AB5C  7C 08 02 A6 */	mflr r0
/* 8056AB60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056AB64  38 81 00 0C */	addi r4, r1, 0xc
/* 8056AB68  38 A1 00 08 */	addi r5, r1, 8
/* 8056AB6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056AB70  3B E0 00 00 */	li r31, 0
/* 8056AB74  4B E3 15 69 */	bl mEv_get_event_place
/* 8056AB78  2C 03 00 01 */	cmpwi r3, 1
/* 8056AB7C  40 82 00 60 */	bne lbl_8056ABDC
/* 8056AB80  4B E5 4B 29 */	bl func_803BF6A8
/* 8056AB84  3C A0 80 6C */	lis r5, choume_str@ha /* 0x806BE800@ha */
/* 8056AB88  80 E1 00 08 */	lwz r7, 8(r1)
/* 8056AB8C  38 05 E8 00 */	addi r0, r5, choume_str@l /* 0x806BE800@l */
/* 8056AB90  38 80 00 02 */	li r4, 2
/* 8056AB94  38 C0 00 01 */	li r6, 1
/* 8056AB98  7C 7F 1B 78 */	mr r31, r3
/* 8056AB9C  7C A0 3A 14 */	add r5, r0, r7
/* 8056ABA0  4B E5 50 B5 */	bl mMsg_Set_free_str
/* 8056ABA4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8056ABA8  38 61 00 10 */	addi r3, r1, 0x10
/* 8056ABAC  38 80 00 05 */	li r4, 5
/* 8056ABB0  38 C0 00 05 */	li r6, 5
/* 8056ABB4  38 E0 00 01 */	li r7, 1
/* 8056ABB8  39 00 00 00 */	li r8, 0
/* 8056ABBC  39 20 00 01 */	li r9, 1
/* 8056ABC0  4B E4 48 B9 */	bl mFont_UnintToString
/* 8056ABC4  7F E3 FB 78 */	mr r3, r31
/* 8056ABC8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8056ABCC  38 80 00 03 */	li r4, 3
/* 8056ABD0  38 C0 00 05 */	li r6, 5
/* 8056ABD4  4B E5 50 81 */	bl mMsg_Set_free_str
/* 8056ABD8  3B E0 00 01 */	li r31, 1
lbl_8056ABDC:
/* 8056ABDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056ABE0  7F E3 FB 78 */	mr r3, r31
/* 8056ABE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056ABE8  7C 08 03 A6 */	mtlr r0
/* 8056ABEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8056ABF0  4E 80 00 20 */	blr 
