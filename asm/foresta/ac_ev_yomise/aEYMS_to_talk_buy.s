lbl_80526708:
/* 80526708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052670C  7C 08 02 A6 */	mflr r0
/* 80526710  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80526718  93 C1 00 08 */	stw r30, 8(r1)
/* 8052671C  7C 7E 1B 78 */	mr r30, r3
/* 80526720  A8 63 09 A2 */	lha r3, 0x9a2(r3)
/* 80526724  4B FF FC 2D */	bl aYMS_check_goods_cnt
/* 80526728  7C 7F 1B 78 */	mr r31, r3
/* 8052672C  A8 7E 09 A2 */	lha r3, 0x9a2(r30)
/* 80526730  38 80 00 03 */	li r4, 3
/* 80526734  4B FF FD 61 */	bl aEYMS_set_choise_data
/* 80526738  2C 1F 00 04 */	cmpwi r31, 4
/* 8052673C  B0 7E 09 A4 */	sth r3, 0x9a4(r30)
/* 80526740  40 80 00 14 */	bge lbl_80526754
/* 80526744  4B E9 8F 65 */	bl func_803BF6A8
/* 80526748  38 80 17 61 */	li r4, 0x1761
/* 8052674C  4B E9 98 79 */	bl mMsg_Set_continue_msg_num
/* 80526750  48 00 00 10 */	b lbl_80526760
lbl_80526754:
/* 80526754  4B E9 8F 55 */	bl func_803BF6A8
/* 80526758  38 80 17 62 */	li r4, 0x1762
/* 8052675C  4B E9 98 69 */	bl mMsg_Set_continue_msg_num
lbl_80526760:
/* 80526760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80526768  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052676C  7C 08 03 A6 */	mtlr r0
/* 80526770  38 21 00 10 */	addi r1, r1, 0x10
/* 80526774  4E 80 00 20 */	blr 
