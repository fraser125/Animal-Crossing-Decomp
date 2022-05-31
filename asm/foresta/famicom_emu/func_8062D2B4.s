lbl_8062D2B4:
/* 8062D2B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062D2B8  7C 08 02 A6 */	mflr r0
/* 8062D2BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062D2C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8062D2C4  4B A6 DC 11 */	bl func_8009AED4
/* 8062D2C8  7C 7F 1B 78 */	mr r31, r3
/* 8062D2CC  7C 9D 23 78 */	mr r29, r4
/* 8062D2D0  7C BE 2B 78 */	mr r30, r5
/* 8062D2D4  4B DD 7F 71 */	bl game_getFreeBytes
/* 8062D2D8  7C 60 1B 78 */	mr r0, r3
/* 8062D2DC  38 7F 00 78 */	addi r3, r31, 0x78
/* 8062D2E0  7C 1F 03 78 */	mr r31, r0
/* 8062D2E4  7F E4 FB 78 */	mr r4, r31
/* 8062D2E8  4B DD 77 71 */	bl func_80404A58
/* 8062D2EC  38 03 00 0F */	addi r0, r3, 0xf
/* 8062D2F0  54 04 00 36 */	rlwinm r4, r0, 0, 0, 0x1b
/* 8062D2F4  7C 03 20 50 */	subf r0, r3, r4
/* 8062D2F8  7C 83 23 78 */	mr r3, r4
/* 8062D2FC  7C 80 F8 50 */	subf r4, r0, r31
/* 8062D300  4B D8 F2 6D */	bl zelda_InitArena
/* 8062D304  28 1D 00 00 */	cmplwi r29, 0
/* 8062D308  41 82 00 18 */	beq lbl_8062D320
/* 8062D30C  28 1E 00 00 */	cmplwi r30, 0
/* 8062D310  41 82 00 10 */	beq lbl_8062D320
/* 8062D314  7F A3 EB 78 */	mr r3, r29
/* 8062D318  7F C4 F3 78 */	mr r4, r30
/* 8062D31C  4B D8 F2 85 */	bl zelda_AddBlockArena
lbl_8062D320:
/* 8062D320  39 61 00 20 */	addi r11, r1, 0x20
/* 8062D324  4B A6 DB FD */	bl func_8009AF20
/* 8062D328  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062D32C  7C 08 03 A6 */	mtlr r0
/* 8062D330  38 21 00 20 */	addi r1, r1, 0x20
/* 8062D334  4E 80 00 20 */	blr 
