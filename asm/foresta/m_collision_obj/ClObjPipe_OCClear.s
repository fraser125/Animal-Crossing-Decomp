lbl_8039470C:
/* 8039470C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80394710  7C 08 02 A6 */	mflr r0
/* 80394714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039471C  7C 9F 23 78 */	mr r31, r4
/* 80394720  93 C1 00 08 */	stw r30, 8(r1)
/* 80394724  7C 7E 1B 78 */	mr r30, r3
/* 80394728  4B FF FD BD */	bl ClObj_OCClear
/* 8039472C  7F C3 F3 78 */	mr r3, r30
/* 80394730  38 9F 00 0C */	addi r4, r31, 0xc
/* 80394734  4B FF FD F5 */	bl ClObjElem_OCClear
/* 80394738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039473C  38 60 00 01 */	li r3, 1
/* 80394740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80394744  83 C1 00 08 */	lwz r30, 8(r1)
/* 80394748  7C 08 03 A6 */	mtlr r0
/* 8039474C  38 21 00 10 */	addi r1, r1, 0x10
/* 80394750  4E 80 00 20 */	blr 