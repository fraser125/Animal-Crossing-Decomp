lbl_804E1A74:
/* 804E1A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1A78  7C 08 02 A6 */	mflr r0
/* 804E1A7C  3C 80 80 64 */	lis r4, basic_start_move_angle_6236@ha /* 0x80647E24@ha */
/* 804E1A80  3C A0 80 66 */	lis r5, data_8065F050@ha /* 0x8065F050@ha */
/* 804E1A84  3C C0 80 64 */	lis r6, basic_end_left_turn_angle_6237@ha /* 0x80647E30@ha */
/* 804E1A88  3C E0 80 64 */	lis r7, basic_end_right_turn_angle_6238@ha /* 0x80647E3C@ha */
/* 804E1A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1A90  38 84 7E 24 */	addi r4, r4, basic_start_move_angle_6236@l /* 0x80647E24@l */
/* 804E1A94  38 A5 F0 50 */	addi r5, r5, data_8065F050@l /* 0x8065F050@l */
/* 804E1A98  38 C6 7E 30 */	addi r6, r6, basic_end_left_turn_angle_6237@l /* 0x80647E30@l */
/* 804E1A9C  38 E7 7E 3C */	addi r7, r7, basic_end_right_turn_angle_6238@l /* 0x80647E3C@l */
/* 804E1AA0  4B FF FC AD */	bl Player_actor_Item_net_CulcJointAngle_dummy_net_common
/* 804E1AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1AA8  7C 08 03 A6 */	mtlr r0
/* 804E1AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1AB0  4E 80 00 20 */	blr 
