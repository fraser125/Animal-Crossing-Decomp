lbl_8056F4B8:
/* 8056F4B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F4BC  7C 08 02 A6 */	mflr r0
/* 8056F4C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F4C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F4C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8056F4CC  7C 7E 1B 78 */	mr r30, r3
/* 8056F4D0  3C 60 80 6C */	lis r3, dt_tbl_569@ha /* 0x806BEDE0@ha */
/* 8056F4D4  80 9E 09 A0 */	lwz r4, 0x9a0(r30)
/* 8056F4D8  38 03 ED E0 */	addi r0, r3, dt_tbl_569@l /* 0x806BEDE0@l */
/* 8056F4DC  1C 64 00 0C */	mulli r3, r4, 0xc
/* 8056F4E0  7F E0 1A 14 */	add r31, r0, r3
/* 8056F4E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8056F4E8  4B E2 90 2D */	bl mDemo_Set_msg_num
/* 8056F4EC  88 7F 00 04 */	lbz r3, 4(r31)
/* 8056F4F0  4B E2 93 59 */	bl mDemo_Set_talk_turn
/* 8056F4F4  88 7F 00 05 */	lbz r3, 5(r31)
/* 8056F4F8  4B E2 94 29 */	bl mDemo_Set_camera
/* 8056F4FC  38 60 00 00 */	li r3, 0
/* 8056F500  98 7E 09 A8 */	stb r3, 0x9a8(r30)
/* 8056F504  80 1F 00 08 */	lwz r0, 8(r31)
/* 8056F508  90 1E 09 A4 */	stw r0, 0x9a4(r30)
/* 8056F50C  88 1F 00 06 */	lbz r0, 6(r31)
/* 8056F510  28 00 00 01 */	cmplwi r0, 1
/* 8056F514  40 82 00 10 */	bne lbl_8056F524
/* 8056F518  88 1E 09 AA */	lbz r0, 0x9aa(r30)
/* 8056F51C  B0 1E 09 78 */	sth r0, 0x978(r30)
/* 8056F520  48 00 00 08 */	b lbl_8056F528
lbl_8056F524:
/* 8056F524  B0 7E 09 78 */	sth r3, 0x978(r30)
lbl_8056F528:
/* 8056F528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F530  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056F534  7C 08 03 A6 */	mtlr r0
/* 8056F538  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F53C  4E 80 00 20 */	blr 
