lbl_80511638:
/* 80511638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051163C  7C 08 02 A6 */	mflr r0
/* 80511640  90 01 00 24 */	stw r0, 0x24(r1)
/* 80511644  39 61 00 20 */	addi r11, r1, 0x20
/* 80511648  4B B8 98 89 */	bl func_8009AED0
/* 8051164C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80511650  7C 9C 23 78 */	mr r28, r4
/* 80511654  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 80511658  3B C3 00 14 */	addi r30, r3, 0x14
/* 8051165C  3F E4 00 02 */	addis r31, r4, 2
/* 80511660  3B A0 00 00 */	li r29, 0
lbl_80511664:
/* 80511664  7F C3 F3 78 */	mr r3, r30
/* 80511668  4B FF E1 95 */	bl mAGrw_CheckFreeSSPosInfo_com
/* 8051166C  2C 03 00 01 */	cmpwi r3, 1
/* 80511670  41 82 00 20 */	beq lbl_80511690
/* 80511674  88 1F 60 03 */	lbz r0, 0x6003(r31)
/* 80511678  7C 00 E8 00 */	cmpw r0, r29
/* 8051167C  40 82 00 20 */	bne lbl_8051169C
/* 80511680  7F C3 F3 78 */	mr r3, r30
/* 80511684  4B FF E6 1D */	bl mAGrw_CheckMoneyStonePos
/* 80511688  2C 03 00 00 */	cmpwi r3, 0
/* 8051168C  40 82 00 10 */	bne lbl_8051169C
lbl_80511690:
/* 80511690  7F C3 F3 78 */	mr r3, r30
/* 80511694  7F 84 E3 78 */	mr r4, r28
/* 80511698  4B FF FE 65 */	bl mAGrw_SetMoneyStone_com
lbl_8051169C:
/* 8051169C  3B BD 00 01 */	addi r29, r29, 1
/* 805116A0  3B DE 00 04 */	addi r30, r30, 4
/* 805116A4  2C 1D 00 05 */	cmpwi r29, 5
/* 805116A8  41 80 FF BC */	blt lbl_80511664
/* 805116AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805116B0  4B B8 98 6D */	bl func_8009AF1C
/* 805116B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805116B8  7C 08 03 A6 */	mtlr r0
/* 805116BC  38 21 00 20 */	addi r1, r1, 0x20
/* 805116C0  4E 80 00 20 */	blr 
