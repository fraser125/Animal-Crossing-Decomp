lbl_805BC03C:
/* 805BC03C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC040  7C 08 02 A6 */	mflr r0
/* 805BC044  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC04C  7C 7F 1B 78 */	mr r31, r3
/* 805BC050  4B E0 36 59 */	bl func_803BF6A8
/* 805BC054  4B E0 4C 45 */	bl mMsg_Check_MainNormalContinue
/* 805BC058  2C 03 00 01 */	cmpwi r3, 1
/* 805BC05C  40 82 00 18 */	bne lbl_805BC074
/* 805BC060  4B E0 36 49 */	bl func_803BF6A8
/* 805BC064  4B E0 4C DD */	bl mMsg_Set_LockContinue
/* 805BC068  7F E3 FB 78 */	mr r3, r31
/* 805BC06C  38 80 00 0E */	li r4, 0xe
/* 805BC070  48 00 08 8D */	bl aSTC_clip_change_talk_proc
lbl_805BC074:
/* 805BC074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC078  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC07C  7C 08 03 A6 */	mtlr r0
/* 805BC080  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC084  4E 80 00 20 */	blr 
