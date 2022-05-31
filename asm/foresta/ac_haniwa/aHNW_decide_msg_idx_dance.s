lbl_80427B90:
/* 80427B90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80427B94  7C 08 02 A6 */	mflr r0
/* 80427B98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80427B9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80427BA0  4B C7 33 35 */	bl func_8009AED4
/* 80427BA4  8B E3 02 83 */	lbz r31, 0x283(r3)
/* 80427BA8  7F E3 FB 78 */	mr r3, r31
/* 80427BAC  4B F8 BA 2D */	bl mHS_get_pl_no
/* 80427BB0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80427BB4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80427BB8  3F C5 00 02 */	addis r30, r5, 2
/* 80427BBC  1C 1F 26 B0 */	mulli r0, r31, 0x26b0
/* 80427BC0  88 9E 60 03 */	lbz r4, 0x6003(r30)
/* 80427BC4  7C 64 18 50 */	subf r3, r4, r3
/* 80427BC8  7F E5 02 14 */	add r31, r5, r0
/* 80427BCC  7C 60 00 34 */	cntlzw r0, r3
/* 80427BD0  3C 7F 00 01 */	addis r3, r31, 1
/* 80427BD4  54 1D D9 7E */	srwi r29, r0, 5
/* 80427BD8  38 63 9C E8 */	addi r3, r3, -25368
/* 80427BDC  4B FB 84 69 */	bl mPr_NullCheckPersonalID
/* 80427BE0  2C 03 00 01 */	cmpwi r3, 1
/* 80427BE4  40 82 00 0C */	bne lbl_80427BF0
/* 80427BE8  38 60 00 00 */	li r3, 0
/* 80427BEC  48 00 00 8C */	b lbl_80427C78
lbl_80427BF0:
/* 80427BF0  2C 1D 00 01 */	cmpwi r29, 1
/* 80427BF4  40 82 00 80 */	bne lbl_80427C74
/* 80427BF8  3F BF 00 01 */	addis r29, r31, 1
/* 80427BFC  88 7E 60 03 */	lbz r3, 0x6003(r30)
/* 80427C00  3B BD C2 BC */	addi r29, r29, -15684
/* 80427C04  4B F8 B9 B5 */	bl mHS_get_arrange_idx
/* 80427C08  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80427C0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80427C10  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80427C14  7C 60 22 14 */	add r3, r0, r4
/* 80427C18  3C 63 00 01 */	addis r3, r3, 1
/* 80427C1C  88 03 9D 0C */	lbz r0, -0x62f4(r3)
/* 80427C20  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80427C24  40 82 00 34 */	bne lbl_80427C58
/* 80427C28  4B F7 30 0D */	bl mEv_CheckFirstJob
/* 80427C2C  2C 03 00 01 */	cmpwi r3, 1
/* 80427C30  40 82 00 28 */	bne lbl_80427C58
/* 80427C34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80427C38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80427C3C  3C 63 00 02 */	addis r3, r3, 2
/* 80427C40  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80427C44  4B FA 86 91 */	bl mNpc_GetFriendAnimalNum
/* 80427C48  2C 03 00 00 */	cmpwi r3, 0
/* 80427C4C  40 82 00 0C */	bne lbl_80427C58
/* 80427C50  38 60 00 04 */	li r3, 4
/* 80427C54  48 00 00 24 */	b lbl_80427C78
lbl_80427C58:
/* 80427C58  80 1D 00 A0 */	lwz r0, 0xa0(r29)
/* 80427C5C  28 00 00 00 */	cmplwi r0, 0
/* 80427C60  41 82 00 0C */	beq lbl_80427C6C
/* 80427C64  38 60 00 01 */	li r3, 1
/* 80427C68  48 00 00 10 */	b lbl_80427C78
lbl_80427C6C:
/* 80427C6C  38 60 00 02 */	li r3, 2
/* 80427C70  48 00 00 08 */	b lbl_80427C78
lbl_80427C74:
/* 80427C74  38 60 00 03 */	li r3, 3
lbl_80427C78:
/* 80427C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80427C7C  4B C7 32 A5 */	bl func_8009AF20
/* 80427C80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80427C84  7C 08 03 A6 */	mtlr r0
/* 80427C88  38 21 00 20 */	addi r1, r1, 0x20
/* 80427C8C  4E 80 00 20 */	blr 
