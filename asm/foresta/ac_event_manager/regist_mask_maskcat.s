lbl_80421B50:
/* 80421B50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80421B54  7C 08 02 A6 */	mflr r0
/* 80421B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421B5C  4B F7 D7 19 */	bl mMC_check_birth
/* 80421B60  2C 03 00 00 */	cmpwi r3, 0
/* 80421B64  40 82 00 0C */	bne lbl_80421B70
/* 80421B68  38 60 00 00 */	li r3, 0
/* 80421B6C  48 00 00 4C */	b lbl_80421BB8
lbl_80421B70:
/* 80421B70  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D075@ha */
/* 80421B74  38 63 D0 75 */	addi r3, r3, 0xD075 /* 0x0000D075@l */
/* 80421B78  4B FF FF 21 */	bl check_masknpc_reregist
/* 80421B7C  2C 03 00 00 */	cmpwi r3, 0
/* 80421B80  41 82 00 0C */	beq lbl_80421B8C
/* 80421B84  38 60 00 01 */	li r3, 1
/* 80421B88  48 00 00 30 */	b lbl_80421BB8
lbl_80421B8C:
/* 80421B8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80421B90  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000D075@ha */
/* 80421B94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80421B98  3C 83 00 02 */	addis r4, r3, 2
/* 80421B9C  38 65 D0 75 */	addi r3, r5, 0xD075 /* 0x0000D075@l */
/* 80421BA0  88 A4 41 41 */	lbz r5, 0x4141(r4)
/* 80421BA4  7C 64 1B 78 */	mr r4, r3
/* 80421BA8  38 05 24 00 */	addi r0, r5, 0x2400
/* 80421BAC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80421BB0  4B FA D0 AD */	bl mNpc_RegistMaskNpc
/* 80421BB4  38 60 00 01 */	li r3, 1
lbl_80421BB8:
/* 80421BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80421BBC  7C 08 03 A6 */	mtlr r0
/* 80421BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80421BC4  4E 80 00 20 */	blr 
