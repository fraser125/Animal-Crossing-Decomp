lbl_804DE520:
/* 804DE520  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DE524  7C 08 02 A6 */	mflr r0
/* 804DE528  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DE52C  39 61 00 30 */	addi r11, r1, 0x30
/* 804DE530  4B BB C9 A5 */	bl func_8009AED4
/* 804DE534  4B EB C9 85 */	bl mEv_CheckTitleDemo
/* 804DE538  2C 03 00 00 */	cmpwi r3, 0
/* 804DE53C  41 81 00 C4 */	bgt lbl_804DE600
/* 804DE540  4B EC 67 8D */	bl mFI_GetFieldId
/* 804DE544  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 804DE548  40 82 00 B8 */	bne lbl_804DE600
/* 804DE54C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE550  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE554  3C 83 00 02 */	addis r4, r3, 2
/* 804DE558  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 804DE55C  3B C3 23 C4 */	addi r30, r3, 0x23c4
/* 804DE560  88 03 23 C8 */	lbz r0, 0x23c8(r3)
/* 804DE564  7C 00 07 75 */	extsb. r0, r0
/* 804DE568  40 81 00 98 */	ble lbl_804DE600
/* 804DE56C  8B BE 00 05 */	lbz r29, 5(r30)
/* 804DE570  7F BD 07 75 */	extsb. r29, r29
/* 804DE574  40 81 00 8C */	ble lbl_804DE600
/* 804DE578  38 61 00 08 */	addi r3, r1, 8
/* 804DE57C  38 84 61 20 */	addi r4, r4, 0x6120
/* 804DE580  4B F1 4E E1 */	bl mTM_set_renew_time
/* 804DE584  7F C3 F3 78 */	mr r3, r30
/* 804DE588  38 81 00 08 */	addi r4, r1, 8
/* 804DE58C  4B F2 86 95 */	bl lbRTC_GetIntervalDays2
/* 804DE590  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DE594  40 81 00 6C */	ble lbl_804DE600
/* 804DE598  2C 1D 00 02 */	cmpwi r29, 2
/* 804DE59C  41 80 00 40 */	blt lbl_804DE5DC
/* 804DE5A0  3C 60 80 64 */	lis r3, lit_5030@ha /* 0x80647CD4@ha */
/* 804DE5A4  7F C4 F3 78 */	mr r4, r30
/* 804DE5A8  38 C3 7C D4 */	addi r6, r3, lit_5030@l /* 0x80647CD4@l */
/* 804DE5AC  38 61 00 0C */	addi r3, r1, 0xc
/* 804DE5B0  80 A6 00 00 */	lwz r5, 0(r6)
/* 804DE5B4  80 06 00 04 */	lwz r0, 4(r6)
/* 804DE5B8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804DE5BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DE5C0  4B F1 4E BD */	bl mTM_ymd_2_time
/* 804DE5C4  38 61 00 0C */	addi r3, r1, 0xc
/* 804DE5C8  38 81 00 14 */	addi r4, r1, 0x14
/* 804DE5CC  4B F2 88 E1 */	bl lbRTC_Add_Date
/* 804DE5D0  7F C3 F3 78 */	mr r3, r30
/* 804DE5D4  38 81 00 0C */	addi r4, r1, 0xc
/* 804DE5D8  4B F1 4E 89 */	bl mTM_set_renew_time
lbl_804DE5DC:
/* 804DE5DC  2C 1F 00 01 */	cmpwi r31, 1
/* 804DE5E0  40 82 00 0C */	bne lbl_804DE5EC
/* 804DE5E4  3B BD FF FF */	addi r29, r29, -1
/* 804DE5E8  48 00 00 08 */	b lbl_804DE5F0
lbl_804DE5EC:
/* 804DE5EC  3B BD FF FE */	addi r29, r29, -2
lbl_804DE5F0:
/* 804DE5F0  2C 1D 00 00 */	cmpwi r29, 0
/* 804DE5F4  40 80 00 08 */	bge lbl_804DE5FC
/* 804DE5F8  3B A0 00 00 */	li r29, 0
lbl_804DE5FC:
/* 804DE5FC  9B BE 00 05 */	stb r29, 5(r30)
lbl_804DE600:
/* 804DE600  39 61 00 30 */	addi r11, r1, 0x30
/* 804DE604  4B BB C9 1D */	bl func_8009AF20
/* 804DE608  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DE60C  7C 08 03 A6 */	mtlr r0
/* 804DE610  38 21 00 30 */	addi r1, r1, 0x30
/* 804DE614  4E 80 00 20 */	blr 
