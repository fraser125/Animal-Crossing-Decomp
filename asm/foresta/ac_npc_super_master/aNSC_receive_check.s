lbl_8058401C:
/* 8058401C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80584020  7C 08 02 A6 */	mflr r0
/* 80584024  90 01 00 24 */	stw r0, 0x24(r1)
/* 80584028  39 61 00 20 */	addi r11, r1, 0x20
/* 8058402C  4B B1 6E A9 */	bl func_8009AED4
/* 80584030  7C 7D 1B 78 */	mr r29, r3
/* 80584034  7C 9E 23 78 */	mr r30, r4
/* 80584038  4B E3 B6 71 */	bl func_803BF6A8
/* 8058403C  7C 7F 1B 78 */	mr r31, r3
/* 80584040  4B E3 BF 8D */	bl mMsg_Get_msg_num
/* 80584044  80 1D 09 C4 */	lwz r0, 0x9c4(r29)
/* 80584048  7C 00 18 00 */	cmpw r0, r3
/* 8058404C  40 82 00 5C */	bne lbl_805840A8
/* 80584050  7F E3 FB 78 */	mr r3, r31
/* 80584054  4B E3 CC 45 */	bl mMsg_Check_MainNormalContinue
/* 80584058  2C 03 00 00 */	cmpwi r3, 0
/* 8058405C  41 82 00 4C */	beq lbl_805840A8
/* 80584060  83 FE 1F 60 */	lwz r31, 0x1f60(r30)
/* 80584064  4B DF F4 DD */	bl func_80383540
/* 80584068  4B DF FB 05 */	bl mChoice_Get_ChoseNum
/* 8058406C  2C 03 00 00 */	cmpwi r3, 0
/* 80584070  41 82 00 08 */	beq lbl_80584078
/* 80584074  48 00 00 24 */	b lbl_80584098
lbl_80584078:
/* 80584078  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058407C  88 9F 00 02 */	lbz r4, 2(r31)
/* 80584080  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80584084  38 A0 00 00 */	li r5, 0
/* 80584088  3C 63 00 02 */	addis r3, r3, 2
/* 8058408C  38 C0 00 00 */	li r6, 0
/* 80584090  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80584094  4B E5 CD 95 */	bl mPr_SetPossessionItem
lbl_80584098:
/* 80584098  7F A3 EB 78 */	mr r3, r29
/* 8058409C  7F C4 F3 78 */	mr r4, r30
/* 805840A0  38 A0 00 0D */	li r5, 0xd
/* 805840A4  48 00 1F 1D */	bl aNSC_setupAction
lbl_805840A8:
/* 805840A8  39 61 00 20 */	addi r11, r1, 0x20
/* 805840AC  4B B1 6E 75 */	bl func_8009AF20
/* 805840B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805840B4  7C 08 03 A6 */	mtlr r0
/* 805840B8  38 21 00 20 */	addi r1, r1, 0x20
/* 805840BC  4E 80 00 20 */	blr 
