lbl_80474FC8:
/* 80474FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80474FCC  7C 08 02 A6 */	mflr r0
/* 80474FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474FD8  7C 7F 1B 78 */	mr r31, r3
/* 80474FDC  4B F0 E5 65 */	bl func_80383540
/* 80474FE0  4B F0 EB 8D */	bl mChoice_Get_ChoseNum
/* 80474FE4  2C 03 FF FF */	cmpwi r3, -1
/* 80474FE8  41 82 00 CC */	beq lbl_804750B4
/* 80474FEC  2C 03 00 01 */	cmpwi r3, 1
/* 80474FF0  41 82 00 64 */	beq lbl_80475054
/* 80474FF4  40 80 00 A8 */	bge lbl_8047509C
/* 80474FF8  2C 03 00 00 */	cmpwi r3, 0
/* 80474FFC  40 80 00 08 */	bge lbl_80475004
/* 80475000  48 00 00 9C */	b lbl_8047509C
lbl_80475004:
/* 80475004  38 60 00 0A */	li r3, 0xa
/* 80475008  38 80 00 00 */	li r4, 0
/* 8047500C  4B F7 B3 15 */	bl mSM_check_open_inventory_itemlist
/* 80475010  2C 03 00 00 */	cmpwi r3, 0
/* 80475014  40 82 00 24 */	bne lbl_80475038
/* 80475018  38 00 00 23 */	li r0, 0x23
/* 8047501C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475020  4B F4 A6 89 */	bl func_803BF6A8
/* 80475024  38 80 10 BD */	li r4, 0x10bd
/* 80475028  4B F4 AF 9D */	bl mMsg_Set_continue_msg_num
/* 8047502C  4B F4 A6 7D */	bl func_803BF6A8
/* 80475030  4B F4 BD 1D */	bl mMsg_Unset_LockContinue
/* 80475034  48 00 00 80 */	b lbl_804750B4
lbl_80475038:
/* 80475038  38 00 00 1E */	li r0, 0x1e
/* 8047503C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475040  4B F4 A6 69 */	bl func_803BF6A8
/* 80475044  4B F4 BC CD */	bl mMsg_Set_CancelNormalContinue
/* 80475048  4B F4 A6 61 */	bl func_803BF6A8
/* 8047504C  4B F4 BD 01 */	bl mMsg_Unset_LockContinue
/* 80475050  48 00 00 64 */	b lbl_804750B4
lbl_80475054:
/* 80475054  4B FF F1 25 */	bl aMR_GetMusicCountInMusicBox
/* 80475058  2C 03 00 00 */	cmpwi r3, 0
/* 8047505C  40 82 00 24 */	bne lbl_80475080
/* 80475060  38 00 00 23 */	li r0, 0x23
/* 80475064  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475068  4B F4 A6 41 */	bl func_803BF6A8
/* 8047506C  38 80 2F 28 */	li r4, 0x2f28
/* 80475070  4B F4 AF 55 */	bl mMsg_Set_continue_msg_num
/* 80475074  4B F4 A6 35 */	bl func_803BF6A8
/* 80475078  4B F4 BC D5 */	bl mMsg_Unset_LockContinue
/* 8047507C  48 00 00 38 */	b lbl_804750B4
lbl_80475080:
/* 80475080  38 00 00 20 */	li r0, 0x20
/* 80475084  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80475088  4B F4 A6 21 */	bl func_803BF6A8
/* 8047508C  4B F4 BC 85 */	bl mMsg_Set_CancelNormalContinue
/* 80475090  4B F4 A6 19 */	bl func_803BF6A8
/* 80475094  4B F4 BC B9 */	bl mMsg_Unset_LockContinue
/* 80475098  48 00 00 1C */	b lbl_804750B4
lbl_8047509C:
/* 8047509C  38 00 00 23 */	li r0, 0x23
/* 804750A0  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 804750A4  4B F4 A6 05 */	bl func_803BF6A8
/* 804750A8  4B F4 BC 69 */	bl mMsg_Set_CancelNormalContinue
/* 804750AC  4B F4 A5 FD */	bl func_803BF6A8
/* 804750B0  4B F4 BC 9D */	bl mMsg_Unset_LockContinue
lbl_804750B4:
/* 804750B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804750B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804750BC  7C 08 03 A6 */	mtlr r0
/* 804750C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804750C4  4E 80 00 20 */	blr 
