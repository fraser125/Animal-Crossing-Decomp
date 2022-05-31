lbl_805BC6F8:
/* 805BC6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC6FC  7C 08 02 A6 */	mflr r0
/* 805BC700  38 80 00 09 */	li r4, 9
/* 805BC704  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC70C  93 C1 00 08 */	stw r30, 8(r1)
/* 805BC710  7C 7E 1B 78 */	mr r30, r3
/* 805BC714  38 60 00 04 */	li r3, 4
/* 805BC718  4B DD BD 65 */	bl mDemo_Get_OrderValue
/* 805BC71C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 805BC720  4B E0 2F 89 */	bl func_803BF6A8
/* 805BC724  2C 1F 00 00 */	cmpwi r31, 0
/* 805BC728  41 82 00 5C */	beq lbl_805BC784
/* 805BC72C  4B E0 45 6D */	bl mMsg_Check_MainNormalContinue
/* 805BC730  2C 03 00 01 */	cmpwi r3, 1
/* 805BC734  40 82 00 50 */	bne lbl_805BC784
/* 805BC738  38 60 00 04 */	li r3, 4
/* 805BC73C  38 80 00 09 */	li r4, 9
/* 805BC740  38 A0 00 00 */	li r5, 0
/* 805BC744  4B DD BC F5 */	bl mDemo_Set_OrderValue
/* 805BC748  4B DC 6D F9 */	bl func_80383540
/* 805BC74C  4B DC 74 21 */	bl mChoice_Get_ChoseNum
/* 805BC750  2C 03 00 01 */	cmpwi r3, 1
/* 805BC754  41 82 00 24 */	beq lbl_805BC778
/* 805BC758  40 80 00 2C */	bge lbl_805BC784
/* 805BC75C  2C 03 00 00 */	cmpwi r3, 0
/* 805BC760  40 80 00 08 */	bge lbl_805BC768
/* 805BC764  48 00 00 20 */	b lbl_805BC784
lbl_805BC768:
/* 805BC768  7F C3 F3 78 */	mr r3, r30
/* 805BC76C  38 80 00 0B */	li r4, 0xb
/* 805BC770  48 00 01 8D */	bl aSTC_clip_change_talk_proc
/* 805BC774  48 00 00 10 */	b lbl_805BC784
lbl_805BC778:
/* 805BC778  7F C3 F3 78 */	mr r3, r30
/* 805BC77C  38 80 00 0F */	li r4, 0xf
/* 805BC780  48 00 01 7D */	bl aSTC_clip_change_talk_proc
lbl_805BC784:
/* 805BC784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC78C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BC790  7C 08 03 A6 */	mtlr r0
/* 805BC794  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC798  4E 80 00 20 */	blr 
