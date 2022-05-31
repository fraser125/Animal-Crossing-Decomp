lbl_80520B44:
/* 80520B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80520B48  7C 08 02 A6 */	mflr r0
/* 80520B4C  2C 05 00 01 */	cmpwi r5, 1
/* 80520B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80520B54  41 82 00 1C */	beq lbl_80520B70
/* 80520B58  40 80 00 1C */	bge lbl_80520B74
/* 80520B5C  2C 05 00 00 */	cmpwi r5, 0
/* 80520B60  40 80 00 08 */	bge lbl_80520B68
/* 80520B64  48 00 00 10 */	b lbl_80520B74
lbl_80520B68:
/* 80520B68  4B FF FC 95 */	bl aEGH_think_init_proc
/* 80520B6C  48 00 00 08 */	b lbl_80520B74
lbl_80520B70:
/* 80520B70  4B FF FC 41 */	bl aEGH_think_main_proc
lbl_80520B74:
/* 80520B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80520B78  7C 08 03 A6 */	mtlr r0
/* 80520B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80520B80  4E 80 00 20 */	blr 
