lbl_803791E0:
/* 803791E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803791E4  7C 08 02 A6 */	mflr r0
/* 803791E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803791EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803791F0  7C 9F 23 78 */	mr r31, r4
/* 803791F4  93 C1 00 08 */	stw r30, 8(r1)
/* 803791F8  7C 7E 1B 78 */	mr r30, r3
/* 803791FC  48 02 1B 31 */	bl mEv_CheckFirstIntro
/* 80379200  2C 03 00 00 */	cmpwi r3, 0
/* 80379204  40 82 00 D4 */	bne lbl_803792D8
/* 80379208  48 02 1C B1 */	bl mEv_CheckTitleDemo
/* 8037920C  2C 03 FF F7 */	cmpwi r3, -9
/* 80379210  41 82 00 C8 */	beq lbl_803792D8
/* 80379214  48 02 BA 7D */	bl mFI_CheckFieldData
/* 80379218  2C 03 00 00 */	cmpwi r3, 0
/* 8037921C  41 82 00 BC */	beq lbl_803792D8
/* 80379220  48 02 BA AD */	bl mFI_GetFieldId
/* 80379224  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 80379228  2C 00 50 00 */	cmpwi r0, 0x5000
/* 8037922C  41 82 00 AC */	beq lbl_803792D8
/* 80379230  88 1E 00 04 */	lbz r0, 4(r30)
/* 80379234  28 00 00 00 */	cmplwi r0, 0
/* 80379238  40 82 00 A0 */	bne lbl_803792D8
/* 8037923C  7F E3 FB 78 */	mr r3, r31
/* 80379240  48 06 04 31 */	bl mPlib_get_player_actor_main_index
/* 80379244  2C 03 00 70 */	cmpwi r3, 0x70
/* 80379248  41 82 00 90 */	beq lbl_803792D8
/* 8037924C  7F E3 FB 78 */	mr r3, r31
/* 80379250  48 06 04 21 */	bl mPlib_get_player_actor_main_index
/* 80379254  2C 03 00 71 */	cmpwi r3, 0x71
/* 80379258  41 82 00 80 */	beq lbl_803792D8
/* 8037925C  7F E3 FB 78 */	mr r3, r31
/* 80379260  48 06 04 11 */	bl mPlib_get_player_actor_main_index
/* 80379264  2C 03 00 72 */	cmpwi r3, 0x72
/* 80379268  41 82 00 70 */	beq lbl_803792D8
/* 8037926C  7F E3 FB 78 */	mr r3, r31
/* 80379270  48 06 04 01 */	bl mPlib_get_player_actor_main_index
/* 80379274  2C 03 00 73 */	cmpwi r3, 0x73
/* 80379278  41 82 00 60 */	beq lbl_803792D8
/* 8037927C  7F E3 FB 78 */	mr r3, r31
/* 80379280  48 06 03 F1 */	bl mPlib_get_player_actor_main_index
/* 80379284  2C 03 00 74 */	cmpwi r3, 0x74
/* 80379288  41 82 00 50 */	beq lbl_803792D8
/* 8037928C  7F E3 FB 78 */	mr r3, r31
/* 80379290  48 06 03 E1 */	bl mPlib_get_player_actor_main_index
/* 80379294  2C 03 00 75 */	cmpwi r3, 0x75
/* 80379298  41 82 00 40 */	beq lbl_803792D8
/* 8037929C  3C 60 81 13 */	lis r3, signal_melody_buf@ha /* 0x811354C8@ha */
/* 803792A0  38 63 54 C8 */	addi r3, r3, signal_melody_buf@l /* 0x811354C8@l */
/* 803792A4  48 04 5F A1 */	bl mMld_GetMelody
/* 803792A8  48 02 DE 31 */	bl mFI_CheckInIsland
/* 803792AC  2C 03 00 00 */	cmpwi r3, 0
/* 803792B0  41 82 00 18 */	beq lbl_803792C8
/* 803792B4  3C 80 81 13 */	lis r4, signal_melody_buf@ha /* 0x811354C8@ha */
/* 803792B8  38 60 00 FE */	li r3, 0xfe
/* 803792BC  38 84 54 C8 */	addi r4, r4, signal_melody_buf@l /* 0x811354C8@l */
/* 803792C0  48 2B 4B C5 */	bl sAdo_Inst
/* 803792C4  48 00 00 14 */	b lbl_803792D8
lbl_803792C8:
/* 803792C8  3C 80 81 13 */	lis r4, signal_melody_buf@ha /* 0x811354C8@ha */
/* 803792CC  38 60 00 FF */	li r3, 0xff
/* 803792D0  38 84 54 C8 */	addi r4, r4, signal_melody_buf@l /* 0x811354C8@l */
/* 803792D4  48 2B 4B B1 */	bl sAdo_Inst
lbl_803792D8:
/* 803792D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803792DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803792E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803792E4  7C 08 03 A6 */	mtlr r0
/* 803792E8  38 21 00 10 */	addi r1, r1, 0x10
/* 803792EC  4E 80 00 20 */	blr 
