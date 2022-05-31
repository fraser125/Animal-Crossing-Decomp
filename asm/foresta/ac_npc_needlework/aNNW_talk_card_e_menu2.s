lbl_8056414C:
/* 8056414C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80564150  7C 08 02 A6 */	mflr r0
/* 80564154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80564158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056415C  93 C1 00 08 */	stw r30, 8(r1)
/* 80564160  7C 7E 1B 78 */	mr r30, r3
/* 80564164  4B E5 B5 45 */	bl func_803BF6A8
/* 80564168  7C 7F 1B 78 */	mr r31, r3
/* 8056416C  4B E5 B5 F9 */	bl mMsg_Check_not_series_main_wait
/* 80564170  2C 03 00 01 */	cmpwi r3, 1
/* 80564174  40 82 00 20 */	bne lbl_80564194
/* 80564178  7F E3 FB 78 */	mr r3, r31
/* 8056417C  4B E5 CB D1 */	bl mMsg_Unset_LockContinue
/* 80564180  7F E3 FB 78 */	mr r3, r31
/* 80564184  4B E5 CB A5 */	bl mMsg_Set_ForceNext
/* 80564188  7F C3 F3 78 */	mr r3, r30
/* 8056418C  38 80 00 4C */	li r4, 0x4c
/* 80564190  48 00 02 F9 */	bl aNNW_change_talk_proc
lbl_80564194:
/* 80564194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80564198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056419C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805641A0  7C 08 03 A6 */	mtlr r0
/* 805641A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805641A8  4E 80 00 20 */	blr 
