lbl_80394538:
/* 80394538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039453C  7C 08 02 A6 */	mflr r0
/* 80394540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394544  4B FF FF E5 */	bl ClObjElem_OCClear
/* 80394548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039454C  38 60 00 01 */	li r3, 1
/* 80394550  7C 08 03 A6 */	mtlr r0
/* 80394554  38 21 00 10 */	addi r1, r1, 0x10
/* 80394558  4E 80 00 20 */	blr 