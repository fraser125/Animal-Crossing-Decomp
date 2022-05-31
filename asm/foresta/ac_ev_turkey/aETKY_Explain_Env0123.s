lbl_80593AD4:
/* 80593AD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80593AD8  7C 08 02 A6 */	mflr r0
/* 80593ADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80593AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80593AE4  4B B0 73 ED */	bl func_8009AED0
/* 80593AE8  7C 7C 1B 78 */	mr r28, r3
/* 80593AEC  7C 9D 23 78 */	mr r29, r4
/* 80593AF0  83 C3 09 94 */	lwz r30, 0x994(r3)
/* 80593AF4  4B E2 BB B5 */	bl func_803BF6A8
/* 80593AF8  4B E2 C4 D5 */	bl mMsg_Get_msg_num
/* 80593AFC  7C 7F 1B 78 */	mr r31, r3
/* 80593B00  4B E2 BB A9 */	bl func_803BF6A8
/* 80593B04  4B E2 D1 95 */	bl mMsg_Check_MainNormalContinue
/* 80593B08  2C 03 00 00 */	cmpwi r3, 0
/* 80593B0C  41 82 00 4C */	beq lbl_80593B58
/* 80593B10  38 1E 3B FD */	addi r0, r30, 0x3bfd
/* 80593B14  7C 1F 00 00 */	cmpw r31, r0
/* 80593B18  40 82 00 40 */	bne lbl_80593B58
/* 80593B1C  80 1C 09 94 */	lwz r0, 0x994(r28)
/* 80593B20  2C 00 00 04 */	cmpwi r0, 4
/* 80593B24  40 82 00 14 */	bne lbl_80593B38
/* 80593B28  7F 83 E3 78 */	mr r3, r28
/* 80593B2C  7F A4 EB 78 */	mr r4, r29
/* 80593B30  4B FF FE B1 */	bl aETKY_SetKnifeForkSequence
/* 80593B34  48 00 00 24 */	b lbl_80593B58
lbl_80593B38:
/* 80593B38  4B E2 BB 71 */	bl func_803BF6A8
/* 80593B3C  38 9E 3B FE */	addi r4, r30, 0x3bfe
/* 80593B40  4B E2 C4 85 */	bl mMsg_Set_continue_msg_num
/* 80593B44  80 BC 09 94 */	lwz r5, 0x994(r28)
/* 80593B48  7F 83 E3 78 */	mr r3, r28
/* 80593B4C  7F A4 EB 78 */	mr r4, r29
/* 80593B50  38 A5 00 01 */	addi r5, r5, 1
/* 80593B54  48 00 02 31 */	bl aETKY_SetupTalkStat
lbl_80593B58:
/* 80593B58  39 61 00 20 */	addi r11, r1, 0x20
/* 80593B5C  4B B0 73 C1 */	bl func_8009AF1C
/* 80593B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80593B64  7C 08 03 A6 */	mtlr r0
/* 80593B68  38 21 00 20 */	addi r1, r1, 0x20
/* 80593B6C  4E 80 00 20 */	blr 
