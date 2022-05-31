lbl_8055E1E8:
/* 8055E1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E1EC  7C 08 02 A6 */	mflr r0
/* 8055E1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E1F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055E1F8  7C 9F 23 78 */	mr r31, r4
/* 8055E1FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8055E200  7C 7E 1B 78 */	mr r30, r3
/* 8055E204  4B FF DC 21 */	bl aNSC_message_ctrl
/* 8055E208  2C 03 00 01 */	cmpwi r3, 1
/* 8055E20C  41 82 00 3C */	beq lbl_8055E248
/* 8055E210  7F C3 F3 78 */	mr r3, r30
/* 8055E214  7F E4 FB 78 */	mr r4, r31
/* 8055E218  4B FF CC 41 */	bl aNSC_decide_next_move_act
/* 8055E21C  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 8055E220  7C 65 1B 78 */	mr r5, r3
/* 8055E224  7C 05 00 00 */	cmpw r5, r0
/* 8055E228  41 82 00 14 */	beq lbl_8055E23C
/* 8055E22C  7F C3 F3 78 */	mr r3, r30
/* 8055E230  7F E4 FB 78 */	mr r4, r31
/* 8055E234  48 00 0B 9D */	bl aNSC_setupAction
/* 8055E238  48 00 00 10 */	b lbl_8055E248
lbl_8055E23C:
/* 8055E23C  7F C3 F3 78 */	mr r3, r30
/* 8055E240  7F E4 FB 78 */	mr r4, r31
/* 8055E244  4B FF BE E5 */	bl aNMD_search_player
lbl_8055E248:
/* 8055E248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E24C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055E250  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055E254  7C 08 03 A6 */	mtlr r0
/* 8055E258  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E25C  4E 80 00 20 */	blr 
