lbl_80540500:
/* 80540500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540504  7C 08 02 A6 */	mflr r0
/* 80540508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054050C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540510  93 C1 00 08 */	stw r30, 8(r1)
/* 80540514  7C 7E 1B 78 */	mr r30, r3
/* 80540518  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8054051C  2C 00 00 01 */	cmpwi r0, 1
/* 80540520  40 82 00 44 */	bne lbl_80540564
/* 80540524  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80540528  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054052C  3F E4 00 02 */	addis r31, r4, 2
/* 80540530  80 9F 60 94 */	lwz r4, 0x6094(r31)
/* 80540534  81 84 00 08 */	lwz r12, 8(r4)
/* 80540538  88 84 00 0D */	lbz r4, 0xd(r4)
/* 8054053C  7D 89 03 A6 */	mtctr r12
/* 80540540  4E 80 04 21 */	bctrl 
/* 80540544  80 9F 60 94 */	lwz r4, 0x6094(r31)
/* 80540548  3C 60 80 6A */	lis r3, next_step@ha /* 0x806A3C54@ha */
/* 8054054C  38 A3 3C 54 */	addi r5, r3, next_step@l /* 0x806A3C54@l */
/* 80540550  7F C3 F3 78 */	mr r3, r30
/* 80540554  88 04 00 0D */	lbz r0, 0xd(r4)
/* 80540558  7C 85 02 14 */	add r4, r5, r0
/* 8054055C  88 84 FF FB */	lbz r4, -5(r4)
/* 80540560  4B FF FD 1D */	bl func_8054027C
lbl_80540564:
/* 80540564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054056C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80540570  7C 08 03 A6 */	mtlr r0
/* 80540574  38 21 00 10 */	addi r1, r1, 0x10
/* 80540578  4E 80 00 20 */	blr 
