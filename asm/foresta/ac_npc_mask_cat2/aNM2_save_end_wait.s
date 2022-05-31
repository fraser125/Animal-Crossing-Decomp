lbl_80560114:
/* 80560114  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80560118  7C 08 02 A6 */	mflr r0
/* 8056011C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80560120  39 61 00 20 */	addi r11, r1, 0x20
/* 80560124  4B B3 AD AD */	bl func_8009AED0
/* 80560128  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056012C  7C 9F 23 78 */	mr r31, r4
/* 80560130  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 80560134  7C 7C 1B 78 */	mr r28, r3
/* 80560138  3C 64 00 02 */	addis r3, r4, 2
/* 8056013C  38 C1 00 08 */	addi r6, r1, 8
/* 80560140  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80560144  3B C0 FF FF */	li r30, -1
/* 80560148  38 80 00 00 */	li r4, 0
/* 8056014C  38 A0 00 04 */	li r5, 4
/* 80560150  4B E9 FC 51 */	bl mCD_InitGameStart_bg
/* 80560154  28 03 00 16 */	cmplwi r3, 0x16
/* 80560158  41 81 00 3C */	bgt lbl_80560194
/* 8056015C  3C 80 80 6B */	lis r4, lit_732@ha /* 0x806AA3EC@ha */
/* 80560160  54 60 10 3A */	slwi r0, r3, 2
/* 80560164  38 64 A3 EC */	addi r3, r4, lit_732@l /* 0x806AA3EC@l */
/* 80560168  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056016C  7C 09 03 A6 */	mtctr r0
/* 80560170  4E 80 04 20 */	bctr 
lbl_80560174:
/* 80560174  3B C0 00 00 */	li r30, 0
/* 80560178  4B FF FC B5 */	bl aNM2_set_next_village_map
/* 8056017C  48 00 00 18 */	b lbl_80560194
lbl_80560180:
/* 80560180  3B C0 00 01 */	li r30, 1
/* 80560184  48 00 00 10 */	b lbl_80560194
lbl_80560188:
/* 80560188  3B C0 00 02 */	li r30, 2
/* 8056018C  48 00 00 08 */	b lbl_80560194
lbl_80560190:
/* 80560190  3B C0 00 03 */	li r30, 3
lbl_80560194:
/* 80560194  2C 1E FF FF */	cmpwi r30, -1
/* 80560198  41 82 00 4C */	beq lbl_805601E4
/* 8056019C  4B E5 F5 0D */	bl func_803BF6A8
/* 805601A0  7C 7D 1B 78 */	mr r29, r3
/* 805601A4  4B E6 0B A9 */	bl mMsg_Unset_LockContinue
/* 805601A8  3C 60 80 6B */	lis r3, msg_no@ha /* 0x806AA3DC@ha */
/* 805601AC  57 DE 10 3A */	slwi r30, r30, 2
/* 805601B0  38 83 A3 DC */	addi r4, r3, msg_no@l /* 0x806AA3DC@l */
/* 805601B4  7F A3 EB 78 */	mr r3, r29
/* 805601B8  7C 84 F0 2E */	lwzx r4, r4, r30
/* 805601BC  4B E5 FE 09 */	bl mMsg_Set_continue_msg_num
/* 805601C0  3C 60 80 6B */	lis r3, next_act_idx@ha /* 0x806AA3CC@ha */
/* 805601C4  80 1C 09 94 */	lwz r0, 0x994(r28)
/* 805601C8  38 83 A3 CC */	addi r4, r3, next_act_idx@l /* 0x806AA3CC@l */
/* 805601CC  7F 83 E3 78 */	mr r3, r28
/* 805601D0  7C A4 F0 2E */	lwzx r5, r4, r30
/* 805601D4  7F E4 FB 78 */	mr r4, r31
/* 805601D8  38 A5 FF FE */	addi r5, r5, -2
/* 805601DC  7C A0 2A 14 */	add r5, r0, r5
/* 805601E0  48 00 0C 11 */	bl aNM2_setupAction
lbl_805601E4:
/* 805601E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805601E8  4B B3 AD 35 */	bl func_8009AF1C
/* 805601EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805601F0  7C 08 03 A6 */	mtlr r0
/* 805601F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805601F8  4E 80 00 20 */	blr 
