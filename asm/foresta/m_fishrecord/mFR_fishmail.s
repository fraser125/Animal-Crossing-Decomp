lbl_803AC490:
/* 803AC490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AC494  7C 08 02 A6 */	mflr r0
/* 803AC498  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803AC49C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803AC4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AC4A4  3C 84 00 02 */	addis r4, r4, 2
/* 803AC4A8  38 61 00 08 */	addi r3, r1, 8
/* 803AC4AC  38 84 61 20 */	addi r4, r4, 0x6120
/* 803AC4B0  48 04 6F B1 */	bl mTM_set_renew_time
/* 803AC4B4  38 61 00 08 */	addi r3, r1, 8
/* 803AC4B8  4B FF F1 21 */	bl mFR_delete_after_record
/* 803AC4BC  4B FF FF 25 */	bl mFR_fishRecord_last_holder
/* 803AC4C0  38 61 00 08 */	addi r3, r1, 8
/* 803AC4C4  4B FF F1 9D */	bl mFR_delete_npc_record
/* 803AC4C8  4B FF FB B9 */	bl mFR_sort_record
/* 803AC4CC  4B FF FE 1D */	bl mFR_Fishmail_send
/* 803AC4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AC4D4  7C 08 03 A6 */	mtlr r0
/* 803AC4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803AC4DC  4E 80 00 20 */	blr 
