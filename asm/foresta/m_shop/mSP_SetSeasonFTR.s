lbl_803E7B60:
/* 803E7B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E7B64  7C 08 02 A6 */	mflr r0
/* 803E7B68  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E7B6C  2C 04 00 00 */	cmpwi r4, 0
/* 803E7B70  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803E7B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E7B78  3C C5 00 02 */	addis r6, r5, 2
/* 803E7B7C  80 A6 61 20 */	lwz r5, 0x6120(r6)
/* 803E7B80  80 06 61 24 */	lwz r0, 0x6124(r6)
/* 803E7B84  90 A1 00 08 */	stw r5, 8(r1)
/* 803E7B88  90 01 00 0C */	stw r0, 0xc(r1)
/* 803E7B8C  88 A1 00 0B */	lbz r5, 0xb(r1)
/* 803E7B90  88 01 00 0D */	lbz r0, 0xd(r1)
/* 803E7B94  40 81 00 38 */	ble lbl_803E7BCC
/* 803E7B98  28 00 00 0C */	cmplwi r0, 0xc
/* 803E7B9C  40 82 00 30 */	bne lbl_803E7BCC
/* 803E7BA0  28 05 00 18 */	cmplwi r5, 0x18
/* 803E7BA4  41 81 00 14 */	bgt lbl_803E7BB8
/* 803E7BA8  38 A0 1E BC */	li r5, 0x1ebc
/* 803E7BAC  38 C0 1E 88 */	li r6, 0x1e88
/* 803E7BB0  4B FF FF 45 */	bl mSP_SetSeasonFTR_local_december
/* 803E7BB4  48 00 00 18 */	b lbl_803E7BCC
lbl_803E7BB8:
/* 803E7BB8  28 05 00 1A */	cmplwi r5, 0x1a
/* 803E7BBC  41 80 00 10 */	blt lbl_803E7BCC
/* 803E7BC0  38 A0 32 98 */	li r5, 0x3298
/* 803E7BC4  38 C0 32 7C */	li r6, 0x327c
/* 803E7BC8  4B FF FF 2D */	bl mSP_SetSeasonFTR_local_december
lbl_803E7BCC:
/* 803E7BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7BD0  7C 08 03 A6 */	mtlr r0
/* 803E7BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 803E7BD8  4E 80 00 20 */	blr 
