lbl_8041BC28:
/* 8041BC28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BC2C  7C 08 02 A6 */	mflr r0
/* 8041BC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BC34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8041BC38  7C 9F 23 78 */	mr r31, r4
/* 8041BC3C  93 C1 00 08 */	stw r30, 8(r1)
/* 8041BC40  7C 7E 1B 78 */	mr r30, r3
/* 8041BC44  4B F8 90 89 */	bl mFI_GetFieldId
/* 8041BC48  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041BC4C  40 82 00 78 */	bne lbl_8041BCC4
/* 8041BC50  2C 1F 00 20 */	cmpwi r31, 0x20
/* 8041BC54  41 82 00 54 */	beq lbl_8041BCA8
/* 8041BC58  40 80 00 1C */	bge lbl_8041BC74
/* 8041BC5C  2C 1F 00 04 */	cmpwi r31, 4
/* 8041BC60  41 82 00 38 */	beq lbl_8041BC98
/* 8041BC64  40 80 00 60 */	bge lbl_8041BCC4
/* 8041BC68  2C 1F 00 01 */	cmpwi r31, 1
/* 8041BC6C  41 82 00 4C */	beq lbl_8041BCB8
/* 8041BC70  48 00 00 54 */	b lbl_8041BCC4
lbl_8041BC74:
/* 8041BC74  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8041BC78  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 8041BC7C  7C 1F 00 00 */	cmpw r31, r0
/* 8041BC80  41 82 00 08 */	beq lbl_8041BC88
/* 8041BC84  48 00 00 40 */	b lbl_8041BCC4
lbl_8041BC88:
/* 8041BC88  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 8041BC8C  80 9E 02 14 */	lwz r4, 0x214(r30)
/* 8041BC90  4B FC 2C 55 */	bl mPB_keep_all_item_in_block
/* 8041BC94  48 00 00 30 */	b lbl_8041BCC4
lbl_8041BC98:
/* 8041BC98  80 7E 02 30 */	lwz r3, 0x230(r30)
/* 8041BC9C  80 9E 02 2C */	lwz r4, 0x22c(r30)
/* 8041BCA0  4B FC 2C 45 */	bl mPB_keep_all_item_in_block
/* 8041BCA4  48 00 00 20 */	b lbl_8041BCC4
lbl_8041BCA8:
/* 8041BCA8  80 7E 02 24 */	lwz r3, 0x224(r30)
/* 8041BCAC  80 9E 02 20 */	lwz r4, 0x220(r30)
/* 8041BCB0  4B FC 2C 35 */	bl mPB_keep_all_item_in_block
/* 8041BCB4  48 00 00 10 */	b lbl_8041BCC4
lbl_8041BCB8:
/* 8041BCB8  80 7E 02 3C */	lwz r3, 0x23c(r30)
/* 8041BCBC  80 9E 02 38 */	lwz r4, 0x238(r30)
/* 8041BCC0  4B FC 2C 25 */	bl mPB_keep_all_item_in_block
lbl_8041BCC4:
/* 8041BCC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BCC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8041BCCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041BCD0  7C 08 03 A6 */	mtlr r0
/* 8041BCD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BCD8  4E 80 00 20 */	blr 
