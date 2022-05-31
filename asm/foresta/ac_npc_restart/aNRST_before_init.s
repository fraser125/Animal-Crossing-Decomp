lbl_805729DC:
/* 805729DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805729E0  7C 08 02 A6 */	mflr r0
/* 805729E4  38 80 00 09 */	li r4, 9
/* 805729E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805729EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805729F0  7C 7F 1B 78 */	mr r31, r3
/* 805729F4  38 60 00 04 */	li r3, 4
/* 805729F8  4B E2 5A 85 */	bl mDemo_Get_OrderValue
/* 805729FC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80572A00  41 82 00 28 */	beq lbl_80572A28
/* 80572A04  38 60 00 04 */	li r3, 4
/* 80572A08  38 80 00 09 */	li r4, 9
/* 80572A0C  38 A0 00 00 */	li r5, 0
/* 80572A10  4B E2 5A 29 */	bl mDemo_Set_OrderValue
/* 80572A14  4B E4 CC 95 */	bl func_803BF6A8
/* 80572A18  4B E4 E3 29 */	bl mMsg_Set_LockContinue
/* 80572A1C  7F E3 FB 78 */	mr r3, r31
/* 80572A20  38 80 00 06 */	li r4, 6
/* 80572A24  48 00 03 FD */	bl aNRST_change_talk_proc
lbl_80572A28:
/* 80572A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80572A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80572A30  7C 08 03 A6 */	mtlr r0
/* 80572A34  38 21 00 10 */	addi r1, r1, 0x10
/* 80572A38  4E 80 00 20 */	blr 
