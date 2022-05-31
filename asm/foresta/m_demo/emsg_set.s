lbl_80399DDC:
/* 80399DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399DE0  7C 08 02 A6 */	mflr r0
/* 80399DE4  3C 60 80 65 */	lis r3, win_color@ha /* 0x80651814@ha */
/* 80399DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399DEC  38 63 18 14 */	addi r3, r3, win_color@l /* 0x80651814@l */
/* 80399DF0  4B FF EA E1 */	bl mDemo_Set_talk_window_color
/* 80399DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399DF8  7C 08 03 A6 */	mtlr r0
/* 80399DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80399E00  4E 80 00 20 */	blr 
