lbl_805019CC:
/* 805019CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805019D0  7C 08 02 A6 */	mflr r0
/* 805019D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805019D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805019DC  4B B9 94 F9 */	bl func_8009AED4
/* 805019E0  7C 9E 23 78 */	mr r30, r4
/* 805019E4  7C 7D 1B 78 */	mr r29, r3
/* 805019E8  7C BF 2B 78 */	mr r31, r5
/* 805019EC  38 80 00 5C */	li r4, 0x5c
/* 805019F0  4B FD 8A 69 */	bl Player_actor_check_request_main_able
/* 805019F4  2C 03 00 00 */	cmpwi r3, 0
/* 805019F8  41 82 00 3C */	beq lbl_80501A34
/* 805019FC  7F A3 EB 78 */	mr r3, r29
/* 80501A00  4B ED 7C 41 */	bl get_player_actor_withoutCheck
/* 80501A04  80 DE 00 00 */	lwz r6, 0(r30)
/* 80501A08  7F E5 FB 78 */	mr r5, r31
/* 80501A0C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80501A10  38 80 00 5C */	li r4, 0x5c
/* 80501A14  90 C3 0D 60 */	stw r6, 0xd60(r3)
/* 80501A18  90 03 0D 64 */	stw r0, 0xd64(r3)
/* 80501A1C  80 1E 00 08 */	lwz r0, 8(r30)
/* 80501A20  90 03 0D 68 */	stw r0, 0xd68(r3)
/* 80501A24  7F A3 EB 78 */	mr r3, r29
/* 80501A28  4B FD 35 ED */	bl Player_actor_request_main_index
/* 80501A2C  38 60 00 01 */	li r3, 1
/* 80501A30  48 00 00 08 */	b lbl_80501A38
lbl_80501A34:
/* 80501A34  38 60 00 00 */	li r3, 0
lbl_80501A38:
/* 80501A38  39 61 00 20 */	addi r11, r1, 0x20
/* 80501A3C  4B B9 94 E5 */	bl func_8009AF20
/* 80501A40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80501A44  7C 08 03 A6 */	mtlr r0
/* 80501A48  38 21 00 20 */	addi r1, r1, 0x20
/* 80501A4C  4E 80 00 20 */	blr 
