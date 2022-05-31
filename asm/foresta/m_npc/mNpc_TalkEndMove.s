lbl_803D386C:
/* 803D386C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D3870  7C 08 02 A6 */	mflr r0
/* 803D3874  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D3878  39 61 00 20 */	addi r11, r1, 0x20
/* 803D387C  4B CC 76 59 */	bl func_8009AED4
/* 803D3880  7C 7D 1B 79 */	or. r29, r3, r3
/* 803D3884  7C 9E 23 78 */	mr r30, r4
/* 803D3888  41 80 00 64 */	blt lbl_803D38EC
/* 803D388C  2C 1D 00 10 */	cmpwi r29, 0x10
/* 803D3890  40 80 00 5C */	bge lbl_803D38EC
/* 803D3894  2C 1E 00 00 */	cmpwi r30, 0
/* 803D3898  41 80 00 54 */	blt lbl_803D38EC
/* 803D389C  2C 1E 00 06 */	cmpwi r30, 6
/* 803D38A0  40 80 00 4C */	bge lbl_803D38EC
/* 803D38A4  3C A0 81 17 */	lis r5, l_npc_talk_info@ha /* 0x8116C5AC@ha */
/* 803D38A8  57 A6 18 38 */	slwi r6, r29, 3
/* 803D38AC  38 A5 C5 AC */	addi r5, r5, l_npc_talk_info@l /* 0x8116C5AC@l */
/* 803D38B0  38 00 03 E8 */	li r0, 0x3e8
/* 803D38B4  7F E5 32 14 */	add r31, r5, r6
/* 803D38B8  B0 1F 00 00 */	sth r0, 0(r31)
/* 803D38BC  4B FF FD 09 */	bl mNpc_CountTalkNum
/* 803D38C0  2C 03 00 01 */	cmpwi r3, 1
/* 803D38C4  40 82 00 28 */	bne lbl_803D38EC
/* 803D38C8  7F A3 EB 78 */	mr r3, r29
/* 803D38CC  7F C4 F3 78 */	mr r4, r30
/* 803D38D0  4B FF FD 59 */	bl mNpc_CheckOverImpatient
/* 803D38D4  2C 03 00 01 */	cmpwi r3, 1
/* 803D38D8  40 82 00 14 */	bne lbl_803D38EC
/* 803D38DC  7F C5 F3 78 */	mr r5, r30
/* 803D38E0  38 7F 00 04 */	addi r3, r31, 4
/* 803D38E4  38 9F 00 06 */	addi r4, r31, 6
/* 803D38E8  4B FF FC BD */	bl mNpc_SetUnlockTimer
lbl_803D38EC:
/* 803D38EC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D38F0  4B CC 76 31 */	bl func_8009AF20
/* 803D38F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D38F8  7C 08 03 A6 */	mtlr r0
/* 803D38FC  38 21 00 20 */	addi r1, r1, 0x20
/* 803D3900  4E 80 00 20 */	blr 
