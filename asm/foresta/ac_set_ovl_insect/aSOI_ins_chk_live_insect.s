lbl_8049AB34:
/* 8049AB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049AB38  7C 08 02 A6 */	mflr r0
/* 8049AB3C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8049AB40  7C 66 1B 78 */	mr r6, r3
/* 8049AB44  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8049AB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049AB4C  3C A3 00 02 */	addis r5, r3, 2
/* 8049AB50  80 A5 60 88 */	lwz r5, 0x6088(r5)
/* 8049AB54  38 60 00 00 */	li r3, 0
/* 8049AB58  81 85 00 18 */	lwz r12, 0x18(r5)
/* 8049AB5C  28 0C 00 00 */	cmplwi r12, 0
/* 8049AB60  41 82 00 18 */	beq lbl_8049AB78
/* 8049AB64  7C 85 23 78 */	mr r5, r4
/* 8049AB68  80 66 41 80 */	lwz r3, 0x4180(r6)
/* 8049AB6C  80 86 41 84 */	lwz r4, 0x4184(r6)
/* 8049AB70  7D 89 03 A6 */	mtctr r12
/* 8049AB74  4E 80 04 21 */	bctrl 
lbl_8049AB78:
/* 8049AB78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049AB7C  7C 08 03 A6 */	mtlr r0
/* 8049AB80  38 21 00 10 */	addi r1, r1, 0x10
/* 8049AB84  4E 80 00 20 */	blr 
