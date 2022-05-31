lbl_804DE618:
/* 804DE618  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DE61C  7C 08 02 A6 */	mflr r0
/* 804DE620  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DE624  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804DE628  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804DE62C  7C 7E 1B 78 */	mr r30, r3
/* 804DE630  4B EB C8 89 */	bl mEv_CheckTitleDemo
/* 804DE634  2C 03 00 00 */	cmpwi r3, 0
/* 804DE638  41 81 00 6C */	bgt lbl_804DE6A4
/* 804DE63C  4B EC 66 91 */	bl mFI_GetFieldId
/* 804DE640  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 804DE644  40 82 00 60 */	bne lbl_804DE6A4
/* 804DE648  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE64C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE650  3C 83 00 02 */	addis r4, r3, 2
/* 804DE654  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 804DE658  3B E3 23 C4 */	addi r31, r3, 0x23c4
/* 804DE65C  88 03 23 C8 */	lbz r0, 0x23c8(r3)
/* 804DE660  7C 00 07 75 */	extsb. r0, r0
/* 804DE664  40 81 00 40 */	ble lbl_804DE6A4
/* 804DE668  80 1E 12 28 */	lwz r0, 0x1228(r30)
/* 804DE66C  2C 00 00 00 */	cmpwi r0, 0
/* 804DE670  40 82 00 34 */	bne lbl_804DE6A4
/* 804DE674  38 61 00 08 */	addi r3, r1, 8
/* 804DE678  38 84 61 20 */	addi r4, r4, 0x6120
/* 804DE67C  4B F1 4D E5 */	bl mTM_set_renew_time
/* 804DE680  7F E3 FB 78 */	mr r3, r31
/* 804DE684  38 81 00 08 */	addi r4, r1, 8
/* 804DE688  4B F2 85 99 */	bl lbRTC_GetIntervalDays2
/* 804DE68C  88 1F 00 05 */	lbz r0, 5(r31)
/* 804DE690  7C 00 07 74 */	extsb r0, r0
/* 804DE694  7C 00 18 51 */	subf. r0, r0, r3
/* 804DE698  40 81 00 0C */	ble lbl_804DE6A4
/* 804DE69C  38 00 00 01 */	li r0, 1
/* 804DE6A0  90 1E 12 28 */	stw r0, 0x1228(r30)
lbl_804DE6A4:
/* 804DE6A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DE6A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804DE6AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804DE6B0  7C 08 03 A6 */	mtlr r0
/* 804DE6B4  38 21 00 20 */	addi r1, r1, 0x20
/* 804DE6B8  4E 80 00 20 */	blr 
