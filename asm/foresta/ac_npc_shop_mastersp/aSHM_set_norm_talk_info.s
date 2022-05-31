lbl_8057D6D0:
/* 8057D6D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D6D4  7C 08 02 A6 */	mflr r0
/* 8057D6D8  3C 80 80 6C */	lis r4, dt_tbl_804@ha /* 0x806C07E0@ha */
/* 8057D6DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D6E0  38 04 07 E0 */	addi r0, r4, dt_tbl_804@l /* 0x806C07E0@l */
/* 8057D6E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D6E8  7C 7F 1B 78 */	mr r31, r3
/* 8057D6EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8057D6F0  80 63 09 A4 */	lwz r3, 0x9a4(r3)
/* 8057D6F4  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8057D6F8  7F C0 1A 14 */	add r30, r0, r3
/* 8057D6FC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8057D700  4B E1 AE 15 */	bl mDemo_Set_msg_num
/* 8057D704  88 7E 00 08 */	lbz r3, 8(r30)
/* 8057D708  4B E1 B1 41 */	bl mDemo_Set_talk_turn
/* 8057D70C  88 7E 00 09 */	lbz r3, 9(r30)
/* 8057D710  4B E1 B2 11 */	bl mDemo_Set_camera
/* 8057D714  80 9E 00 04 */	lwz r4, 4(r30)
/* 8057D718  7F E3 FB 78 */	mr r3, r31
/* 8057D71C  4B FF FE 91 */	bl aSHM_change_talk_proc
/* 8057D720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D728  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057D72C  7C 08 03 A6 */	mtlr r0
/* 8057D730  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D734  4E 80 00 20 */	blr 
