lbl_8054C5E4:
/* 8054C5E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054C5E8  7C 08 02 A6 */	mflr r0
/* 8054C5EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054C5F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C5F4  4B B4 E8 DD */	bl func_8009AED0
/* 8054C5F8  7C 7C 1B 78 */	mr r28, r3
/* 8054C5FC  7C 9D 23 78 */	mr r29, r4
/* 8054C600  4B E7 30 A9 */	bl func_803BF6A8
/* 8054C604  80 9C 09 A0 */	lwz r4, 0x9a0(r28)
/* 8054C608  7C 7F 1B 78 */	mr r31, r3
/* 8054C60C  3B C4 FF F1 */	addi r30, r4, -15
/* 8054C610  4B E7 39 BD */	bl mMsg_Get_msg_num
/* 8054C614  3C 80 80 6A */	lis r4, chk_msg_num@ha /* 0x806A5204@ha */
/* 8054C618  57 C0 10 3A */	slwi r0, r30, 2
/* 8054C61C  38 84 52 04 */	addi r4, r4, chk_msg_num@l /* 0x806A5204@l */
/* 8054C620  7C 04 00 2E */	lwzx r0, r4, r0
/* 8054C624  7C 00 18 00 */	cmpw r0, r3
/* 8054C628  40 82 00 68 */	bne lbl_8054C690
/* 8054C62C  7F E3 FB 78 */	mr r3, r31
/* 8054C630  4B E7 46 69 */	bl mMsg_Check_MainNormalContinue
/* 8054C634  2C 03 00 00 */	cmpwi r3, 0
/* 8054C638  41 82 00 58 */	beq lbl_8054C690
/* 8054C63C  3B C0 00 00 */	li r30, 0
/* 8054C640  4B E3 6F 01 */	bl func_80383540
/* 8054C644  4B E3 75 29 */	bl mChoice_Get_ChoseNum
/* 8054C648  2C 03 00 00 */	cmpwi r3, 0
/* 8054C64C  40 82 00 10 */	bne lbl_8054C65C
/* 8054C650  3B C0 00 05 */	li r30, 5
/* 8054C654  38 80 2F 62 */	li r4, 0x2f62
/* 8054C658  48 00 00 0C */	b lbl_8054C664
lbl_8054C65C:
/* 8054C65C  4B FF F5 39 */	bl aCR_get_msg_no_after_talk
/* 8054C660  7C 64 1B 78 */	mr r4, r3
lbl_8054C664:
/* 8054C664  80 1C 09 A0 */	lwz r0, 0x9a0(r28)
/* 8054C668  2C 00 00 11 */	cmpwi r0, 0x11
/* 8054C66C  41 82 00 0C */	beq lbl_8054C678
/* 8054C670  7F E3 FB 78 */	mr r3, r31
/* 8054C674  4B E7 39 51 */	bl mMsg_Set_continue_msg_num
lbl_8054C678:
/* 8054C678  81 9C 09 A8 */	lwz r12, 0x9a8(r28)
/* 8054C67C  7F 83 E3 78 */	mr r3, r28
/* 8054C680  7F A4 EB 78 */	mr r4, r29
/* 8054C684  7F C5 F3 78 */	mr r5, r30
/* 8054C688  7D 89 03 A6 */	mtctr r12
/* 8054C68C  4E 80 04 21 */	bctrl 
lbl_8054C690:
/* 8054C690  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C694  4B B4 E8 89 */	bl func_8009AF1C
/* 8054C698  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054C69C  7C 08 03 A6 */	mtlr r0
/* 8054C6A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8054C6A4  4E 80 00 20 */	blr 
