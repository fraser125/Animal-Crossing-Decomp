lbl_80424CC4:
/* 80424CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80424CC8  7C 08 02 A6 */	mflr r0
/* 80424CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80424CD4  7C 9F 23 78 */	mr r31, r4
/* 80424CD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80424CDC  7C 7E 1B 78 */	mr r30, r3
/* 80424CE0  4B FF FF 11 */	bl aGRGR_DecideGaragaraMode
/* 80424CE4  7F C3 F3 78 */	mr r3, r30
/* 80424CE8  7F E4 FB 78 */	mr r4, r31
/* 80424CEC  4B FF FF 35 */	bl aGRGR_CommonCt
/* 80424CF0  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 80424CF4  3C 60 80 64 */	lis r3, construct_table@ha /* 0x80643F0C@ha */
/* 80424CF8  38 A3 3F 0C */	addi r5, r3, construct_table@l /* 0x80643F0C@l */
/* 80424CFC  7F E4 FB 78 */	mr r4, r31
/* 80424D00  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 80424D04  7F C3 F3 78 */	mr r3, r30
/* 80424D08  7D 85 00 2E */	lwzx r12, r5, r0
/* 80424D0C  7D 89 03 A6 */	mtctr r12
/* 80424D10  4E 80 04 21 */	bctrl 
/* 80424D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80424D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80424D1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80424D20  7C 08 03 A6 */	mtlr r0
/* 80424D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80424D28  4E 80 00 20 */	blr 
