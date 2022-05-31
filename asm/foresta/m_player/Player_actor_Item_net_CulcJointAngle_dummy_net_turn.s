lbl_804E1AB4:
/* 804E1AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1AB8  7C 08 02 A6 */	mflr r0
/* 804E1ABC  3C 80 80 64 */	lis r4, basic_angle_6243@ha /* 0x80647E48@ha */
/* 804E1AC0  38 84 7E 48 */	addi r4, r4, basic_angle_6243@l /* 0x80647E48@l */
/* 804E1AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1AC8  7C 85 23 78 */	mr r5, r4
/* 804E1ACC  7C 86 23 78 */	mr r6, r4
/* 804E1AD0  7C 87 23 78 */	mr r7, r4
/* 804E1AD4  4B FF FC 79 */	bl Player_actor_Item_net_CulcJointAngle_dummy_net_common
/* 804E1AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1ADC  7C 08 03 A6 */	mtlr r0
/* 804E1AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1AE4  4E 80 00 20 */	blr 
