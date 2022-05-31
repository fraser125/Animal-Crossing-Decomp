lbl_8054CD44:
/* 8054CD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CD48  7C 08 02 A6 */	mflr r0
/* 8054CD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CD50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054CD54  7C 7F 1B 78 */	mr r31, r3
/* 8054CD58  81 83 09 A8 */	lwz r12, 0x9a8(r3)
/* 8054CD5C  80 A3 09 A0 */	lwz r5, 0x9a0(r3)
/* 8054CD60  7D 89 03 A6 */	mtctr r12
/* 8054CD64  4E 80 04 21 */	bctrl 
/* 8054CD68  4B E4 D6 4D */	bl mDemo_Set_ListenAble
/* 8054CD6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054CD70  38 80 04 00 */	li r4, 0x400
/* 8054CD74  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054CD78  38 00 00 00 */	li r0, 0
/* 8054CD7C  3C C3 00 03 */	addis r6, r3, 3
/* 8054CD80  88 A6 88 7F */	lbz r5, -0x7781(r6)
/* 8054CD84  38 60 00 01 */	li r3, 1
/* 8054CD88  60 A5 00 01 */	ori r5, r5, 1
/* 8054CD8C  98 A6 88 7F */	stb r5, -0x7781(r6)
/* 8054CD90  B0 9F 08 BA */	sth r4, 0x8ba(r31)
/* 8054CD94  90 1F 09 94 */	stw r0, 0x994(r31)
/* 8054CD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CD9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054CDA0  7C 08 03 A6 */	mtlr r0
/* 8054CDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CDA8  4E 80 00 20 */	blr 
