lbl_80511BBC:
/* 80511BBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80511BC0  7C 08 02 A6 */	mflr r0
/* 80511BC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80511BC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80511BCC  4B B8 93 05 */	bl func_8009AED0
/* 80511BD0  7C 7C 1B 78 */	mr r28, r3
/* 80511BD4  7C 9D 23 78 */	mr r29, r4
/* 80511BD8  7F 9F E3 78 */	mr r31, r28
/* 80511BDC  3B C0 00 00 */	li r30, 0
lbl_80511BE0:
/* 80511BE0  7F E3 FB 78 */	mr r3, r31
/* 80511BE4  7F A4 EB 78 */	mr r4, r29
/* 80511BE8  4B FF FF 49 */	bl mAGrw_SetCarpBlockInfo
/* 80511BEC  88 7F 00 00 */	lbz r3, 0(r31)
/* 80511BF0  54 60 D7 FE */	rlwinm r0, r3, 0x1a, 0x1f, 0x1f
/* 80511BF4  28 00 00 01 */	cmplwi r0, 1
/* 80511BF8  40 82 00 24 */	bne lbl_80511C1C
/* 80511BFC  88 9C 00 1F */	lbz r4, 0x1f(r28)
/* 80511C00  38 60 00 00 */	li r3, 0
/* 80511C04  38 04 00 01 */	addi r0, r4, 1
/* 80511C08  98 1C 00 1F */	stb r0, 0x1f(r28)
/* 80511C0C  88 1F 00 00 */	lbz r0, 0(r31)
/* 80511C10  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80511C14  98 1F 00 00 */	stb r0, 0(r31)
/* 80511C18  48 00 00 1C */	b lbl_80511C34
lbl_80511C1C:
/* 80511C1C  54 60 CF FE */	rlwinm r0, r3, 0x19, 0x1f, 0x1f
/* 80511C20  28 00 00 01 */	cmplwi r0, 1
/* 80511C24  40 82 00 10 */	bne lbl_80511C34
/* 80511C28  88 7C 00 1E */	lbz r3, 0x1e(r28)
/* 80511C2C  38 03 00 01 */	addi r0, r3, 1
/* 80511C30  98 1C 00 1E */	stb r0, 0x1e(r28)
lbl_80511C34:
/* 80511C34  88 1F 00 00 */	lbz r0, 0(r31)
/* 80511C38  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 80511C3C  28 00 00 01 */	cmplwi r0, 1
/* 80511C40  40 82 00 10 */	bne lbl_80511C50
/* 80511C44  88 7C 00 20 */	lbz r3, 0x20(r28)
/* 80511C48  38 03 00 01 */	addi r0, r3, 1
/* 80511C4C  98 1C 00 20 */	stb r0, 0x20(r28)
lbl_80511C50:
/* 80511C50  3B DE 00 01 */	addi r30, r30, 1
/* 80511C54  3B BD 02 00 */	addi r29, r29, 0x200
/* 80511C58  2C 1E 00 1E */	cmpwi r30, 0x1e
/* 80511C5C  3B FF 00 01 */	addi r31, r31, 1
/* 80511C60  41 80 FF 80 */	blt lbl_80511BE0
/* 80511C64  39 61 00 20 */	addi r11, r1, 0x20
/* 80511C68  4B B8 92 B5 */	bl func_8009AF1C
/* 80511C6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80511C70  7C 08 03 A6 */	mtlr r0
/* 80511C74  38 21 00 20 */	addi r1, r1, 0x20
/* 80511C78  4E 80 00 20 */	blr 
