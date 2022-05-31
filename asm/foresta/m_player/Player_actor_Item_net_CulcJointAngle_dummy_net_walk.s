lbl_804E19F4:
/* 804E19F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E19F8  7C 08 02 A6 */	mflr r0
/* 804E19FC  3C 80 80 64 */	lis r4, basic_start_move_angle_6225@ha /* 0x80647E00@ha */
/* 804E1A00  3C A0 80 66 */	lis r5, data_8065F050@ha /* 0x8065F050@ha */
/* 804E1A04  3C C0 80 64 */	lis r6, basic_end_left_turn_angle_6226@ha /* 0x80647E0C@ha */
/* 804E1A08  3C E0 80 64 */	lis r7, basic_end_right_turn_angle_6227@ha /* 0x80647E18@ha */
/* 804E1A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1A10  38 84 7E 00 */	addi r4, r4, basic_start_move_angle_6225@l /* 0x80647E00@l */
/* 804E1A14  38 A5 F0 50 */	addi r5, r5, data_8065F050@l /* 0x8065F050@l */
/* 804E1A18  38 C6 7E 0C */	addi r6, r6, basic_end_left_turn_angle_6226@l /* 0x80647E0C@l */
/* 804E1A1C  38 E7 7E 18 */	addi r7, r7, basic_end_right_turn_angle_6227@l /* 0x80647E18@l */
/* 804E1A20  4B FF FD 2D */	bl Player_actor_Item_net_CulcJointAngle_dummy_net_common
/* 804E1A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1A28  7C 08 03 A6 */	mtlr r0
/* 804E1A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1A30  4E 80 00 20 */	blr 
