lbl_804DB0D4:
/* 804DB0D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DB0D8  7C 08 02 A6 */	mflr r0
/* 804DB0DC  3C 80 80 64 */	lis r4, data_p_table_3357@ha /* 0x806470F0@ha */
/* 804DB0E0  3C A0 80 64 */	lis r5, size_table_3358@ha /* 0x80647364@ha */
/* 804DB0E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DB0E8  38 84 70 F0 */	addi r4, r4, data_p_table_3357@l /* 0x806470F0@l */
/* 804DB0EC  38 A5 73 64 */	addi r5, r5, size_table_3358@l /* 0x80647364@l */
/* 804DB0F0  4B FF FE C1 */	bl Player_actor_Check_CommonFootMark_AnimeFrame_fromAnimeIndex
/* 804DB0F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DB0F8  7C 08 03 A6 */	mtlr r0
/* 804DB0FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DB100  4E 80 00 20 */	blr 
