lbl_805738A8:
/* 805738A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805738AC  7C 08 02 A6 */	mflr r0
/* 805738B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805738B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805738B8  7C 7F 1B 78 */	mr r31, r3
/* 805738BC  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 805738C0  28 00 00 00 */	cmplwi r0, 0
/* 805738C4  40 82 00 30 */	bne lbl_805738F4
/* 805738C8  4B E4 BD E1 */	bl func_803BF6A8
/* 805738CC  4B E4 BE 99 */	bl mMsg_Check_not_series_main_wait
/* 805738D0  2C 03 00 01 */	cmpwi r3, 1
/* 805738D4  40 82 00 20 */	bne lbl_805738F4
/* 805738D8  4B E4 BD D1 */	bl func_803BF6A8
/* 805738DC  4B E4 D4 4D */	bl mMsg_Set_ForceNext
/* 805738E0  38 00 00 02 */	li r0, 2
/* 805738E4  7F E3 FB 78 */	mr r3, r31
/* 805738E8  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 805738EC  38 80 00 0A */	li r4, 0xa
/* 805738F0  48 00 04 59 */	bl aNRTC_change_talk_proc
lbl_805738F4:
/* 805738F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805738F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805738FC  7C 08 03 A6 */	mtlr r0
/* 80573900  38 21 00 10 */	addi r1, r1, 0x10
/* 80573904  4E 80 00 20 */	blr 
