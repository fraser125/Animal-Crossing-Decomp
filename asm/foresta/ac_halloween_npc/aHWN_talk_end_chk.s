lbl_80527EF4:
/* 80527EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527EF8  7C 08 02 A6 */	mflr r0
/* 80527EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527F00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80527F04  3B E0 00 00 */	li r31, 0
/* 80527F08  93 C1 00 08 */	stw r30, 8(r1)
/* 80527F0C  7C 7E 1B 78 */	mr r30, r3
/* 80527F10  81 83 09 A0 */	lwz r12, 0x9a0(r3)
/* 80527F14  7D 89 03 A6 */	mtctr r12
/* 80527F18  4E 80 04 21 */	bctrl 
/* 80527F1C  7F C4 F3 78 */	mr r4, r30
/* 80527F20  38 60 00 08 */	li r3, 8
/* 80527F24  4B E7 23 41 */	bl mDemo_Check
/* 80527F28  2C 03 00 00 */	cmpwi r3, 0
/* 80527F2C  40 82 00 3C */	bne lbl_80527F68
/* 80527F30  7F C4 F3 78 */	mr r4, r30
/* 80527F34  38 60 00 07 */	li r3, 7
/* 80527F38  4B E7 23 2D */	bl mDemo_Check
/* 80527F3C  2C 03 00 00 */	cmpwi r3, 0
/* 80527F40  40 82 00 28 */	bne lbl_80527F68
/* 80527F44  88 1E 07 DD */	lbz r0, 0x7dd(r30)
/* 80527F48  28 00 00 01 */	cmplwi r0, 1
/* 80527F4C  40 82 00 0C */	bne lbl_80527F58
/* 80527F50  38 00 00 01 */	li r0, 1
/* 80527F54  98 1E 07 C8 */	stb r0, 0x7c8(r30)
lbl_80527F58:
/* 80527F58  3C 60 80 52 */	lis r3, aHWN_norm_talk_request@ha /* 0x80527EA0@ha */
/* 80527F5C  3B E0 00 01 */	li r31, 1
/* 80527F60  38 03 7E A0 */	addi r0, r3, aHWN_norm_talk_request@l /* 0x80527EA0@l */
/* 80527F64  90 1E 09 64 */	stw r0, 0x964(r30)
lbl_80527F68:
/* 80527F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527F6C  7F E3 FB 78 */	mr r3, r31
/* 80527F70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80527F74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80527F78  7C 08 03 A6 */	mtlr r0
/* 80527F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80527F80  4E 80 00 20 */	blr 
