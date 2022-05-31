lbl_805BC79C:
/* 805BC79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC7A0  7C 08 02 A6 */	mflr r0
/* 805BC7A4  38 80 00 09 */	li r4, 9
/* 805BC7A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC7AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC7B0  93 C1 00 08 */	stw r30, 8(r1)
/* 805BC7B4  7C 7E 1B 78 */	mr r30, r3
/* 805BC7B8  38 60 00 04 */	li r3, 4
/* 805BC7BC  4B DD BC C1 */	bl mDemo_Get_OrderValue
/* 805BC7C0  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 805BC7C4  4B E0 2E E5 */	bl func_803BF6A8
/* 805BC7C8  2C 1F 00 00 */	cmpwi r31, 0
/* 805BC7CC  7C 7F 1B 78 */	mr r31, r3
/* 805BC7D0  41 82 00 34 */	beq lbl_805BC804
/* 805BC7D4  4B E0 44 C5 */	bl mMsg_Check_MainNormalContinue
/* 805BC7D8  2C 03 00 01 */	cmpwi r3, 1
/* 805BC7DC  40 82 00 28 */	bne lbl_805BC804
/* 805BC7E0  38 60 00 04 */	li r3, 4
/* 805BC7E4  38 80 00 09 */	li r4, 9
/* 805BC7E8  38 A0 00 00 */	li r5, 0
/* 805BC7EC  4B DD BC 4D */	bl mDemo_Set_OrderValue
/* 805BC7F0  7F E3 FB 78 */	mr r3, r31
/* 805BC7F4  4B E0 45 4D */	bl mMsg_Set_LockContinue
/* 805BC7F8  7F C3 F3 78 */	mr r3, r30
/* 805BC7FC  38 80 00 0C */	li r4, 0xc
/* 805BC800  48 00 00 FD */	bl aSTC_clip_change_talk_proc
lbl_805BC804:
/* 805BC804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC80C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805BC810  7C 08 03 A6 */	mtlr r0
/* 805BC814  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC818  4E 80 00 20 */	blr 
