lbl_80557490:
/* 80557490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557494  7C 08 02 A6 */	mflr r0
/* 80557498  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055749C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805574A0  93 C1 00 08 */	stw r30, 8(r1)
/* 805574A4  7C 7E 1B 78 */	mr r30, r3
/* 805574A8  4B E6 82 01 */	bl func_803BF6A8
/* 805574AC  7C 7F 1B 78 */	mr r31, r3
/* 805574B0  4B E6 8B 1D */	bl mMsg_Get_msg_num
/* 805574B4  2C 03 23 64 */	cmpwi r3, 0x2364
/* 805574B8  40 82 00 34 */	bne lbl_805574EC
/* 805574BC  7F E3 FB 78 */	mr r3, r31
/* 805574C0  4B E6 97 D9 */	bl mMsg_Check_MainNormalContinue
/* 805574C4  2C 03 00 01 */	cmpwi r3, 1
/* 805574C8  40 82 00 24 */	bne lbl_805574EC
/* 805574CC  4B E2 C0 75 */	bl func_80383540
/* 805574D0  4B E2 C6 9D */	bl mChoice_Get_ChoseNum
/* 805574D4  2C 03 00 00 */	cmpwi r3, 0
/* 805574D8  41 82 00 08 */	beq lbl_805574E0
/* 805574DC  48 00 00 10 */	b lbl_805574EC
lbl_805574E0:
/* 805574E0  7F C3 F3 78 */	mr r3, r30
/* 805574E4  38 80 00 01 */	li r4, 1
/* 805574E8  48 00 00 1D */	bl aMJN2_change_talk_proc
lbl_805574EC:
/* 805574EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805574F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805574F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805574F8  7C 08 03 A6 */	mtlr r0
/* 805574FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80557500  4E 80 00 20 */	blr 
