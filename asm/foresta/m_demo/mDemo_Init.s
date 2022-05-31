lbl_8039A2F0:
/* 8039A2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039A2F4  7C 08 02 A6 */	mflr r0
/* 8039A2F8  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 8039A2FC  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 8039A300  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039A304  80 63 00 00 */	lwz r3, 0(r3)
/* 8039A308  38 00 00 00 */	li r0, 0
/* 8039A30C  90 03 00 00 */	stw r0, 0(r3)
/* 8039A310  90 03 00 04 */	stw r0, 4(r3)
/* 8039A314  48 00 00 B9 */	bl mDemo_Unset_SpeakerAble
/* 8039A318  48 00 00 CD */	bl mDemo_Unset_ListenAble
/* 8039A31C  4B FF E1 AD */	bl mDemo_Init_OrderValue
/* 8039A320  4B FF E2 D9 */	bl mDemo_Clear_change_player_destiny
/* 8039A324  4B FF FA E1 */	bl init_demo
/* 8039A328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039A32C  7C 08 03 A6 */	mtlr r0
/* 8039A330  38 21 00 10 */	addi r1, r1, 0x10
/* 8039A334  4E 80 00 20 */	blr 
