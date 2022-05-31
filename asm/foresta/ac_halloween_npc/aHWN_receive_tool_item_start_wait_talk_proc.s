lbl_80527944:
/* 80527944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527948  7C 08 02 A6 */	mflr r0
/* 8052794C  38 80 00 01 */	li r4, 1
/* 80527950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527954  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80527958  7C 7F 1B 78 */	mr r31, r3
/* 8052795C  38 60 00 04 */	li r3, 4
/* 80527960  4B E7 0B 1D */	bl mDemo_Get_OrderValue
/* 80527964  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80527968  2C 00 00 02 */	cmpwi r0, 2
/* 8052796C  40 82 00 48 */	bne lbl_805279B4
/* 80527970  A0 BF 09 A4 */	lhz r5, 0x9a4(r31)
/* 80527974  38 60 00 05 */	li r3, 5
/* 80527978  38 80 00 00 */	li r4, 0
/* 8052797C  4B E7 0A BD */	bl mDemo_Set_OrderValue
/* 80527980  38 60 00 05 */	li r3, 5
/* 80527984  38 80 00 01 */	li r4, 1
/* 80527988  38 A0 00 07 */	li r5, 7
/* 8052798C  4B E7 0A AD */	bl mDemo_Set_OrderValue
/* 80527990  38 60 00 05 */	li r3, 5
/* 80527994  38 80 00 02 */	li r4, 2
/* 80527998  38 A0 00 00 */	li r5, 0
/* 8052799C  4B E7 0A 9D */	bl mDemo_Set_OrderValue
/* 805279A0  4B E9 7D 09 */	bl func_803BF6A8
/* 805279A4  4B E9 93 9D */	bl mMsg_Set_LockContinue
/* 805279A8  7F E3 FB 78 */	mr r3, r31
/* 805279AC  38 80 00 06 */	li r4, 6
/* 805279B0  48 00 03 45 */	bl aHWN_change_talk_proc
lbl_805279B4:
/* 805279B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805279B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805279BC  7C 08 03 A6 */	mtlr r0
/* 805279C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805279C4  4E 80 00 20 */	blr 
