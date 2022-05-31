lbl_80416B1C:
/* 80416B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416B20  7C 08 02 A6 */	mflr r0
/* 80416B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416B2C  7C 9F 23 78 */	mr r31, r4
/* 80416B30  38 80 00 00 */	li r4, 0
/* 80416B34  93 C1 00 08 */	stw r30, 8(r1)
/* 80416B38  7C 7E 1B 78 */	mr r30, r3
/* 80416B3C  4B FF FA 65 */	bl Cottage_change_FGUnit
/* 80416B40  7F C3 F3 78 */	mr r3, r30
/* 80416B44  7F E4 FB 78 */	mr r4, r31
/* 80416B48  4B FF FF 91 */	bl Cottage_actor_dt
/* 80416B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80416B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80416B54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80416B58  7C 08 03 A6 */	mtlr r0
/* 80416B5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80416B60  4E 80 00 20 */	blr 
