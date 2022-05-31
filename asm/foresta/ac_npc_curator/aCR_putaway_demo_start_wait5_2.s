lbl_8054C710:
/* 8054C710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054C714  7C 08 02 A6 */	mflr r0
/* 8054C718  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054C71C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C720  4B B4 E7 B5 */	bl func_8009AED4
/* 8054C724  7C 7D 1B 78 */	mr r29, r3
/* 8054C728  7C 9E 23 78 */	mr r30, r4
/* 8054C72C  4B E7 2F 7D */	bl func_803BF6A8
/* 8054C730  7C 7F 1B 78 */	mr r31, r3
/* 8054C734  4B E7 38 99 */	bl mMsg_Get_msg_num
/* 8054C738  2C 03 2F 89 */	cmpwi r3, 0x2f89
/* 8054C73C  40 82 00 4C */	bne lbl_8054C788
/* 8054C740  A0 7D 09 B4 */	lhz r3, 0x9b4(r29)
/* 8054C744  34 03 DD 00 */	addic. r0, r3, -8960
/* 8054C748  41 80 00 0C */	blt lbl_8054C754
/* 8054C74C  2C 00 00 29 */	cmpwi r0, 0x29
/* 8054C750  41 80 00 08 */	blt lbl_8054C758
lbl_8054C754:
/* 8054C754  38 00 00 00 */	li r0, 0
lbl_8054C758:
/* 8054C758  3C 60 80 6A */	lis r3, msg_no_962@ha /* 0x806A5210@ha */
/* 8054C75C  54 00 10 3A */	slwi r0, r0, 2
/* 8054C760  38 83 52 10 */	addi r4, r3, msg_no_962@l /* 0x806A5210@l */
/* 8054C764  7F E3 FB 78 */	mr r3, r31
/* 8054C768  7C 84 00 2E */	lwzx r4, r4, r0
/* 8054C76C  4B E7 38 59 */	bl mMsg_Set_continue_msg_num
/* 8054C770  81 9D 09 A8 */	lwz r12, 0x9a8(r29)
/* 8054C774  7F A3 EB 78 */	mr r3, r29
/* 8054C778  7F C4 F3 78 */	mr r4, r30
/* 8054C77C  38 A0 00 17 */	li r5, 0x17
/* 8054C780  7D 89 03 A6 */	mtctr r12
/* 8054C784  4E 80 04 21 */	bctrl 
lbl_8054C788:
/* 8054C788  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C78C  4B B4 E7 95 */	bl func_8009AF20
/* 8054C790  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054C794  7C 08 03 A6 */	mtlr r0
/* 8054C798  38 21 00 20 */	addi r1, r1, 0x20
/* 8054C79C  4E 80 00 20 */	blr 
