lbl_8050501C:
/* 8050501C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505020  7C 08 02 A6 */	mflr r0
/* 80505024  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505028  4B FD A9 E5 */	bl Player_actor_sound_Get_bgm_num_forCompletePayment
/* 8050502C  38 80 01 68 */	li r4, 0x168
/* 80505030  4B E7 72 01 */	bl mBGMPsComp_delete_ps_fanfare
/* 80505034  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80505038  38 00 00 00 */	li r0, 0
/* 8050503C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80505040  3C 63 00 03 */	addis r3, r3, 3
/* 80505044  98 03 85 BF */	stb r0, -0x7a41(r3)
/* 80505048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050504C  7C 08 03 A6 */	mtlr r0
/* 80505050  38 21 00 10 */	addi r1, r1, 0x10
/* 80505054  4E 80 00 20 */	blr 
