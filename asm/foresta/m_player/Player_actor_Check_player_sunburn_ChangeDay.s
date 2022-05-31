lbl_804DE49C:
/* 804DE49C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DE4A0  7C 08 02 A6 */	mflr r0
/* 804DE4A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DE4A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804DE4AC  4B EB CA 0D */	bl mEv_CheckTitleDemo
/* 804DE4B0  2C 03 00 00 */	cmpwi r3, 0
/* 804DE4B4  41 81 00 58 */	bgt lbl_804DE50C
/* 804DE4B8  4B EC 68 15 */	bl mFI_GetFieldId
/* 804DE4BC  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 804DE4C0  40 82 00 4C */	bne lbl_804DE50C
/* 804DE4C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE4C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE4CC  3C 83 00 02 */	addis r4, r3, 2
/* 804DE4D0  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 804DE4D4  3B E3 23 C4 */	addi r31, r3, 0x23c4
/* 804DE4D8  88 03 23 C8 */	lbz r0, 0x23c8(r3)
/* 804DE4DC  7C 00 07 75 */	extsb. r0, r0
/* 804DE4E0  40 81 00 2C */	ble lbl_804DE50C
/* 804DE4E4  38 61 00 08 */	addi r3, r1, 8
/* 804DE4E8  38 84 61 20 */	addi r4, r4, 0x6120
/* 804DE4EC  4B F1 4F 75 */	bl mTM_set_renew_time
/* 804DE4F0  7F E3 FB 78 */	mr r3, r31
/* 804DE4F4  38 81 00 08 */	addi r4, r1, 8
/* 804DE4F8  4B F2 87 29 */	bl lbRTC_GetIntervalDays2
/* 804DE4FC  2C 03 00 00 */	cmpwi r3, 0
/* 804DE500  40 80 00 0C */	bge lbl_804DE50C
/* 804DE504  80 01 00 08 */	lwz r0, 8(r1)
/* 804DE508  90 1F 00 00 */	stw r0, 0(r31)
lbl_804DE50C:
/* 804DE50C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DE510  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804DE514  7C 08 03 A6 */	mtlr r0
/* 804DE518  38 21 00 20 */	addi r1, r1, 0x20
/* 804DE51C  4E 80 00 20 */	blr 
