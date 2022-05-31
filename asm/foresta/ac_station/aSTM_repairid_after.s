lbl_805BC088:
/* 805BC088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC08C  7C 08 02 A6 */	mflr r0
/* 805BC090  38 80 00 09 */	li r4, 9
/* 805BC094  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC098  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC09C  93 C1 00 08 */	stw r30, 8(r1)
/* 805BC0A0  7C 7E 1B 78 */	mr r30, r3
/* 805BC0A4  38 60 00 04 */	li r3, 4
/* 805BC0A8  4B DD C3 D5 */	bl mDemo_Get_OrderValue
/* 805BC0AC  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 805BC0B0  4B E0 35 F9 */	bl func_803BF6A8
/* 805BC0B4  2C 1F 00 00 */	cmpwi r31, 0
/* 805BC0B8  41 82 00 34 */	beq lbl_805BC0EC
/* 805BC0BC  4B E0 4B DD */	bl mMsg_Check_MainNormalContinue
/* 805BC0C0  2C 03 00 01 */	cmpwi r3, 1
/* 805BC0C4  40 82 00 28 */	bne lbl_805BC0EC
/* 805BC0C8  38 60 00 04 */	li r3, 4
/* 805BC0CC  38 80 00 09 */	li r4, 9
/* 805BC0D0  38 A0 00 00 */	li r5, 0
/* 805BC0D4  4B DD C3 65 */	bl mDemo_Set_OrderValue
/* 805BC0D8  4B E0 35 D1 */	bl func_803BF6A8
/* 805BC0DC  4B E0 4C 65 */	bl mMsg_Set_LockContinue
/* 805BC0E0  7F C3 F3 78 */	mr r3, r30
/* 805BC0E4  38 80 00 0E */	li r4, 0xe
/* 805BC0E8  48 00 08 15 */	bl aSTC_clip_change_talk_proc
lbl_805BC0EC:
/* 805BC0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC0F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC0F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BC0F8  7C 08 03 A6 */	mtlr r0
/* 805BC0FC  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC100  4E 80 00 20 */	blr 
