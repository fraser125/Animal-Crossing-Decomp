lbl_8051E768:
/* 8051E768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E76C  7C 08 02 A6 */	mflr r0
/* 8051E770  38 80 00 0D */	li r4, 0xd
/* 8051E774  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051E77C  93 C1 00 08 */	stw r30, 8(r1)
/* 8051E780  7C 7E 1B 78 */	mr r30, r3
/* 8051E784  38 60 00 44 */	li r3, 0x44
/* 8051E788  4B E7 F6 45 */	bl mEv_get_save_area
/* 8051E78C  A8 1E 09 9C */	lha r0, 0x99c(r30)
/* 8051E790  7C 7F 1B 78 */	mr r31, r3
/* 8051E794  2C 00 00 00 */	cmpwi r0, 0
/* 8051E798  41 82 00 20 */	beq lbl_8051E7B8
/* 8051E79C  4B EA 0F 0D */	bl func_803BF6A8
/* 8051E7A0  4B EA 24 F9 */	bl mMsg_Check_MainNormalContinue
/* 8051E7A4  2C 03 00 00 */	cmpwi r3, 0
/* 8051E7A8  40 82 00 78 */	bne lbl_8051E820
/* 8051E7AC  38 00 00 00 */	li r0, 0
/* 8051E7B0  B0 1E 09 9C */	sth r0, 0x99c(r30)
/* 8051E7B4  48 00 00 6C */	b lbl_8051E820
lbl_8051E7B8:
/* 8051E7B8  4B EA 0E F1 */	bl func_803BF6A8
/* 8051E7BC  4B EA 24 DD */	bl mMsg_Check_MainNormalContinue
/* 8051E7C0  2C 03 00 00 */	cmpwi r3, 0
/* 8051E7C4  41 82 00 5C */	beq lbl_8051E820
/* 8051E7C8  4B FF FE 39 */	bl aEDZ_ageru
/* 8051E7CC  A0 9F 00 00 */	lhz r4, 0(r31)
/* 8051E7D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051E7D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051E7D8  38 00 00 01 */	li r0, 1
/* 8051E7DC  60 84 00 02 */	ori r4, r4, 2
/* 8051E7E0  B0 9F 00 00 */	sth r4, 0(r31)
/* 8051E7E4  3C 63 00 02 */	addis r3, r3, 2
/* 8051E7E8  98 03 06 87 */	stb r0, 0x687(r3)
/* 8051E7EC  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8051E7F0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8051E7F4  41 82 00 14 */	beq lbl_8051E808
/* 8051E7F8  4B EA 0E B1 */	bl func_803BF6A8
/* 8051E7FC  38 80 24 06 */	li r4, 0x2406
/* 8051E800  4B EA 17 C5 */	bl mMsg_Set_continue_msg_num
/* 8051E804  48 00 00 10 */	b lbl_8051E814
lbl_8051E808:
/* 8051E808  4B EA 0E A1 */	bl func_803BF6A8
/* 8051E80C  38 80 24 07 */	li r4, 0x2407
/* 8051E810  4B EA 17 B5 */	bl mMsg_Set_continue_msg_num
lbl_8051E814:
/* 8051E814  7F C3 F3 78 */	mr r3, r30
/* 8051E818  38 80 00 00 */	li r4, 0
/* 8051E81C  48 00 00 1D */	bl aEDZ_change_talk_proc
lbl_8051E820:
/* 8051E820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051E828  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051E82C  7C 08 03 A6 */	mtlr r0
/* 8051E830  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E834  4E 80 00 20 */	blr 
