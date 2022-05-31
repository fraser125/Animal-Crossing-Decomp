lbl_804E1AE8:
/* 804E1AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1AEC  7C 08 02 A6 */	mflr r0
/* 804E1AF0  3C 80 80 64 */	lis r4, basic_angle_6248@ha /* 0x80647E54@ha */
/* 804E1AF4  38 84 7E 54 */	addi r4, r4, basic_angle_6248@l /* 0x80647E54@l */
/* 804E1AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1AFC  7C 85 23 78 */	mr r5, r4
/* 804E1B00  7C 86 23 78 */	mr r6, r4
/* 804E1B04  7C 87 23 78 */	mr r7, r4
/* 804E1B08  4B FF FC 45 */	bl Player_actor_Item_net_CulcJointAngle_dummy_net_common
/* 804E1B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1B10  7C 08 03 A6 */	mtlr r0
/* 804E1B14  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1B18  4E 80 00 20 */	blr 
