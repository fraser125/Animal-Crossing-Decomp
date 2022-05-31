lbl_803EC66C:
/* 803EC66C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EC670  7C 08 02 A6 */	mflr r0
/* 803EC674  38 A0 00 00 */	li r5, 0
/* 803EC678  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EC67C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803EC680  28 00 00 1C */	cmplwi r0, 0x1c
/* 803EC684  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EC688  7C 7F 1B 78 */	mr r31, r3
/* 803EC68C  40 80 00 60 */	bge lbl_803EC6EC
/* 803EC690  28 00 00 04 */	cmplwi r0, 4
/* 803EC694  40 82 00 30 */	bne lbl_803EC6C4
/* 803EC698  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EC69C  38 61 00 08 */	addi r3, r1, 8
/* 803EC6A0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EC6A4  3C 84 00 01 */	addis r4, r4, 1
/* 803EC6A8  38 84 91 20 */	addi r4, r4, -28384
/* 803EC6AC  4B FC 72 45 */	bl mLd_CopyLandName
/* 803EC6B0  38 61 00 08 */	addi r3, r1, 8
/* 803EC6B4  38 80 00 08 */	li r4, 8
/* 803EC6B8  38 A0 00 20 */	li r5, 0x20
/* 803EC6BC  4B FC FF 69 */	bl func_803BC624
/* 803EC6C0  7C 65 1B 78 */	mr r5, r3
lbl_803EC6C4:
/* 803EC6C4  38 61 00 08 */	addi r3, r1, 8
/* 803EC6C8  20 85 00 10 */	subfic r4, r5, 0x10
/* 803EC6CC  7C 63 2A 14 */	add r3, r3, r5
/* 803EC6D0  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 803EC6D4  4B FF FF 65 */	bl mSC_get_event_name_str
/* 803EC6D8  4B FD 2F D1 */	bl func_803BF6A8
/* 803EC6DC  38 A1 00 08 */	addi r5, r1, 8
/* 803EC6E0  38 80 00 01 */	li r4, 1
/* 803EC6E4  38 C0 00 10 */	li r6, 0x10
/* 803EC6E8  4B FD 36 ED */	bl mMsg_Set_item_str
lbl_803EC6EC:
/* 803EC6EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EC6F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EC6F4  7C 08 03 A6 */	mtlr r0
/* 803EC6F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803EC6FC  4E 80 00 20 */	blr 
