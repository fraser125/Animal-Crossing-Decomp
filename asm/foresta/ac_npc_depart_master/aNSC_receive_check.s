lbl_80550890:
/* 80550890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80550894  7C 08 02 A6 */	mflr r0
/* 80550898  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055089C  39 61 00 20 */	addi r11, r1, 0x20
/* 805508A0  4B B4 A6 35 */	bl func_8009AED4
/* 805508A4  7C 7D 1B 78 */	mr r29, r3
/* 805508A8  7C 9E 23 78 */	mr r30, r4
/* 805508AC  4B E6 ED FD */	bl func_803BF6A8
/* 805508B0  7C 7F 1B 78 */	mr r31, r3
/* 805508B4  4B E6 F7 19 */	bl mMsg_Get_msg_num
/* 805508B8  80 1D 09 C4 */	lwz r0, 0x9c4(r29)
/* 805508BC  7C 00 18 00 */	cmpw r0, r3
/* 805508C0  40 82 00 5C */	bne lbl_8055091C
/* 805508C4  7F E3 FB 78 */	mr r3, r31
/* 805508C8  4B E7 03 D1 */	bl mMsg_Check_MainNormalContinue
/* 805508CC  2C 03 00 00 */	cmpwi r3, 0
/* 805508D0  41 82 00 4C */	beq lbl_8055091C
/* 805508D4  83 FE 1F 60 */	lwz r31, 0x1f60(r30)
/* 805508D8  4B E3 2C 69 */	bl func_80383540
/* 805508DC  4B E3 32 91 */	bl mChoice_Get_ChoseNum
/* 805508E0  2C 03 00 00 */	cmpwi r3, 0
/* 805508E4  41 82 00 08 */	beq lbl_805508EC
/* 805508E8  48 00 00 24 */	b lbl_8055090C
lbl_805508EC:
/* 805508EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805508F0  88 9F 00 02 */	lbz r4, 2(r31)
/* 805508F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805508F8  38 A0 00 00 */	li r5, 0
/* 805508FC  3C 63 00 02 */	addis r3, r3, 2
/* 80550900  38 C0 00 00 */	li r6, 0
/* 80550904  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80550908  4B E9 05 21 */	bl mPr_SetPossessionItem
lbl_8055090C:
/* 8055090C  7F A3 EB 78 */	mr r3, r29
/* 80550910  7F C4 F3 78 */	mr r4, r30
/* 80550914  38 A0 00 0D */	li r5, 0xd
/* 80550918  48 00 1F 1D */	bl aNSC_setupAction
lbl_8055091C:
/* 8055091C  39 61 00 20 */	addi r11, r1, 0x20
/* 80550920  4B B4 A6 01 */	bl func_8009AF20
/* 80550924  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80550928  7C 08 03 A6 */	mtlr r0
/* 8055092C  38 21 00 20 */	addi r1, r1, 0x20
/* 80550930  4E 80 00 20 */	blr 
