lbl_80539914:
/* 80539914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80539918  7C 08 02 A6 */	mflr r0
/* 8053991C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80539920  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80539924  2C 00 00 0D */	cmpwi r0, 0xd
/* 80539928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053992C  3B E0 00 00 */	li r31, 0
/* 80539930  93 C1 00 08 */	stw r30, 8(r1)
/* 80539934  7C 9E 23 78 */	mr r30, r4
/* 80539938  40 82 00 3C */	bne lbl_80539974
/* 8053993C  7F C3 F3 78 */	mr r3, r30
/* 80539940  4B E9 52 A9 */	bl mNpc_GetSameEventNpc
/* 80539944  28 03 00 00 */	cmplwi r3, 0
/* 80539948  41 82 00 0C */	beq lbl_80539954
/* 8053994C  4B FF FF 21 */	bl aNPC_check_dma_eventNpc_cloth_data
/* 80539950  48 00 00 2C */	b lbl_8053997C
lbl_80539954:
/* 80539954  7F C3 F3 78 */	mr r3, r30
/* 80539958  4B E9 54 CD */	bl mNpc_GetSameMaskNpc
/* 8053995C  28 03 00 00 */	cmplwi r3, 0
/* 80539960  41 82 00 0C */	beq lbl_8053996C
/* 80539964  4B FF FF 79 */	bl aNPC_check_dma_maskNpc_cloth_data
/* 80539968  48 00 00 14 */	b lbl_8053997C
lbl_8053996C:
/* 8053996C  38 60 00 01 */	li r3, 1
/* 80539970  48 00 00 0C */	b lbl_8053997C
lbl_80539974:
/* 80539974  7C 63 07 74 */	extsb r3, r3
/* 80539978  4B FF FE 0D */	bl aNPC_check_dma_cloth_data
lbl_8053997C:
/* 8053997C  2C 03 00 01 */	cmpwi r3, 1
/* 80539980  40 82 00 08 */	bne lbl_80539988
/* 80539984  3B E0 00 01 */	li r31, 1
lbl_80539988:
/* 80539988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053998C  7F E3 FB 78 */	mr r3, r31
/* 80539990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80539994  83 C1 00 08 */	lwz r30, 8(r1)
/* 80539998  7C 08 03 A6 */	mtlr r0
/* 8053999C  38 21 00 10 */	addi r1, r1, 0x10
/* 805399A0  4E 80 00 20 */	blr 
