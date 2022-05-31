lbl_80483BB4:
/* 80483BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483BB8  7C 08 02 A6 */	mflr r0
/* 80483BBC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D073@ha */
/* 80483BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483BC4  38 63 D0 73 */	addi r3, r3, 0xD073 /* 0x0000D073@l */
/* 80483BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80483BCC  3B E0 00 01 */	li r31, 1
/* 80483BD0  4B F4 B2 55 */	bl mNpc_GetSameMaskNpc
/* 80483BD4  28 03 00 00 */	cmplwi r3, 0
/* 80483BD8  40 82 00 40 */	bne lbl_80483C18
/* 80483BDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80483BE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80483BE4  3C 63 00 02 */	addis r3, r3, 2
/* 80483BE8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80483BEC  A0 83 23 D8 */	lhz r4, 0x23d8(r3)
/* 80483BF0  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80483BF4  2C 00 00 0E */	cmpwi r0, 0xe
/* 80483BF8  41 82 00 0C */	beq lbl_80483C04
/* 80483BFC  3B E0 00 00 */	li r31, 0
/* 80483C00  48 00 00 18 */	b lbl_80483C18
lbl_80483C04:
/* 80483C04  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D073@ha */
/* 80483C08  38 A0 00 00 */	li r5, 0
/* 80483C0C  38 63 D0 73 */	addi r3, r3, 0xD073 /* 0x0000D073@l */
/* 80483C10  4B F4 B0 4D */	bl mNpc_RegistMaskNpc
/* 80483C14  7C 7F 1B 78 */	mr r31, r3
lbl_80483C18:
/* 80483C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483C1C  7F E3 FB 78 */	mr r3, r31
/* 80483C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80483C24  7C 08 03 A6 */	mtlr r0
/* 80483C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80483C2C  4E 80 00 20 */	blr 
