lbl_804DB104:
/* 804DB104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB108  7C 08 02 A6 */	mflr r0
/* 804DB10C  3C 80 80 64 */	lis r4, data_p_table_3520@ha /* 0x80647690@ha */
/* 804DB110  3C A0 80 64 */	lis r5, size_table_3521@ha /* 0x80647904@ha */
/* 804DB114  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB118  38 84 76 90 */	addi r4, r4, data_p_table_3520@l /* 0x80647690@l */
/* 804DB11C  38 A5 79 04 */	addi r5, r5, size_table_3521@l /* 0x80647904@l */
/* 804DB120  4B FF FE 91 */	bl Player_actor_Check_CommonFootMark_AnimeFrame_fromAnimeIndex
/* 804DB124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB128  7C 08 03 A6 */	mtlr r0
/* 804DB12C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB130  4E 80 00 20 */	blr 
