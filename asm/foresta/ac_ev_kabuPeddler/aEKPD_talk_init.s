lbl_80521B28:
/* 80521B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521B2C  7C 08 02 A6 */	mflr r0
/* 80521B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80521B38  7C 7F 1B 78 */	mr r31, r3
/* 80521B3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80521B40  7C 9E 23 78 */	mr r30, r4
/* 80521B44  4B FF F9 65 */	bl func_805214A8
/* 80521B48  2C 03 00 00 */	cmpwi r3, 0
/* 80521B4C  40 82 00 28 */	bne lbl_80521B74
/* 80521B50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80521B54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80521B58  3C 63 00 02 */	addis r3, r3, 2
/* 80521B5C  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 80521B60  80 83 61 3C */	lwz r4, 0x613c(r3)
/* 80521B64  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80521B68  7C 63 02 14 */	add r3, r3, r0
/* 80521B6C  38 63 04 EC */	addi r3, r3, 0x4ec
/* 80521B70  4B EB E5 B1 */	bl mPr_CopyPersonalID
lbl_80521B74:
/* 80521B74  81 9F 09 A0 */	lwz r12, 0x9a0(r31)
/* 80521B78  7F E3 FB 78 */	mr r3, r31
/* 80521B7C  7F C4 F3 78 */	mr r4, r30
/* 80521B80  38 A0 00 01 */	li r5, 1
/* 80521B84  7D 89 03 A6 */	mtctr r12
/* 80521B88  4E 80 04 21 */	bctrl 
/* 80521B8C  4B E7 88 29 */	bl mDemo_Set_ListenAble
/* 80521B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521B94  38 60 00 01 */	li r3, 1
/* 80521B98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80521B9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80521BA0  7C 08 03 A6 */	mtlr r0
/* 80521BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80521BA8  4E 80 00 20 */	blr 
