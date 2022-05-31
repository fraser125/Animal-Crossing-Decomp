lbl_803D17B8:
/* 803D17B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D17BC  7C 08 02 A6 */	mflr r0
/* 803D17C0  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803D17C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D17C8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D17CC  2C 00 00 0E */	cmpwi r0, 0xe
/* 803D17D0  38 60 00 00 */	li r3, 0
/* 803D17D4  40 82 00 28 */	bne lbl_803D17FC
/* 803D17D8  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 803D17DC  28 04 00 FF */	cmplwi r4, 0xff
/* 803D17E0  40 80 00 1C */	bge lbl_803D17FC
/* 803D17E4  3C 60 81 17 */	lis r3, npc_name@ha /* 0x8116C518@ha */
/* 803D17E8  38 63 C5 18 */	addi r3, r3, npc_name@l /* 0x8116C518@l */
/* 803D17EC  4B FF FF 25 */	bl mNpc_LoadNpcNameString
/* 803D17F0  3C 60 81 17 */	lis r3, npc_name@ha /* 0x8116C518@ha */
/* 803D17F4  38 03 C5 18 */	addi r0, r3, npc_name@l /* 0x8116C518@l */
/* 803D17F8  7C 03 03 78 */	mr r3, r0
lbl_803D17FC:
/* 803D17FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D1800  7C 08 03 A6 */	mtlr r0
/* 803D1804  38 21 00 10 */	addi r1, r1, 0x10
/* 803D1808  4E 80 00 20 */	blr 
