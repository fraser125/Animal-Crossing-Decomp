lbl_80570B3C:
/* 80570B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570B40  7C 08 02 A6 */	mflr r0
/* 80570B44  38 80 00 01 */	li r4, 1
/* 80570B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570B50  7C 7F 1B 78 */	mr r31, r3
/* 80570B54  38 60 00 04 */	li r3, 4
/* 80570B58  4B E2 79 25 */	bl mDemo_Get_OrderValue
/* 80570B5C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80570B60  2C 00 00 04 */	cmpwi r0, 4
/* 80570B64  40 82 00 64 */	bne lbl_80570BC8
/* 80570B68  4B E7 30 01 */	bl mQst_GetFirstJobData
/* 80570B6C  88 03 00 00 */	lbz r0, 0(r3)
/* 80570B70  3C 80 80 6C */	lis r4, itemNo@ha /* 0x806BF09C@ha */
/* 80570B74  38 A4 F0 9C */	addi r5, r4, itemNo@l /* 0x806BF09C@l */
/* 80570B78  38 60 00 05 */	li r3, 5
/* 80570B7C  54 06 06 BE */	clrlwi r6, r0, 0x1a
/* 80570B80  38 80 00 00 */	li r4, 0
/* 80570B84  38 06 FF FD */	addi r0, r6, -3
/* 80570B88  54 00 08 3C */	slwi r0, r0, 1
/* 80570B8C  7C A5 02 2E */	lhzx r5, r5, r0
/* 80570B90  4B E2 78 A9 */	bl mDemo_Set_OrderValue
/* 80570B94  38 60 00 05 */	li r3, 5
/* 80570B98  38 80 00 01 */	li r4, 1
/* 80570B9C  38 A0 00 07 */	li r5, 7
/* 80570BA0  4B E2 78 99 */	bl mDemo_Set_OrderValue
/* 80570BA4  38 60 00 05 */	li r3, 5
/* 80570BA8  38 80 00 02 */	li r4, 2
/* 80570BAC  38 A0 00 00 */	li r5, 0
/* 80570BB0  4B E2 78 89 */	bl mDemo_Set_OrderValue
/* 80570BB4  4B E4 EA F5 */	bl func_803BF6A8
/* 80570BB8  4B E5 01 89 */	bl mMsg_Set_LockContinue
/* 80570BBC  7F E3 FB 78 */	mr r3, r31
/* 80570BC0  38 80 00 06 */	li r4, 6
/* 80570BC4  48 00 06 F1 */	bl aNRG2_change_talk_proc
lbl_80570BC8:
/* 80570BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570BD0  7C 08 03 A6 */	mtlr r0
/* 80570BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80570BD8  4E 80 00 20 */	blr 
