lbl_80597E50:
/* 80597E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597E54  7C 08 02 A6 */	mflr r0
/* 80597E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597E5C  88 03 00 98 */	lbz r0, 0x98(r3)
/* 80597E60  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80597E64  41 82 00 10 */	beq lbl_80597E74
/* 80597E68  7C 85 23 78 */	mr r5, r4
/* 80597E6C  38 80 00 02 */	li r4, 2
/* 80597E70  48 00 03 E5 */	bl aIDG_setupAction
lbl_80597E74:
/* 80597E74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597E78  7C 08 03 A6 */	mtlr r0
/* 80597E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80597E80  4E 80 00 20 */	blr 
