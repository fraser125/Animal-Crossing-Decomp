lbl_80473B4C:
/* 80473B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80473B50  7C 08 02 A6 */	mflr r0
/* 80473B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80473B58  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80473B5C  2C 00 00 01 */	cmpwi r0, 1
/* 80473B60  41 82 00 0C */	beq lbl_80473B6C
/* 80473B64  2C 00 00 03 */	cmpwi r0, 3
/* 80473B68  40 82 00 4C */	bne lbl_80473BB4
lbl_80473B6C:
/* 80473B6C  4B F7 3C 25 */	bl mRmTp_FtrItemNo2FtrIdx
/* 80473B70  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80473B74  4B FF C6 2D */	bl func_804701A0
/* 80473B78  28 03 00 00 */	cmplwi r3, 0
/* 80473B7C  41 82 00 38 */	beq lbl_80473BB4
/* 80473B80  88 03 00 28 */	lbz r0, 0x28(r3)
/* 80473B84  2C 00 00 05 */	cmpwi r0, 5
/* 80473B88  41 82 00 1C */	beq lbl_80473BA4
/* 80473B8C  40 80 00 20 */	bge lbl_80473BAC
/* 80473B90  2C 00 00 04 */	cmpwi r0, 4
/* 80473B94  40 80 00 08 */	bge lbl_80473B9C
/* 80473B98  48 00 00 14 */	b lbl_80473BAC
lbl_80473B9C:
/* 80473B9C  38 60 00 00 */	li r3, 0
/* 80473BA0  48 00 00 18 */	b lbl_80473BB8
lbl_80473BA4:
/* 80473BA4  38 60 00 02 */	li r3, 2
/* 80473BA8  48 00 00 10 */	b lbl_80473BB8
lbl_80473BAC:
/* 80473BAC  38 60 00 01 */	li r3, 1
/* 80473BB0  48 00 00 08 */	b lbl_80473BB8
lbl_80473BB4:
/* 80473BB4  38 60 FF FF */	li r3, -1
lbl_80473BB8:
/* 80473BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80473BBC  7C 08 03 A6 */	mtlr r0
/* 80473BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80473BC4  4E 80 00 20 */	blr 
