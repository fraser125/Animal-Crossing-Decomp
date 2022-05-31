lbl_80544B9C:
/* 80544B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80544BA0  7C 08 02 A6 */	mflr r0
/* 80544BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80544BA8  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80544BAC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80544BB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80544BB4  3B E0 00 00 */	li r31, 0
/* 80544BB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80544BBC  7C 9E 23 78 */	mr r30, r4
/* 80544BC0  40 82 00 3C */	bne lbl_80544BFC
/* 80544BC4  7F C3 F3 78 */	mr r3, r30
/* 80544BC8  4B E8 A0 21 */	bl mNpc_GetSameEventNpc
/* 80544BCC  28 03 00 00 */	cmplwi r3, 0
/* 80544BD0  41 82 00 0C */	beq lbl_80544BDC
/* 80544BD4  4B FF FF 21 */	bl aNPC_check_dma_eventNpc_cloth_data
/* 80544BD8  48 00 00 2C */	b lbl_80544C04
lbl_80544BDC:
/* 80544BDC  7F C3 F3 78 */	mr r3, r30
/* 80544BE0  4B E8 A2 45 */	bl mNpc_GetSameMaskNpc
/* 80544BE4  28 03 00 00 */	cmplwi r3, 0
/* 80544BE8  41 82 00 0C */	beq lbl_80544BF4
/* 80544BEC  4B FF FF 79 */	bl aNPC_check_dma_maskNpc_cloth_data
/* 80544BF0  48 00 00 14 */	b lbl_80544C04
lbl_80544BF4:
/* 80544BF4  38 60 00 01 */	li r3, 1
/* 80544BF8  48 00 00 0C */	b lbl_80544C04
lbl_80544BFC:
/* 80544BFC  7C 63 07 74 */	extsb r3, r3
/* 80544C00  4B FF FE 0D */	bl aNPC_check_dma_cloth_data
lbl_80544C04:
/* 80544C04  2C 03 00 01 */	cmpwi r3, 1
/* 80544C08  40 82 00 08 */	bne lbl_80544C10
/* 80544C0C  3B E0 00 01 */	li r31, 1
lbl_80544C10:
/* 80544C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80544C14  7F E3 FB 78 */	mr r3, r31
/* 80544C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80544C1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80544C20  7C 08 03 A6 */	mtlr r0
/* 80544C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80544C28  4E 80 00 20 */	blr 
