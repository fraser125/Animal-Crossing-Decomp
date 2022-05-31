lbl_80492258:
/* 80492258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049225C  7C 08 02 A6 */	mflr r0
/* 80492260  90 01 00 24 */	stw r0, 0x24(r1)
/* 80492264  39 61 00 20 */	addi r11, r1, 0x20
/* 80492268  4B C0 8C 69 */	bl func_8009AED0
/* 8049226C  7C 9D 23 78 */	mr r29, r4
/* 80492270  7C 7C 1B 78 */	mr r28, r3
/* 80492274  7C DE 33 78 */	mr r30, r6
/* 80492278  7C A4 2B 78 */	mr r4, r5
/* 8049227C  7F A3 EB 78 */	mr r3, r29
/* 80492280  3B E0 00 00 */	li r31, 0
/* 80492284  4B F3 9E 75 */	bl mNpc_GetAnimalMemoryBestFriend
/* 80492288  2C 03 FF FF */	cmpwi r3, -1
/* 8049228C  41 82 00 38 */	beq lbl_804922C4
/* 80492290  1C 03 01 38 */	mulli r0, r3, 0x138
/* 80492294  7F BD 02 14 */	add r29, r29, r0
/* 80492298  88 1D 00 31 */	lbz r0, 0x31(r29)
/* 8049229C  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 804922A0  28 00 00 01 */	cmplwi r0, 1
/* 804922A4  40 82 00 20 */	bne lbl_804922C4
/* 804922A8  7F C3 F3 78 */	mr r3, r30
/* 804922AC  7F A4 EB 78 */	mr r4, r29
/* 804922B0  4B F4 DE 95 */	bl mPr_CheckCmpPersonalID
/* 804922B4  2C 03 00 00 */	cmpwi r3, 0
/* 804922B8  40 82 00 0C */	bne lbl_804922C4
/* 804922BC  3B FD 00 32 */	addi r31, r29, 0x32
/* 804922C0  93 BC 00 00 */	stw r29, 0(r28)
lbl_804922C4:
/* 804922C4  7F E3 FB 78 */	mr r3, r31
/* 804922C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804922CC  4B C0 8C 51 */	bl func_8009AF1C
/* 804922D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804922D4  7C 08 03 A6 */	mtlr r0
/* 804922D8  38 21 00 20 */	addi r1, r1, 0x20
/* 804922DC  4E 80 00 20 */	blr 
